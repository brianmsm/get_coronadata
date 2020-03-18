
## Get coronavirus data

This is a simple function to get the structured data from this
**webpage**: <https://www.worldometers.info/coronavirus/#countries>.

## Usage

The use of this function is simple. It is only necessary to obtain it
and execute it assigning it to an object.

``` r
# Get function
source("https://raw.githubusercontent.com/brianmsm/get_coronadata/master/get_coronadata.R")

# Get data
coronadata <- get_coronadata()
#> Warning: NAs introducidos por coerción
coronadata
#> # A tibble: 172 x 9
#>   `Country,Other` TotalCases NewCases TotalDeaths NewDeaths TotalRecovered
#>   <chr>                <dbl>    <dbl>       <dbl>     <dbl>          <dbl>
#> 1 China                80894       13        3237        11          69614
#> 2 Italy                35713     4207        2978       475           4025
#> 3 Iran                 17361     1192        1135       147           5710
#> 4 Spain                13910     2084         623        90           1081
#> 5 Germany              11973     2606          28         2             86
#> # … with 167 more rows, and 3 more variables: ActiveCases <dbl>,
#> #   `Serious,Critical` <dbl>, `Tot Cases/1M pop` <dbl>
```
