
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
#> # A tibble: 460 x 15
#>   Date_extract `Country,Other` TotalCases NewCases TotalDeaths NewDeaths
#>   <date>       <chr>                <dbl>    <dbl>       <dbl>     <dbl>
#> 1 2020-05-25   North America      1898388    21039      114953       784
#> 2 2020-05-25   South America       644127    12287       32010       538
#> 3 2020-05-25   Europe             1916142    14765      168515       588
#> 4 2020-05-25   Asia                982369    21951       27791       336
#> 5 2020-05-25   Africa              117200     3544        3485       129
#> 6 2020-05-25   Oceania               8726        4         123         0
#> 7 2020-05-25   World              5567673    73590      346892      2375
#> # … with 453 more rows, and 9 more variables: TotalRecovered <dbl>,
#> #   ActiveCases <dbl>, `Serious,Critical` <dbl>, `Tot Cases/1M pop` <dbl>,
#> #   `Deaths/1M pop` <dbl>, TotalTests <dbl>, `Tests/1M pop` <dbl>,
#> #   Population <dbl>, Continent <chr>
```

If you prefer to keep the value of `NA` instead of 0, enter the argument
`show.na = TRUE`

``` r
# Get data with NA
coronadata <- get_coronadata(show.na = TRUE)
coronadata
#> # A tibble: 460 x 15
#>   Date_extract `Country,Other` TotalCases NewCases TotalDeaths NewDeaths
#>   <date>       <chr>                <dbl>    <dbl>       <dbl>     <dbl>
#> 1 2020-05-25   North America      1898388    21039      114953       784
#> 2 2020-05-25   South America       644127    12287       32010       538
#> 3 2020-05-25   Europe             1916142    14765      168515       588
#> 4 2020-05-25   Asia                982369    21951       27791       336
#> 5 2020-05-25   Africa              117200     3544        3485       129
#> 6 2020-05-25   Oceania               8726        4         123        NA
#> 7 2020-05-25   World              5567673    73590      346892      2375
#> # … with 453 more rows, and 9 more variables: TotalRecovered <dbl>,
#> #   ActiveCases <dbl>, `Serious,Critical` <dbl>, `Tot Cases/1M pop` <dbl>,
#> #   `Deaths/1M pop` <dbl>, TotalTests <dbl>, `Tests/1M pop` <dbl>,
#> #   Population <dbl>, Continent <chr>
```
