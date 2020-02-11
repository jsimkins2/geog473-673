library(RColorBrewer)
library(rgdal)

p <- readOGR("/Users/james/Documents/Github/geog473-673/datasets/cfms_shapefiles/cfms_watersheds.shp")
d <- read.csv("/Users/james/Documents/Github/geog473-673/datasets/cfms_shapefiles/water_levels.csv")
d$station = sort(as.vector(d$station))
p$station = sort(p$station)
# merge on common variable, here called 'key'
m = sp::merge(p,d,by='station', duplicateGeoms = TRUE)

mycolours <- brewer.pal(8, "Blues")
mybreaks <- seq(0,6,0.5)
cut(m$mhhw, mybreaks)
mycolourscheme <- mycolours[findInterval(m$mhhw, vec = mybreaks)]


plot(m, col = mycolourscheme, main = "Projected Water Levels", cex = 5)
legend(-75.3, 38.8, legend = levels(cut(m$mhhw, mybreaks)), fill = mycolourscheme, cex = 0.8, title = "Inches Above Sea Level")

library(sp)
library(RColorBrewer)
mycolours <- brewer.pal(8, "YlOrRd")
spplot(m,"mhhw", par.settings = list(axis.line = list(col ="transparent")), main = "Projected Water Levels", cuts = 5, col ="transparent", col.regions = mycolours)


library(tmap)
tm_shape(m) + 
  tm_polygons(col='mhhw', title = "Projected Water Levels", palette = "Spectral") + tm_style("classic") + tm_scale_bar(position = c("left", "bottom")) 

library(ggplot2)
library(scales)
library(ggmap)
library(viridis)
m@data$id <- rownames(m@data)
newUS <- fortify(m, region = "id")
newdf <- merge(newUS, m@data, by = "id")
Myplot <- ggplot() +
  geom_polygon(data = newdf, aes(fill = mhhw, 
                                 x = long, 
                                 y = lat.x, 
                                 group = group)) + ggtitle("Vote Percentage for Bush, 2004") + theme(plot.title = element_text(hjust =0.5))



NicerPlot <- Myplot + scale_fill_viridis(option = "magma", direction = -1)
NicerPlot

library("rnaturalearth")
library("rnaturalearthdata")

world <- readOGR("Documents/Github/geog473-673/datasets/world_shpfiles/world.shp")

download.file("https://github.com/jsimkins2/geog473-673/tree/master/datasets/world_shpfiles/world.shp", 
              destfile = "Downloads/world.shp" , mode='wb')
unzip("Income_schooling.zip", exdir = ".")
file.remove("Income_schooling.zip")


world = st_as_sf(world)
class(world)
asdf = st_as_sf(m)
st_crs(world) = 4326
# note theme_void is NECESSARY
ggplot(data = world) + geom_sf() + theme_void() +
  geom_sf(data = asdf, aes(fill = mhhw)) +
  scale_fill_viridis_c(trans = "sqrt", alpha = .4) +
  coord_sf(xlim = c(-76.5, -74.5), ylim = c(38,40), expand = FALSE)









library(maptools)
m <- readOGR("Downloads/ne_10m_parks_and_protected_lands/ne_10m_parks_and_protected_lands_area.shp")

spplot(m,"name", par.settings = list(axis.line = list(col ="transparent")), main = "Protected Lands", cuts = 5, col ="transparent",
       xlim = c(-127, -110), ylim = c(40,50), fill="darkgreen", colorkey=FALSE)


library(tmap)
tm_shape(m,bbox=tmaptools::bb(matrix(c(-127,40,-110,50),2,2))) + 
  tm_polygons(col='name', title = "Protected Lands", palette = "Spectral") + tm_style("classic") + tm_scale_bar(position = c("right", "bottom")) +
  tm_layout(legend.title.size = 1,legend.text.size = 0.6, legend.position = c("left","center")) +
  tm_layout(title="Protected Areas in Pacific NW")


states <- readOGR("/Users/james/Documents/Github/geog473-673/datasets/ne_10m_admin_1_states_provinces/ne_10m_admin_1_states_provinces.shp")
class(states)
states = st_as_sf(states)
class(states)


ggplot(data = states) + geom_sf() + theme_void() +
  geom_sf(data = st_as_sf(m), aes(fill=name), fill="darkgreen", colour = "aquamarine3", alpha=0.8) +
  coord_sf(xlim = c(-127, -110), ylim = c(40,50), expand = FALSE) + 
  theme(legend.position = "none") + ggtitle("Protected Lands in Pacific NW")

library(mapview)
mapview(m['name'], col.regions = mycolours)



