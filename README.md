# unhcRstyle - __Deprecated__ -- please go to https://github.com/vidonne/unhcrthemes and https://github.com/vidonne/unhcrdown

## Content 

A package with all necessary elements to quickly implement [UNHCR Brand style](https://intranet.unhcr.org/content/dam/unhcr/intranet/staff%20support/strategic/documents/english/branded-templates/main/Accessing%20UNHCR%20Brand%20Compliant%20Templates%20user%20guide.pdf) in your statistical products and data stories: 

1. Adjusted [ggplot2 __themes__](https://ggplot2.tidyverse.org/reference/theme.html) for:
   * bar chart,
   * scatter plot,
   * histogram and
   * maps
 
2. A series of [color __palette__](http://www.cookbook-r.com/Graphs/Colors_(ggplot2)/) for: 
 
   * Discrete palette with either fixed or dynamically extended number of shades
   * Discrete palette with specific values for "good", "bad", and "neutral"
   * Continuous diverging color palette
   * Continuous color palette 
 
3. Different [Rmarkdown __template __](https://bookdown.org/yihui/rmarkdown/document-templates.html) to quick-start any report or slides you need to prepare:
   * Paginated report built on the top of pagedown. You can see an example through the [default template](https://unhcr-web.github.io/unhcRstyle/inst/examples/example.html) and the  [UNHCR R Cookbook](https://unhcr-web.github.io/unhcRstyle/inst/examples/How_to_quickly_produce_statistical_reports.html)
   * [Analysis Repository](http://analysis.unhcr.org) contribution
   * Word with UNHCR style
   * Powerpoint with UNHCR style
   * html/bootstrap -scroll-able report
   * html/slide - slide-able report
 

## Usage 

First make sure to have all your fonts - and specifically Lato -  registered with R

```r
# install.packages("extrafont")
library(extrafont)
font_import()
extrafont::loadfonts(device="postscript")

# install.packages('showtext', dependencies = TRUE)
library(showtext)

# Check the current search path for fonts
allfontpath <- font_paths()    

# List available font files in the search path
allfont <- font_files()    

# syntax: font_add(family = "<family_name>", regular = "/path/to/font/file")
font_add("Lato", "Lato-Regular.ttf")

font_families()
## automatically use showtext for new devices
showtext_auto() 
```

Then, install this package from Github:

```r
remotes::install_github('unhcr-web/unhcRstyle')
```

Once the package installed, you should be able to create directly your report with the right template within Rstudio:

![preview](https://i.imgur.com/81VJFo5.jpg)





This package requires a recent version of Pandoc (>= 2.2.3). If you use RStudio, you are recommended to install the [latest version](https://rstudio.com/products/rstudio/download/) (>= 1.2.1335), which has bundled Pandoc 2.x, otherwise you need to install Pandoc separately.


> This package is part of `unhcrverse`, a set of packages to ease the production of statistical evidence and data stories. You can install them all with the following:

```r
## Use UNHCR Open data  - https://unhcr.github.io/unhcrdatapackage/docs/
remotes::install_github('unhcr/unhcrdatapackage')

## API to connect to internal data source - https://unhcr-web.github.io/hcrdata/docs/
remotes::install_github('unhcr-web/hcrdata')

## Perform High Frequency Check https://unhcr.github.io/HighFrequencyChecks/docs/
remotes::install_github('unhcr/HighFrequencyChecks')

## Process data crunching for survey dataset - https://unhcr.github.io/koboloadeR/docs/
remotes::install_github('unhcr/koboloadeR')

## Use UNHCR graphical template- https://unhcr-web.github.io/unhcRstyle/docs/
remotes::install_github('unhcr-web/unhcRstyle')
```

#### Building package documentation 

`devtools::document()`

`devtools::check(document = FALSE)`

`pkgdown::build_site()`


If you encounter a clear bug, please file a minimal reproducible example on [github](https://github.com/unhcr-web/unhcRstyle/issues). 

### References / Inspiration

 * https://emilyriederer.netlify.app/post/rtistic/
 * https://emilyriederer.netlify.app/talk/rmarkdown-driven-development/
 * https://github.com/dr-harper/example-rmd-templates
 * https://hneth.github.io/unikn/
 * https://bbc.github.io/rcookbook/
 * https://bookdown.org/yihui/rmarkdown-cookbook/
 * https://www.shanelynn.ie/themes-and-colours-for-r-ggplots-with-ggthemr/
 
