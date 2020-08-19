
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
#> # A tibble: 690 x 19
#>   Date_extract `Country,Other` TotalCases NewCases TotalDeaths NewDeaths
#>   <date>       <chr>                <dbl>    <dbl>       <dbl>     <dbl>
#> 1 2020-08-19   North America      6692153    26470      251372      1442
#> 2 2020-08-19   South America      5420711    11000      180089       341
#> 3 2020-08-19   Asia               5926148    94812      124897      1615
#> 4 2020-08-19   Europe             3245553    22351      204140       417
#> 5 2020-08-19   Africa             1145650     4875       26477       120
#> 6 2020-08-19   Oceania              26251      226         476        12
#> 7 2020-08-19   World             22457187   159734      787466      3947
#> # … with 683 more rows, and 13 more variables: TotalRecovered <dbl>,
#> #   NewRecovered <dbl>, ActiveCases <dbl>, `Serious,Critical` <dbl>,
#> #   `Tot Cases/1M pop` <dbl>, `Deaths/1M pop` <dbl>, TotalTests <dbl>,
#> #   `Tests/1M pop` <dbl>, Population <dbl>, Continent <chr>, `1 Caseevery X
#> #   ppl` <dbl>, `1 Deathevery X ppl` <dbl>, `1 Testevery X ppl` <dbl>
```

If you prefer to keep the value of `NA` instead of 0, enter the argument
`show.na = TRUE`

``` r
# Get data with NA
coronadata <- get_coronadata(show.na = TRUE)
coronadata
#> # A tibble: 690 x 19
#>   Date_extract `Country,Other` TotalCases NewCases TotalDeaths NewDeaths
#>   <date>       <chr>                <dbl>    <dbl>       <dbl>     <dbl>
#> 1 2020-08-19   North America      6692153    26470      251372      1442
#> 2 2020-08-19   South America      5420711    11000      180089       341
#> 3 2020-08-19   Asia               5926148    94812      124897      1615
#> 4 2020-08-19   Europe             3245553    22351      204140       417
#> 5 2020-08-19   Africa             1145650     4875       26477       120
#> 6 2020-08-19   Oceania              26251      226         476        12
#> 7 2020-08-19   World             22457187   159734      787466      3947
#> # … with 683 more rows, and 13 more variables: TotalRecovered <dbl>,
#> #   NewRecovered <dbl>, ActiveCases <dbl>, `Serious,Critical` <dbl>,
#> #   `Tot Cases/1M pop` <dbl>, `Deaths/1M pop` <dbl>, TotalTests <dbl>,
#> #   `Tests/1M pop` <dbl>, Population <dbl>, Continent <chr>, `1 Caseevery X
#> #   ppl` <dbl>, `1 Deathevery X ppl` <dbl>, `1 Testevery X ppl` <dbl>
```
