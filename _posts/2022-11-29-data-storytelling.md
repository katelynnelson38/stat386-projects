---
layout: post
title:  "Landslides: A Narrative Edition - IN PROGRESS"
date:   2022-11-29
author: Katelyn Nelson
description: Learn about...
image: /assets/images/datastory-post/susan-q-yin-2JIvboGLeho-unsplash.jpg
---

In this post I am going to wrap up with the landslide data that I've been working with, but with a new graphic.

# Quick recap

I came across this landslide dataset on the NASA's Open Data Portal and thought it would be interesting to see what I could learn. ⚠️Be warned: I am not an expert in landslides or any other environmental phenomenon, but I love using data to explore new topics and I thought this would be fun to explore. To get the data I used a personal API key (requested on the data portal website) and pulled the data into a Jupyter Notebook file. It turned out to be a pretty big and messy dataset, so I did some data wrangling and chose which fields I wanted to focus on. If you want to see the steps I took check out my other [blog post](https://katelynnelson38.github.io/stat386-projects/2022/10/16/nasa_api.html) and my [github reopsitory](https://github.com/katelynnelson38/nasa_api).

Once the data was nice and tidy, I could begin to learn from it. So after brainstorming ⛈️ some questions, I explored their possible answers through plots that I included as part of my [exploratory data analysis](https://katelynnelson38.github.io/stat386-projects/2022/11/14/EDA.html). My exploring gave me insights about common causes of landslides, occurances of landslides across time, which countries have more fatal landslides, and more.

# A landslide story

When I first found this data, I was most curious in the common causes of landslides and where they occur most frequently. Maybe these are things that are common knowledge, but I wanted to use this data to learn about them because I am not very familiar with landslides.

I created the graph below in plotly (super good tool to make interactive and aesthetically pleasing plot) of the 10 countries that have the most landslides to help me discover the story about causes and locations of landslides. One cool feature is that you can change which landslide triggers are included in the plot by using the legend on the right. Clicking on one of the landslide triggers will add or remove it from the plot. Double-clicking a specific landslide trigger will remove all other triggers from the plot and can be reset by double-clicking the same trigger.

{% include country_landslides.html %}

Looking at the graph above we can see that Brazil and Indonesia have the more landslides than any other country included in the data and that most of their landslides were triggered by a form of rain. These two countries also receive more rain than most. Rainy countries have more landslides.

If we can


# Moral of the story

If you want to see how I created the plot, take a look at my [github reopsitory](https://github.com/katelynnelson38/nasa_api).
