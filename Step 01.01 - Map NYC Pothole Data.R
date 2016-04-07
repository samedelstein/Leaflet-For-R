source("Step 01 - Load NYC Pothole Data.R")



NYC <- leaflet() %>% #launch leaflet
  setView(lng = -73.93243506090495, lat = 40.85109628360053, zoom = 10) %>% #declare where map should focus
  addProviderTiles("CartoDB.Positron", group="CartoDB") %>% #add basemap
  addMarkers(lng=NYCPotholes$longitude, lat=NYCPotholes$latitude, popup=NYCPotholes$monthDay) #add markers and pop up
NYC #view created map
saveWidget(NYC, file="NYC.html") #save html for later use

