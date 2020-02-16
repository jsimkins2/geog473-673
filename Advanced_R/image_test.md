Week 6 - Data Extraction
================

THREDDS and ERDDAP
==================

So far this semester, we've only been playing with datasets that I have stored for you in the datasets folder. I showed you a quick way to download datasets from the folder using R -

`download.file("https://github.com/jsimkins2/geog473-673/tree/master/datasets/TreeData.csv", destfile = "/Users/james/Downloads/TreeData.csv" , mode='wb')`

This is a really useful thing to have to download complete files from a datasets folder on Github. However, while Github is excellent for code, it's not a cloud service for datasets. THREDDS and ERDDAP are the future of environmental data repositories.

### THREDDS

THREDDS (Thematic Realtime Environmental Distributed Data Services) is an efficient way to extract specific areas or time periods of a dataset. For example, if you're studying 2000-2020 water temperatures of the Delaware Bay, you don't necessarily want a water temperature dataset covering the Atlantic Ocean from 1960-2020. It's a waste of time to have to download, store, and process all of that data just to sub-select the Delaware Bay from 2000-2020. THREDDS makes it possible to download your desired subset from the get-go, saving you time and hard-drive space.

Here are some NASA/NOAA/UDEL THREDDS servers I frequently use:

1.  <https://thredds.jpl.nasa.gov/thredds/catalog.html> - NASA Jet Propulsion Labratory
2.  <https://thredds.daac.ornl.gov/thredds/catalog.html> - Oak Ridge National Lab
3.  <https://pae-paha.pacioos.hawaii.edu/thredds/catalog.html> - Pacific Islands Ocean Observing System
4.  <http://thredds.demac.udel.edu/thredds/catalog.html> - UDEL DEMAC
5.  <http://basin.ceoe.udel.edu/thredds/catalog.html> - UDEL Satellite Receiving Station
6.  <http://www.smast.umassd.edu:8080/thredds/catalog.html> - UMASS Thredds

If you have a dataset or type of data you're interested in, google search it with **thredds** or **thredds server** after it.

Today we'll use UDEL's Satellite Receiving Station THREDDS (\#5 on the list). It's located at this URL - <http://basin.ceoe.udel.edu/thredds/catalog.html>

.Here's what that looks like:

![test](%22./documents/images/basin_thredds.png%22) If we click on `GOES-R SST`, we see we have some different avenues for data extraction.
