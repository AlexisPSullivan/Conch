setwd("~/Dropbox/PennState/PerryLab/2017-19_Conch/")

#library(devtools)
#devtools::install_github("dkahle/ggmap")
#devtools::install_github("hadley/ggplot2") - this one not needed

library(ggmap)
library(maptools)
library(gpclib)
library(rgeos)
library(rgdal)
library(raster)
library(sp)
library(tidyr)
library(dplyr)
library(maps)
library(mapdata)
library(scales)

library(ggplot2)
library(plyr)

#map("world","Panama", xlim = c(-82.5,-81.5), ylim = c(8.5,9.5), fill = TRUE, col = "white")  #plot BDT
#points(-82.263639, 9.353861, pch=19, col="red", cex=0.5) #plots Sunset Point
#points(-82.052472, 9.146278, pch=19, col="red", cex=0.5) #plots Cayo Agua 1
#points(-82.056639, 9.158750, pch=19, col="red", cex=0.5) #plots Cayo Agua 2
#points(-82.323444, 9.403722, pch=19, col="red", cex=0.5) #plots Boca del Drago
#points(-82.320779, 9.425299, pch=19, col="dark green", cex=0.5) #plots Sitio Drago
#points(-82.26942, 9.36029, pch=19, col="blue", cex=0.5) #plots Lennond
#points(-82.26797, 9.3604, pch=19, col="blue", cex=0.5) #plots Lennond-Sunset Point
#map.axes(cex.axis=0.8)

#bocas_points<-data.frame(lon=c(-82.263639, -82.052472, -82.056639, -82.323444, -82.320779, -82.26942, -82.26797),
      #lat=c(9.353861, 9.146278, 9.158750, 9.403722, 9.425299, 9.36029, 9.3604))

register_google(key = "AIzaSyBD0EZOBnDZ71-E_a_l3qKmYTxCZdkHy2s")


#BDT zoomed in
style1<-c(feature = "all", element = "labels", visibility = "off")
style2<-c("&style=", feature = "road", element = "all", visibility = "off")
style3<-c("&style=", feature = "water", color = "0x4AA3AB")
style4<-c("&style=", feature = "administrative", element = "all", visibility = "off")
style5<-c("&style=", feature = "landscape", color = "0x15325D")
style6<-c("&style=", feature = "poi", color = "0x15325D")

style<-c(style1, style2, style3, style4, style5, style6)

panama<-get_googlemap(center = c(lon = -82.1858198, lat = 9.262032), zoom = 11, size = c(640,640),
      maptype = "roadmap", color = c("color"), style = style)
ggmap(panama, extent = "normal", legend = "right", padding = 0.02) +
  #geom_point(x=-82.263639, y=9.353861, colour="#FFC85E", shape=1, size=4) + #plots Sunset Point
  geom_point(x=-82.052472, y=9.146278, colour="#FFC85E", shape=24, size=4) + #plots Cayo Agua 1
  geom_point(x=-82.056639, y=9.158750, colour="#FFC85E", size=4) + #plots Cayo Agua 2
  geom_point(x=-82.323444, y=9.403722, colour="#FFC85E", shape=25, size=4) + #plots Boca del Drago
  geom_point(x=-82.320779, y=9.425299, colour="#E09425", size=4) + #plots Sitio Drago
  geom_point(x=-82.26949, y=9.36002, colour="#955805", size=4) #plots Lennond
  # + geom_point(x=-82.26797, y=9.3604, colour="dodgerblue4", size=2) #plots Lennond-Sunset Point

#BDT + Panama
style1<-c(feature = "all", element = "labels", visibility = "off")
style2<-c("&style=", feature = "road", element = "all", visibility = "off")
style3<-c("&style=", feature = "water", color = "0x4AA3AB")
style4<-c("&style=", feature = "administrative.country", element = "borders", visibility = "on")
style5<-c("&style=", feature = "administrative.province", element = "all", visibility = "off")
style6<-c("&style=", feature = "landscape", color = "0x15325D")
style7<-c("&style=", feature = "poi", color = "0x15325D")

style<-c(style1, style2, style3, style4, style5, style6, style7)

panama<-get_googlemap(center = c(lon = -82.1858198, lat = 9.262032), zoom = 7, size = c(640,640),
                      maptype = "roadmap", color = c("color"), style = style)
ggmap(panama, extent = "normal", legend = "right", padding = 0.02) +
  #geom_point(x=-82.263639, y=9.353861, colour="#FFC85E", shape=1, size=4) + #plots Sunset Point
  geom_point(x=-82.052472, y=9.146278, colour="#FFC85E", shape=24, size=1) + #plots Cayo Agua 1
  geom_point(x=-82.056639, y=9.158750, colour="#FFC85E", size=1) + #plots Cayo Agua 2
  geom_point(x=-82.323444, y=9.403722, colour="#FFC85E", shape=25, size=1) + #plots Boca del Drago
  geom_point(x=-82.320779, y=9.425299, colour="#E09425", size=1) + #plots Sitio Drago
  geom_point(x=-82.26949, y=9.36002, colour="#955805", size=1) #plots Lennond
