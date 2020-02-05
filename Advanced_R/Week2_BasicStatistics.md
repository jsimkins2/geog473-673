Week2 - BasicStatistics
================

Basic Statistics
================

This week we'll be diving into some basic statistical procedures. R started out as THE statistical programming language. It spread like wildfire for it's performance and efficiency at crunching numbers. It's early success as a statistical programming langugae attracted the early developers who really made R into the do-it-all language we're using today. First, I'll throw in the useful definitions list at the top of this tutorial just for ease of access. Second, we'll dive into a recap of for loops and how they're structured. Then we'll show off some of R's great statistics functions and how to add them to a plot. Finally, we'll have an assignment where we cover some of

Some Useful Definitions
-----------------------

<table style="width:79%;">
<colgroup>
<col width="16%" />
<col width="62%" />
</colgroup>
<thead>
<tr class="header">
<th>Function</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>ls</td>
<td>lists contents of R workspace/global environment</td>
</tr>
<tr class="even">
<td>rm</td>
<td>removes objects from R workspace</td>
</tr>
<tr class="odd">
<td>save</td>
<td>save selected objects</td>
</tr>
<tr class="even">
<td>+,-,*,/,^</td>
<td>arithmetic operators</td>
</tr>
<tr class="odd">
<td>%*%</td>
<td>matrix multiplication</td>
</tr>
<tr class="even">
<td>t</td>
<td>matrix transpose</td>
</tr>
<tr class="odd">
<td>solve</td>
<td>matrix inverse (and solving linear equations)</td>
</tr>
<tr class="even">
<td>c</td>
<td>combines (concatenates) objects, simplest way to make vectors</td>
</tr>
<tr class="odd">
<td>seq</td>
<td>creates vectors that are regular sequences</td>
</tr>
<tr class="even">
<td>rep</td>
<td>replicates vectors</td>
</tr>
<tr class="odd">
<td>length</td>
<td>returns length of a vector</td>
</tr>
<tr class="even">
<td>sum</td>
<td>returns the sum</td>
</tr>
<tr class="odd">
<td>mean</td>
<td>returns the mean</td>
</tr>
<tr class="even">
<td>median</td>
<td>returns the median</td>
</tr>
<tr class="odd">
<td>sd</td>
<td>returns the standard deviation (n − 1 in denominator)</td>
</tr>
<tr class="even">
<td>min</td>
<td>returns minimum</td>
</tr>
<tr class="odd">
<td>max</td>
<td>returns maximum</td>
</tr>
<tr class="even">
<td>sort</td>
<td>sort a vector (rearranges the vector in order)</td>
</tr>
<tr class="odd">
<td>order</td>
<td>returns indices of vectors that will order them</td>
</tr>
<tr class="even">
<td>rank</td>
<td>returns rank of each element in vector</td>
</tr>
<tr class="odd">
<td>==, &lt;, &gt;</td>
<td>comparison operators</td>
</tr>
<tr class="even">
<td>&lt;=, &gt;=, !=</td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td>, &amp;</td>
</tr>
<tr class="even">
<td>is.na</td>
<td>tests for missing value NA</td>
</tr>
<tr class="odd">
<td>which</td>
<td>does logical comparison and indicates which elements are TRUE that is, gives the TRUE indices of a logical object</td>
</tr>
<tr class="even">
<td>any</td>
<td>does logical comparison returns 1 (TRUE) if any of the comparisons are TRUE, i.e. is at least one of the values true?</td>
</tr>
<tr class="odd">
<td>exp</td>
<td>returns e to that power</td>
</tr>
<tr class="even">
<td>log</td>
<td>returns natural logarithm (to the base e)</td>
</tr>
<tr class="odd">
<td>log10</td>
<td>returns logarithm (to the base 10)</td>
</tr>
<tr class="even">
<td>sqrt</td>
<td>returns square root</td>
</tr>
<tr class="odd">
<td>table</td>
<td>does frequencies and cross-tabs</td>
</tr>
<tr class="even">
<td>help</td>
<td>help page on specified function</td>
</tr>
<tr class="odd">
<td>cbind</td>
<td>combine by columns</td>
</tr>
<tr class="even">
<td>rbind</td>
<td>combine by rows</td>
</tr>
<tr class="odd">
<td>matrix</td>
<td>create a matrix</td>
</tr>
<tr class="even">
<td>vector</td>
<td>create a vector</td>
</tr>
<tr class="odd">
<td>nrow</td>
<td>number of rows in an array or data frame</td>
</tr>
<tr class="even">
<td>ncol</td>
<td>number of columns in an array or data frame</td>
</tr>
<tr class="odd">
<td>dim</td>
<td>dimensions of an array or data frame</td>
</tr>
<tr class="even">
<td>array</td>
<td>create an array</td>
</tr>
</tbody>
</table>

