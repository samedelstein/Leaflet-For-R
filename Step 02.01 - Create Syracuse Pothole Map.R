source("Step 02 - Load Syracuse Pothole Data.R")
Cuse <- leaflet() %>% #launch leaflet
  addTiles(group = "OSM (default)") %>% #add basemap
  addProviderTiles("Stamen.Toner", group = "Toner") %>% #second basemap option
  addProviderTiles("Stamen.Watercolor", group = "Water Color") %>% #third basemap option
  addProviderTiles("CartoDB.Positron", group="CartoDB") %>% #fourth basemap option
  addMarkers(lng=PotholeDF$Y, lat=PotholeDF$X, 
             icon= ottoIcon,
             popup=PotholeDF$DateTime, clusterOptions = markerClusterOptions(), group="Potholes Filled") %>%
  addLayersControl(
    baseGroups = c("OSM (default)", "Toner", "Water Color", "CartoDB"),
    overlayGroups = c("Potholes Filled"),
    options = layersControlOptions(collapsed = FALSE) #create layers to turn on and off
  )
Cuse
saveWidget(Cuse, file="Cuse.html")
