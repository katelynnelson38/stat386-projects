# STAT 386 blog1 tutorial

library(tidyverse)
library(tidymodels)

glimpse(iris)

iris %>%
  group_by(Species) %>% count()

iris_split <- initial_split(iris)
iris_train <- training(iris_split)
iris_test <- testing(iris_split)

set.seed(567)
iris_folds <- vfold_cv(iris_train)

iris_boot <- bootstraps(iris)
iris_boot

iris_rec <- recipe(Species ~ ., data = iris)

iris_prep <- prep(iris_rec)
juice(iris_prep)

rf_model <- rand_forest(trees = 1000) %>%
  set_mode("classification") %>%
  set_engine("ranger")

iris_wf <- workflow() %>%
  add_recipe(iris_rec) %>%
  add_model(rf_model)

iris_wf

iris_resamples <- fit_resamples(
  iris_wf,
  resamples = iris_boot,
  control = control_resamples(save_pred = TRUE)
)

iris_resamples

iris_resamples %>%
  collect_metrics()

iris_resamples %>%
  collect_predictions() %>%
  conf_mat(Species, .pred_class)

library(vip)

rf_model %>%
  set_engine("ranger", importance = "permutation") %>%
  fit(Species ~ ., data = juice(iris_prep)) %>%
  vip()