| Function      | Description                                                       |
|---------------|-------------------------------------------------------------------|
| is.vector     | answers the question, is this a vector TRUE or FALSE              |
| as.vector     | attempts to coerce object into a vector                           |
| read.table    | reads data from a text file                                       |
| read.csv      | reads data from a text file with comma separated data             |
| write.table   | writes a data frame to a text file                                |
| is.data.frame | tests object to see if it is data frame                           |
| as.data.frame | coerces object into data frame                                    |
| is.factor     | tests object to see if it is a factor                             |
| as.factor     | coerces object into a factor                                      |
| head, tail    | list the first, last six rows                                     |
| names         | returns names of elements of object                               |
| colnames      | returns or sets column names of object                            |
| rownames      | returns or sets row names of object                               |
| subset        | select part of a vector, matrix, or data frame                    |
| merge         | merge two data frames                                             |
| lm            | multiple linear regression                                        |
| glm           | generalized linear regression                                     |
| anova         | analysis of variance                                              |
| chisq.test    | Pearson’s Chi-squared test for count data                         |
| summary       | shows results of various model fitting functions                  |
| predict       | predicted results from model                                      |
| hist          | histogram                                                         |
| boxplot       | box plot                                                          |
| plot          | scatterplot                                                       |
| lines         | connects points sequentially with lines (added to a plot)         |
| segments      | add lines to a plot (between pairs of points)                     |
| text          | add text to a plot                                                |
| legend        | add a legend to a plot                                            |
| abline        | add a line to a plot by specifying its slope and intercept        |
| passing       | an lm object will result in adding the predicted line to the plot |
| x11           | open another graphics window (PC)                                 |
| pdf           | open a pdf file for recording graphics                            |
| dev.off       | close graphics device                                             |
| par(mfrow)    | arranges multiple plots on same page (by row)                     |
| sample        | produces a random sample of the specified values                  |
| set.seed      | sets seed for next random sample (repeat random sample)           |
| rnorm         | produces a random sample from a normal distribution               |
| qnorm         | quantiles (percentiles) of normal distribution                    |
| pnorm         | CDF of normal distribution                                        |
| dnorm         | PDF of normal distribution                                        |
| rbinom        | produces a random sample from a binomial distribution             |

Recap of the for loop & coniditional statements
-----------------------------------------------

For loops & conditional statements are a key skill in programming. They allow you to process through large datasets or multiple datasets thus minimizing the amount of manual work you need to do. The basic for loop looks like this...

``` r
# Generate sequence of numbers from 1 to 10 using the seq() function (seq for sequence)
numbersList = seq(from=1,to=10,by=1)
# Multiply each number in the numbersList by 8 and print the result
for (i in numbersList){
  temNumber = i * 8
  print(temNumber)
}
```

    ## [1] 8
    ## [1] 16
    ## [1] 24
    ## [1] 32
    ## [1] 40
    ## [1] 48
    ## [1] 56
    ## [1] 64
    ## [1] 72
    ## [1] 80

