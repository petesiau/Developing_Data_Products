## Developing_Data_Products
Course Project for Module 9
title: "Developing Data Products Project"

## Air Pollutant Index (API) 2013-2015 for Banting town area in Malaysia.

### Introduction
This is a Shiny application for the course project for **Module 9 - Developing Data Products**. 

This application is to display the Air Pollutant Index (API) readings for the Malaysian town called **Banting** in the state of Selangor for the year from 2013 to 2015.

The dataset for this project is provided for and taken from the Malaysian Ministry of Science, Technology and Innovation which can be obtained from the Malaysian government portal **data.gov.my**. The unprocessed dataset can be obtained [here](http://data.gov.my/view.php?view=280) which contains the API readings from various towns, altogether 44 town areas in Malaysia. The API reading is taken on an hourly basis from 01-08-2013 to 05-02-2015.

The dataset contains 6 variables (Station.No, Location, Date, Hour, API and Pollutant) with 13,296 of observations.

### Navigation
#### To display the data,
##### 1) Select the **Year** from the **dropdown box**
##### 2) Select the **Month** from the **range slider** 

### Output Display
#### Three tabs to select:
##### 1) **Graph**
##### 2) **Data**
##### 3) **Summary**

The selected data can be downloaded by clicking **Download** button at the bottom of **Data** tab.

There is a **checkbox** to select that will display your selections and the **API Mean**.


## Project files 
Source code (ui.R and server.R) and dataset (API_Banting.csv) are available on the [GitHub](https://github.com/petesiau/Developing_Data_Products)  


## Acknowledgement
##### Poo Kuan Hoong, lecturer in the Faculty of Computing and Informatics at Multimedia University for project guidiance.