# + geom_point(x=-82.26797, y=9.3604, colour="dodgerblue4", size=2) #plots Lennond-Sunset Point









#new pub map
style1<-c(feature = "all", element = "labels", visibility = "off")
style2<-c("&style=", feature = "road", element = "all", visibility = "off")
style3<-c("&style=", feature = "water", color = "0xF0F0F0")
style4<-c("&style=", feature = "administrative", element = "all", visibility = "off")
style5<-c("&style=", feature = "administrative.province", element = "all", visibility = "off")
style6<-c("&style=", feature = "landscape", color = "0x636363")
style7<-c("&style=", feature = "poi", color = "0x636363")

style<-c(style1, style2, style3, style4, style5, style6, style7)

#BDT zoomed in
panama<-get_googlemap(center = c(lon = -82.1858198, lat = 9.262032), zoom = 11, size = c(640,640),
                      maptype = "roadmap", color = c("color"), style = style)
ggmap(panama, extent = "normal", legend = "right", padding = 0.02) +
  #geom_point(x=-82.263639, y=9.353861, colour="#D55E00", shape=1, size=4) + #plots Sunset Point
  geom_point(x=-82.052472, y=9.146278, colour="#D55E00", shape=24, size=4) + #plots Cayo Agua 1
  geom_point(x=-82.056639, y=9.158750, colour="#D55E00", size=4) + #plots Cayo Agua 2
  geom_point(x=-82.323444, y=9.403722, colour="#D55E00", shape=25, size=4) + #plots Boca del Drago
  geom_point(x=-82.320779, y=9.425299, colour="#009E73", size=4) + #plots Sitio Drago
  geom_point(x=-82.26949, y=9.36002, colour="#56B4E9", size=4) #plots Lennond
# + geom_point(x=-82.26797, y=9.3604, colour="dodgerblue4", size=2) #plots Lennond-Sunset Point

style1<-c(feature = "all", element = "labels", visibility = "off")
style2<-c("&style=", feature = "road", element = "all", visibility = "off")
style3<-c("&style=", feature = "water", color = "0xF0F0F0")
style4<-c("&style=", feature = "administrative.country", element = "borders", visibility = "on")
style5<-c("&style=", feature = "administrative.province", element = "all", visibility = "off")
style6<-c("&style=", feature = "landscape", color = "0x636363")
style7<-c("&style=", feature = "poi", color = "0x636363")

style<-c(style1, style2, style3, style4, style5, style6, style7)

#BDT + Panama
panama<-get_googlemap(center = c(lon = -82.1858198, lat = 9.262032), zoom = 7, size = c(640,640),
                      maptype = "roadmap", color = c("color"), style = style)
ggmap(panama, extent = "normal", legend = "right", padding = 0.02) +
  #geom_point(x=-82.263639, y=9.353861, colour="#D55E00", shape=1, size=4) + #plots Sunset Point
  geom_point(x=-82.052472, y=9.146278, colour="#D55E00", shape=24, size=4) + #plots Cayo Agua 1
  geom_point(x=-82.056639, y=9.158750, colour="#D55E00", size=4) + #plots Cayo Agua 2
  geom_point(x=-82.323444, y=9.403722, colour="#D55E00", shape=25, size=4) + #plots Boca del Drago
  geom_point(x=-82.320779, y=9.425299, colour="#009E73", size=4) + #plots Sitio Drago
  geom_point(x=-82.26949, y=9.36002, colour="#56B4E9", size=4) #plots Lennond
# + geom_point(x=-82.26797, y=9.3604, colour="dodgerblue4", size=2) #plots Lennond-Sunset Point












theme_clean <- function(base_size = 12) {
  require(grid)
  theme_grey(base_size) %+replace%
    theme(
      axis.title      =   element_blank(),
      #axis.text       =   element_blank(),
      #panel.background    =   element_blank(),
      #panel.grid      =   element_blank(),
      #axis.ticks.length   =   unit(0,"cm"),
      #axis.ticks.margin   =   unit(0,"cm"),
      #panel.margin    =   unit(0,"lines"),
      plot.margin     =   unit(c(0,0,0,0),"lines"),
      complete = TRUE
    )
}

Panama_map <- map_data("world2", region = "Panama")

ggplot(Panama_map, aes(x = long, y = lat, group = group)) +
  geom_polygon() +
  expand_limits(x = Panama_map$long, y = Panama_map$lat) +
  coord_map("polyconic") + 
  theme_clean() 

BDT_long_rows<-which((Panama_map$long >= 277.5) & (Panama_map$long <= 278))
BDT_long<-Panama_map[BDT_long_rows,]

BDT_lat_rows<-which((BDT_long$lat <= 9.5) & (BDT_long$lat >= 9))
BDT_map<-BDT_long[BDT_lat_rows,]

ggplot(BDT_map, aes(x = long, y = lat, group = group)) +
  geom_polygon() +
  expand_limits(x = BDT_map$long, y = BDT_map$lat) +
  coord_map("polyconic") + 
  theme_clean() 