Notice the general structure of R for loops. 'for' signals to R you're beginning a for loop, which requires the general structure to look like:

for (something in something inside these parentheses){ do something within these curly brackets }

Yes, you must have these parentheses and curly brackets present and surrounding the appropriate code. If you forget a parentheses or curly bracket you'll have errors pop up...this happens to me all the time still.

While these must be present, R doesn't care where they are in your code (\*\*\*\*which is very unique amongst programming languages). For example, notice how this ugly code is different but still runs...

``` r
# Generate sequence of numbers from 1 to 10 using the seq() function (seq for sequence)
numbersList = seq(from=1,to=10,by=1)
# Multiply each number in the numbersList by 8 and print the result
for (        i in numbersList       
      ){
  temNumber = i * 8
  print(temNumber)
        }
```

    ## [1] 8
    ## [1] 16
    ## [1] 24
    ## [1] 32
    ## [1] 40
    ## [1] 48
    ## [1] 56
    ## [1] 64
    ## [1] 72
    ## [1] 80

The general structure is still: for(condition){do something}. If statements are set up the same way

``` r
# Generate sequence of numbers from 1 to 10 using the seq() function (seq for sequence)
numbersList = seq(from=1,to=10,by=1)
# Multiply each number in the numbersList by 8 and print the result
for (i in numbersList){
  if (i==4){
    temNumber = i * 8
    print(temNumber)
  }
}
```

    ## [1] 32

This is referred to as a 'nested loop', because there is a conditional statement within another one. Key takeaway here: in programming languages, '=' is an assignment (i.e. x = 4), whereas '==' is an equality test (i == 4). To put this loop in layman's terms: for i in numbersList, if i is equal to 4, multiply i by 8 and then print temNumber.

We can also have nested for loops.

``` r
# Generate sequence of numbers from 1 to 3 this time using the seq() function (seq for sequence)
numbersList = seq(from=1,to=3,by=1)
lettersList = list("A", "B", "C")

for (num in numbersList){
  for (let in lettersList){
    print(c(num,let))
  }
}
```

    ## [1] "1" "A"
    ## [1] "1" "B"
    ## [1] "1" "C"
    ## [1] "2" "A"
    ## [1] "2" "B"
    ## [1] "2" "C"
    ## [1] "3" "A"
    ## [1] "3" "B"
    ## [1] "3" "C"

You can name the object within the list whatever you want (i, j, num, let, etc.). Also, c() is the concatenate functin that combines values into a vector or list. The order doesn't matter in this for loop...

``` r
# Generate sequence of numbers from 1 to 3 this time using the seq() function (seq for sequence)
numbersList = seq(from=1,to=3,by=1)
lettersList = list("A", "B", "C")

for (let in lettersList){
  for (num in numbersList){
    print(c(num,let))
  }
}
```

    ## [1] "1" "A"
    ## [1] "2" "A"
    ## [1] "3" "A"
    ## [1] "1" "B"
    ## [1] "2" "B"
    ## [1] "3" "B"
    ## [1] "1" "C"
    ## [1] "2" "C"
    ## [1] "3" "C"

But it does in this one...

``` r
# Generate sequence of numbers from 1 to 10 using the seq() function (seq for sequence)
numbersList = seq(from=1,to=10,by=1)
# Multiply each number in the numbersList by 8 and print the result
if (i==4){
  for (i in numbersList){
    temNumber = i * 8
    print(temNumber)
  }
}
```

Here's one more example for multi conditional statement with an else...

``` r
# Generate sequence of numbers from 1 to 3 this time using the seq() function (seq for sequence)
numbersList = seq(from=1,to=3,by=1)
lettersList = list("A", "B", "C")

for (num in numbersList){
  for (let in lettersList){
    if (num == 3 && let == "B"){
      print(c(num,let))
    } else{
      print("Not what we want")
    }
  }
}
```

    ## [1] "Not what we want"
    ## [1] "Not what we want"
    ## [1] "Not what we want"
    ## [1] "Not what we want"
    ## [1] "Not what we want"
    ## [1] "Not what we want"
    ## [1] "Not what we want"
    ## [1] "3" "B"
    ## [1] "Not what we want"

