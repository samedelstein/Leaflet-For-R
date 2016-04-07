source("Step 00 -LeafletForR.R")

#API data from NYC's open data portal https://nycopendata.socrata.com/Social-Services/Potholes/fed5-ydvq

#read in URL - increase API limit to 10,000 (1,000 is default)
url <- "https://data.cityofnewyork.us/resource/fed5-ydvq.json?$limit=10000"

#Convert json data to data frame
NYCPotholes <- fromJSON(txt=url)

#Convert to date format
NYCPotholes$created_date <- as.Date(NYCPotholes$created_date, "%Y-%m-%d")

#extract month and day for better formatting on map pop up
NYCPotholes$month <- month(NYCPotholes$created_date)
NYCPotholes$day <- day(NYCPotholes$created_date)
NYCPotholes$monthDay <- paste(NYCPotholes$month, NYCPotholes$day, sep="/")


