---
layout: post
title:  "Landslides: Where do they happen and can we prevent them?"
date:   2022-11-29
author: Katelyn Nelson
description: Use an interactive plotly figure to learn about common triggers and locations of landslides
image: /assets/images/datastory-post/photo-rain-jungle.jpeg
---

In this post I am going to wrap up with the landslide data that I've been working with, but with a new graphic.

# Quick recap

I came across this landslide dataset on the NASA's Open Data Portal and thought it would be interesting to see what I could learn. ⚠️Be warned: I am not an expert in landslides or any other environmental phenomenon, but I love using data to explore new topics and I thought this would be fun to explore. To get the data I used a personal API key (requested on the data portal website) and pulled the data into a Jupyter Notebook file. It turned out to be a pretty big and messy dataset, so I did some data wrangling and chose which fields I wanted to focus on. If you want to see the steps I took check out my other [blog post](https://katelynnelson38.github.io/stat386-projects/2022/10/16/nasa_api.html) and my [github reopsitory](https://github.com/katelynnelson38/nasa_api).

Once the data was nice and tidy, I could begin to learn from it. So after brainstorming ⛈️ some questions, I explored their possible answers through plots that I included as part of my [exploratory data analysis](https://katelynnelson38.github.io/stat386-projects/2022/11/14/EDA.html). My exploring gave me insights about common causes of landslides, occurances of landslides across time, which countries have more fatal landslides, and more.

# A landslide story

When I first found this data, I was most curious in the common causes of landslides and where they occur most frequently. Maybe these are things that are common knowledge, but I wanted to use this data to learn about them because I am not very familiar with landslides.

Will this information help us to prevent landslides?

I created the graph below in plotly (super good tool to make interactive and aesthetically pleasing plot) of the 10 countries that have the most landslides to help me discover the story about causes and locations of landslides. One cool feature is that you can change which landslide triggers are included in the plot by using the legend on the right. Clicking on one of the landslide triggers will add or remove it from the plot. Double-clicking a specific landslide trigger will remove all other triggers from the plot and can be reset by double-clicking the same trigger.

{% include country_landslides.html %}

Looking at the graph above we can see that Brazil and Indonesia have the more landslides than any other country included in the data and that most of their landslides were triggered by a form of rain. These two countries also receive more rain than most countries. Futhermore, we can look at the size of each trigger represented in the graph and see that different intensities of rain are the primary cause of landslides. This means we can infer that rainy countries have more landslides, and Brazil and Indonesia both receive a lot of rain (coincidence? I think not 😉).

Taking advantage of the plotly format, we can see that besides rain-related triggers, some of the more common ones are earthquakes, tropical cyclones, and flooding. This tells us that most landslides are due to natural causes. To me this means that there is not much we can do to prevent landslides, just things to lessen the effects of the landslide.

# Moral of the story

Drawing inference from the plot above, we learned that the rainy countries, namely Brazil and Indonesia, have more landslides because rain is the primary trigger of a landslide. When we looked a little deeper we also saw that the next most common triggers were weather related as well, meaning there is not much we can do to prevent landslides, but we can use this information to be aware of locations that are more prone to landslides.

If you want to see how I created the plot, take a look at my [github reopsitory](https://github.com/katelynnelson38/nasa_api).