&& means "and" ... || means "or"...these are useful in multi conditional statements. The 'else' statement is an appendage of the 'if' statement. It basically means if num == 3 and let == B is false, print "not what we want". Notice that the 'else' statement is outside of the 'if' statement but immediately after it.

In Class Exercise: debug this for loop

``` r
soiltype <- list("sand", "silt", "saline", "clay", "peat")
permeability <- c(0.09, 0.05, 0.03, 0.01, 0.005)

for (s in seq(length(soiltype)){
  print(a)
  for (p in permeability)
    if (p == 0.05 | p == 0.005){
      print(permeability[s])
    }
  }
}
```

Basic Statistics in R
=====================

R is famous for it's easy-to-use statistics features and once you get the hang of it you'll never want to touch Microsoft Excel again. Despite the fact that these stats functions seem pretty fancy to me, I call them basic functions because R has so much to offer to statisticians. We'll be using multiple meteorological / climate model datasets for this tutorial. Let's get started with some of these functions...

### Load the data

``` r
library(ncdf4)
# open the netcdf file of Willow Creek, Wisconsin meteorology data
nc_file = nc_open("/Users/james/Documents/Github/geog473-673/datasets/WCr_1hr.2010.nc")
# what does the nc file look like 
nc_file
```

    ## File /Users/james/Documents/Github/geog473-673/datasets/WCr_1hr.2010.nc (NC_FORMAT_CLASSIC):
    ## 
    ##      10 variables (excluding dimension variables):
    ##         float air_temperature[latitude,longitude,time]   
    ##             units: Kelvin
    ##             _FillValue: -999
    ##         float air_temperature_max[latitude,longitude,time]   
    ##             units: Kelvin
    ##             _FillValue: -999
    ##         float air_temperature_min[latitude,longitude,time]   
    ##             units: Kelvin
    ##             _FillValue: -999
    ##         float surface_downwelling_longwave_flux_in_air[latitude,longitude,time]   
    ##             units: W/m2
    ##             _FillValue: -999
    ##         float air_pressure[latitude,longitude,time]   
    ##             units: Pascal
    ##             _FillValue: -999
    ##         float surface_downwelling_shortwave_flux_in_air[latitude,longitude,time]   
    ##             units: W/m2
    ##             _FillValue: -999
    ##         float eastward_wind[latitude,longitude,time]   
    ##             units: m/s
    ##             _FillValue: -999
    ##         float northward_wind[latitude,longitude,time]   
    ##             units: m/s
    ##             _FillValue: -999
    ##         float specific_humidity[latitude,longitude,time]   
    ##             units: g/g
    ##             _FillValue: -999
    ##         float precipitation_flux[latitude,longitude,time]   
    ##             units: kg/m2/s
    ##             _FillValue: -999
    ## 
    ##      3 dimensions:
    ##         latitude  Size:1
    ##             units: degree_north
    ##             long_name: latitude
    ##         longitude  Size:1
    ##             units: degree_east
    ##             long_name: longitude
    ##         time  Size:8760   *** is unlimited ***
    ##             units: sec
    ##             long_name: time

``` r
# ok, still a lot of info...let's list the names of the variables
names(nc_file$var)
```

    ##  [1] "air_temperature"                          
    ##  [2] "air_temperature_max"                      
    ##  [3] "air_temperature_min"                      
    ##  [4] "surface_downwelling_longwave_flux_in_air" 
    ##  [5] "air_pressure"                             
    ##  [6] "surface_downwelling_shortwave_flux_in_air"
    ##  [7] "eastward_wind"                            
    ##  [8] "northward_wind"                           
    ##  [9] "specific_humidity"                        
    ## [10] "precipitation_flux"

