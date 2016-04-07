source("Step 00 -LeafletForR.R")

#grant access to your google drive folder (must be signed into your account)
mysheets <- gs_ls()

#find spreadsheet you want to use
PotholeSpreadsheet <- gs_title("DO Camera")
#indicate which sheet you want to use within spreadsheet
Potholes <- PotholeSpreadsheet %>% gs_read(ws = "Sheet1")
#convert to data frame
PotholeDF <- data.frame(Potholes)

#create a custom marker for the map
ottoIcon <- makeIcon(
  iconUrl = "https://upload.wikimedia.org/wikipedia/en/thumb/3/30/OttotheOrange.svg/1016px-OttotheOrange.svg.png",
  iconWidth = 38, iconHeight = 38,
  iconAnchorX = 22, iconAnchorY = 22
)