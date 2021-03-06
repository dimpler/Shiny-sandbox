---
title       : Explore diamond data
subtitle    : Some features of shiny app
author      : Sergey Legotsky
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Application and its functionality

1. Application itself is accessible [here](https://dimpler.shinyapps.io/diamonds-plotting)

2. This app was created to visualize diamond datset (details will be provided later)

3. This application was inspired by wonderful graphing system 'ggplot2' which is included in R and wonderful manual [ggplot2: elegant graphics for data analysis (12 526 KB).](http://www.bioinformaticslaboratory.nl/twikidata/pub/Education/ComputinginR/ggplot2-book.pdf)

4. ggplot2 library is available from CRAN, thus it can be installed and loaded by executing following code:


```r
install.packages("ggplot2")
library(ggplot2)
```

--- .class #id 

## Loading Diamond data set
1. Diamond dataset is included in ggplot2 library

2. Thus, it can be loaded in R in the following way:

```r
#load dataset
library(ggplot2)
data(diamonds)
#some features of data
dim(diamonds)
```

```
## [1] 53940    10
```

```r
names(diamonds)
```

```
##  [1] "carat"   "cut"     "color"   "clarity" "depth"   "table"   "price"  
##  [8] "x"       "y"       "z"
```

---

## Diamonds dataset summary


- As you can see from previous slide, this dataset provides prices and some other parameters of more than 50,000 diamonds. Detailed description is [here](http://www.inside-r.org/packages/cran/ggplot2/docs/diamonds), optionally you can get it by typing following code in R console:


```r
?diamonds
```

---

## Functionality of Shiny App

[My shinyapp](https://dimpler.shinyapps.io/diamonds-plotting) allows to visualize 2D scatter plot of any vatiable vs any other variable. The following actions are supported:

- slider for the size of subdataset;
- X/Y variable choice;
- Color dots on the plot depending on value of any other variable;
- faceting of plot by any categorical variable;
- jittering
- smoothing (unfortunately smoothing doesn't work online but it works locally as expected. Now this feature is under discuttion with Shiny support team).

Explore the diamonds! ;)