``` r
# alright, now we have some names, so let's put the variables into a new dataframe separate from the nc_file
var_names = names(nc_file$var)
willow_creek_2010 = list()
dim <- nc_file$dim
for (v in seq_along(var_names)){
  willow_creek_2010[[v]] = ncvar_get(nc_file, varid = var_names[v])
}
# convert the list into a dataframe
wcreek_df = data.frame(willow_creek_2010)
# tell the dataframe what the column names are
colnames(wcreek_df) = var_names
# print some summary stats of wcreek_df
summary(wcreek_df)
```

    ##  air_temperature air_temperature_max air_temperature_min
    ##  Min.   :248.4   Min.   :248.5       Min.   :248.2      
    ##  1st Qu.:270.5   1st Qu.:270.6       1st Qu.:270.4      
    ##  Median :280.9   Median :281.1       Median :280.7      
    ##  Mean   :279.8   Mean   :280.0       Mean   :279.6      
    ##  3rd Qu.:289.4   3rd Qu.:289.6       3rd Qu.:289.3      
    ##  Max.   :304.0   Max.   :304.0       Max.   :304.0      
    ##  surface_downwelling_longwave_flux_in_air  air_pressure  
    ##  Min.   :139.7                            Min.   :91108  
    ##  1st Qu.:263.0                            1st Qu.:94818  
    ##  Median :301.7                            Median :95236  
    ##  Mean   :304.7                            Mean   :95191  
    ##  3rd Qu.:351.6                            3rd Qu.:95650  
    ##  Max.   :444.1                            Max.   :96918  
    ##  surface_downwelling_shortwave_flux_in_air eastward_wind     
    ##  Min.   :   0.00                           Min.   :-10.6414  
    ##  1st Qu.:   0.00                           1st Qu.: -1.7298  
    ##  Median :   0.00                           Median : -0.2718  
    ##  Mean   :  78.04                           Mean   : -0.2817  
    ##  3rd Qu.:  12.62                           3rd Qu.:  1.2213  
    ##  Max.   :1045.39                           Max.   : 13.7162  
    ##  northward_wind     specific_humidity   precipitation_flux 
    ##  Min.   :-12.3305   Min.   :0.0001864   Min.   :0.000e+00  
    ##  1st Qu.: -1.5300   1st Qu.:0.0025622   1st Qu.:0.000e+00  
    ##  Median : -0.2183   Median :0.0051646   Median :0.000e+00  
    ##  Mean   : -0.1984   Mean   :0.0065146   Mean   :2.564e-05  
    ##  3rd Qu.:  1.0876   3rd Qu.:0.0100803   3rd Qu.:0.000e+00  
    ##  Max.   :  6.5341   Max.   :0.0258134   Max.   :9.102e-03

``` r
# ok, so we see the units and values
dim$time$units
```

    ## [1] "sec"

``` r
dim$time$vals[1:10]
```

    ##  [1]  3600  7200 10800 14400 18000 21600 25200 28800 32400 36000

