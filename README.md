
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
#> # A tibble: 405 x 12
#>   Date_extract `Country,Other` TotalCases NewCases TotalDeaths NewDeaths
#>   <date>       <chr>                <dbl>    <dbl>       <dbl>     <dbl>
#> 1 2020-03-30   USA                 159689    16198        2951       368
#> 2 2020-03-30   Italy               101739     4050       11591       812
#> 3 2020-03-30   Spain                85195     5085        7340       537
#> 4 2020-03-30   Germany              66125     3690         616        75
#> 5 2020-03-30   France               44550     4376        3024       418
#> # … with 400 more rows, and 6 more variables: TotalRecovered <dbl>,
#> #   ActiveCases <dbl>, `Serious,Critical` <dbl>, `Tot Cases/1M pop` <dbl>,
#> #   `Deaths/1M pop` <dbl>, `Reported1st case` <date>
```

If you prefer to keep the value of `NA` instead of 0, enter the argument
`show.na = TRUE`

``` r
# Get data with NA
coronadata <- get_coronadata(show.na = TRUE)
coronadata
#> # A tibble: 405 x 12
#>   Date_extract `Country,Other` TotalCases NewCases TotalDeaths NewDeaths
#>   <date>       <chr>                <dbl>    <dbl>       <dbl>     <dbl>
#> 1 2020-03-30   USA                 159689    16198        2951       368
#> 2 2020-03-30   Italy               101739     4050       11591       812
#> 3 2020-03-30   Spain                85195     5085        7340       537
#> 4 2020-03-30   Germany              66125     3690         616        75
#> 5 2020-03-30   France               44550     4376        3024       418
#> # … with 400 more rows, and 6 more variables: TotalRecovered <dbl>,
#> #   ActiveCases <dbl>, `Serious,Critical` <dbl>, `Tot Cases/1M pop` <dbl>,
#> #   `Deaths/1M pop` <dbl>, `Reported1st case` <date>
```
