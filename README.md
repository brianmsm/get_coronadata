
## Get coronavirus data

This is a simple function to get the structured data from this
**webpage**: <https://www.worldometers.info/coronavirus/#countries>.

## Usage

The use of this function is simple. It is only necessary to obtain it
and execute it assigning it to an object.

``` r
# Get function
source("https://raw.githubusercontent.com/brianmsm/get_coronadata/master/get_coronadata.R")

# Get data without NA
coronadata <- get_coronadata()
coronadata
#> # A tibble: 202 x 11
#>   `Country,Other` TotalCases NewCases TotalDeaths NewDeaths TotalRecovered
#>   <chr>                <dbl>    <dbl>       <dbl>     <dbl>          <dbl>
#> 1 USA                 155969    12478        2854       271           5211
#> 2 Italy               101739     4050       11591       812          14620
#> 3 Spain                85195     5085        7340       537          16780
#> 4 Germany              63929     1494         560        19           9211
#> 5 France               44550     4376        3024       418           7927
#> # … with 197 more rows, and 5 more variables: ActiveCases <dbl>,
#> #   `Serious,Critical` <dbl>, `Tot Cases/1M pop` <dbl>, `Deaths/1M pop` <dbl>,
#> #   `Reported1st case` <dbl>
```

If you prefer to keep the value of `NA` instead of 0, enter the argument
`show.na = TRUE`

``` r
# Get data with NA
coronadata <- get_coronadata(show.na = TRUE)
coronadata
#> # A tibble: 202 x 11
#>   `Country,Other` TotalCases NewCases TotalDeaths NewDeaths TotalRecovered
#>   <chr>                <dbl>    <dbl>       <dbl>     <dbl>          <dbl>
#> 1 USA                 155969    12478        2854       271           5211
#> 2 Italy               101739     4050       11591       812          14620
#> 3 Spain                85195     5085        7340       537          16780
#> 4 Germany              63929     1494         560        19           9211
#> 5 France               44550     4376        3024       418           7927
#> # … with 197 more rows, and 5 more variables: ActiveCases <dbl>,
#> #   `Serious,Critical` <dbl>, `Tot Cases/1M pop` <dbl>, `Deaths/1M pop` <dbl>,
#> #   `Reported1st case` <dbl>
```