``` r
# so without any extra metadata, we can back out that this data is hourly data just from the units being seconds and time between
# each recorded value (3600 seconds == 1 hour)
#### Add a datetime column ####
date.seq = seq(as.POSIXct("2010-01-01 00:00:00"), as.POSIXct("2010-12-31 23:00:00"), by="hour")
wcreek_df['datetime'] = date.seq
summary(wcreek_df)
```

    ##  air_temperature air_temperature_max air_temperature_min
    ##  Min.   :248.4   Min.   :248.5       Min.   :248.2      
    ##  1st Qu.:270.5   1st Qu.:270.6       1st Qu.:270.4      
    ##  Median :280.9   Median :281.1       Median :280.7      
    ##  Mean   :279.8   Mean   :280.0       Mean   :279.6      
    ##  3rd Qu.:289.4   3rd Qu.:289.6       3rd Qu.:289.3      
    ##  Max.   :304.0   Max.   :304.0       Max.   :304.0      
    ##  surface_downwelling_longwave_flux_in_air  air_pressure  
    ##  Min.   :139.7                            Min.   :91108  
    ##  1st Qu.:263.0                            1st Qu.:94818  
    ##  Median :301.7                            Median :95236  
    ##  Mean   :304.7                            Mean   :95191  
    ##  3rd Qu.:351.6                            3rd Qu.:95650  
    ##  Max.   :444.1                            Max.   :96918  
    ##  surface_downwelling_shortwave_flux_in_air eastward_wind     
    ##  Min.   :   0.00                           Min.   :-10.6414  
    ##  1st Qu.:   0.00                           1st Qu.: -1.7298  
    ##  Median :   0.00                           Median : -0.2718  
    ##  Mean   :  78.04                           Mean   : -0.2817  
    ##  3rd Qu.:  12.62                           3rd Qu.:  1.2213  
    ##  Max.   :1045.39                           Max.   : 13.7162  
    ##  northward_wind     specific_humidity   precipitation_flux 
    ##  Min.   :-12.3305   Min.   :0.0001864   Min.   :0.000e+00  
    ##  1st Qu.: -1.5300   1st Qu.:0.0025622   1st Qu.:0.000e+00  
    ##  Median : -0.2183   Median :0.0051646   Median :0.000e+00  
    ##  Mean   : -0.1984   Mean   :0.0065146   Mean   :2.564e-05  
    ##  3rd Qu.:  1.0876   3rd Qu.:0.0100803   3rd Qu.:0.000e+00  
    ##  Max.   :  6.5341   Max.   :0.0258134   Max.   :9.102e-03  
    ##     datetime                  
    ##  Min.   :2010-01-01 00:00:00  
    ##  1st Qu.:2010-04-02 06:45:00  
    ##  Median :2010-07-02 12:30:00  
    ##  Mean   :2010-07-02 12:30:00  
    ##  3rd Qu.:2010-10-01 18:15:00  
    ##  Max.   :2010-12-31 23:00:00

