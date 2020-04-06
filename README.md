
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
#> # A tibble: 425 x 13
#>   Date_extract `Country,Other` TotalCases NewCases TotalDeaths NewDeaths
#>   <date>       <chr>                <dbl>    <dbl>       <dbl>     <dbl>
#> 1 2020-04-06   World              1312286    39424       72596      3171
#> 2 2020-04-06   USA                 349885    13212       10327       711
#> 3 2020-04-06   Spain               135032     3386       13169       528
#> 4 2020-04-06   Italy               132547     3599       16523       636
#> 5 2020-04-06   Germany             101089      966        1612        28
#> 6 2020-04-06   France               92839        0        8078         0
#> 7 2020-04-06   Iran                 60500     2274        3739       136
#> # … with 418 more rows, and 7 more variables: TotalRecovered <dbl>,
#> #   ActiveCases <dbl>, `Serious,Critical` <dbl>, `Tot Cases/1M pop` <dbl>,
#> #   `Deaths/1M pop` <dbl>, TotalTests <dbl>, `Tests/1M pop` <dbl>
```

If you prefer to keep the value of `NA` instead of 0, enter the argument
`show.na = TRUE`

``` r
# Get data with NA
coronadata <- get_coronadata(show.na = TRUE)
coronadata
#> # A tibble: 425 x 13
#>   Date_extract `Country,Other` TotalCases NewCases TotalDeaths NewDeaths
#>   <date>       <chr>                <dbl>    <dbl>       <dbl>     <dbl>
#> 1 2020-04-06   World              1312286    39424       72596      3171
#> 2 2020-04-06   USA                 349885    13212       10327       711
#> 3 2020-04-06   Spain               135032     3386       13169       528
#> 4 2020-04-06   Italy               132547     3599       16523       636
#> 5 2020-04-06   Germany             101089      966        1612        28
#> 6 2020-04-06   France               92839       NA        8078        NA
#> 7 2020-04-06   Iran                 60500     2274        3739       136
#> # … with 418 more rows, and 7 more variables: TotalRecovered <dbl>,
#> #   ActiveCases <dbl>, `Serious,Critical` <dbl>, `Tot Cases/1M pop` <dbl>,
#> #   `Deaths/1M pop` <dbl>, TotalTests <dbl>, `Tests/1M pop` <dbl>
```