Alright so our data is loaded up, organized, and ready for stats. Let's take a look at air temperature in relation to season. We're going to look at temperatures during the first half of the year by indexing air temperature and date from the 1st index to half the length of the dataset `[1:length(wcreek_df$datetime) / 2]` . So instead of having 8760 temperature values (there's 8760 hours in a non leap-year), we only have 4380.

``` r
plot(wcreek_df$air_temperature[1:length(wcreek_df$air_temperature) / 2] ~ wcreek_df$datetime[1:length(wcreek_df$datetime) / 2], pch = 20, col="blue")
```

![](Week2_BasicStatistics_files/figure-markdown_github/unnamed-chunk-10-1.png)

``` r
# alright, so yeah we know in the northern hemisphere that temperature increases between winter and summer months...but what is the trend like?
fit <- lm(air_temperature[1:length(wcreek_df$air_temperature) / 2] ~ wcreek_df$datetime[1:length(wcreek_df$datetime) / 2], data = wcreek_df)
summary(fit)
```

    ## 
    ## Call:
    ## lm(formula = air_temperature[1:length(wcreek_df$air_temperature)/2] ~ 
    ##     wcreek_df$datetime[1:length(wcreek_df$datetime)/2], data = wcreek_df)
    ## 
    ## Residuals:
    ##      Min       1Q   Median       3Q      Max 
    ## -17.7676  -3.6200  -0.2501   3.7414  19.0855 
    ## 
    ## Coefficients:
    ##                                                      Estimate Std. Error
    ## (Intercept)                                        -2.473e+03  1.697e+01
    ## wcreek_df$datetime[1:length(wcreek_df$datetime)/2]  2.166e-06  1.336e-08
    ##                                                    t value Pr(>|t|)    
    ## (Intercept)                                         -145.7   <2e-16 ***
    ## wcreek_df$datetime[1:length(wcreek_df$datetime)/2]   162.1   <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 5.691 on 8757 degrees of freedom
    ## Multiple R-squared:  0.7501, Adjusted R-squared:   0.75 
    ## F-statistic: 2.628e+04 on 1 and 8757 DF,  p-value: < 2.2e-16

``` r
coef(fit)
```

    ##                                        (Intercept) 
    ##                                      -2.473363e+03 
    ## wcreek_df$datetime[1:length(wcreek_df$datetime)/2] 
    ##                                       2.166050e-06

``` r
plot(air_temperature[1:length(wcreek_df$air_temperature) / 2] ~ wcreek_df$datetime[1:length(wcreek_df$datetime) / 2], data = wcreek_df,
  main= "air_temperature vs. datetime",
  ylab= "Air Temperature ( Kelvin )",
  xlab= "Datetime",
  pch= 19, col= 'blue')
grid(NA,NULL, lty= 4) # NA first for no y axis grid lines, null second to ignore the default x axis linetype
abline(fit, col= 'black', lty= 4, lwd= 2)
legend("topleft", legend=c("lm(fit)"), col= 2, lty= 4, bg= "gray85", box.lty=0)
```

![](Week2_BasicStatistics_files/figure-markdown_github/unnamed-chunk-10-2.png)

So that's how you would go about investigating trendlines. Histograms are a good way to check out the distribution of data. Let's do that and add in a basic trendline for the probability distribution.

Let's add this to a histogram of the data

``` r
hist(wcreek_df$air_temperature[1:length(wcreek_df$air_temperature) / 2], freq = FALSE)
x <- seq(250, 310, length.out=100)
y <- with(wcreek_df, dnorm(x, mean(air_temperature[1:length(wcreek_df$air_temperature) / 2]), sd(air_temperature[1:length(wcreek_df$air_temperature) / 2])))
lines(x, y, col = "red")
```

![](Week2_BasicStatistics_files/figure-markdown_github/unnamed-chunk-11-1.png)

Density plots can be thought of as plots of smoothed histograms. The smoothness is controlled by a bandwidth parameter that is analogous to the histogram binwidth. Let's plot up the density of all the temperature values within this half of the data.

``` r
d = density(wcreek_df$air_temperature[1:length(wcreek_df$air_temperature) / 2], bw = 0.5)
plot(d, xlab = "Air Temperature (Kelvin)", ylab = "Density", main="Air Temperature Density", col="black")
```

![](Week2_BasicStatistics_files/figure-markdown_github/unnamed-chunk-12-1.png)

For a moderate number of observations a useful addition is a jittered rug plot:

``` r
plot(density(wcreek_df$air_temperature[1:length(wcreek_df$air_temperature) / 2], bw = 0.5), main = "jittered rug plot")
rug(jitter(wcreek_df$air_temperature[1:length(wcreek_df$air_temperature) / 2]))
```

![](Week2_BasicStatistics_files/figure-markdown_github/unnamed-chunk-13-1.png)

Assignment:
===========

Using the WCr\_1hr.2010.nc, WCr\_1hr.2011.nc and WCr\_1hr.2012.nc found in the datasets folder, complete the following:

1.  Make a **3 column plot** (each year gets 1 plot) of `surface_downwelling_shortwave_flux_in_air` (radiation from the sun) showing the data and trendlines for each year for the **second half** of the year (~ July 1 to Dec 31)

-   Note that it's alright if the abline goes outside of the plot, I'll show you how to fix this later

1.  Using the data and same time range above, make a **3 row plot** showing the jittered rug plot with 0.75 bandwidth for each year of `surface_downwelling_shortwave_flux_in_air`
2.  Submit plots to assignment 2 on canvas

Your final plots should look something like this **but with different colors**

![](Week2_BasicStatistics_files/figure-markdown_github/unnamed-chunk-14-1.png) ![](Week2_BasicStatistics_files/figure-markdown_github/unnamed-chunk-15-1.png)
