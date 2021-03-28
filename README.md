
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
#> # A tibble: 708 x 19
#>   Date_extract `Country,Other` TotalCases NewCases TotalDeaths NewDeaths
#>   <date>       <chr>                <dbl>    <dbl>       <dbl>     <dbl>
#> 1 2021-03-27   North America     35575863        0      813979         0
#> 2 2021-03-27   South America     20733972        0      538297         0
#> 3 2021-03-27   Asia              27831954      490      423125         1
#> 4 2021-03-27   Europe            38857939        0      900276         0
#> 5 2021-03-27   Africa             4209223        0      111987         0
#> 6 2021-03-27   Oceania              55588        7        1121         0
#> 7 2021-03-27   World            127265260      497     2788800         1
#> # … with 701 more rows, and 13 more variables: TotalRecovered <dbl>,
#> #   NewRecovered <dbl>, ActiveCases <dbl>, Serious,Critical <dbl>,
#> #   Tot\U00a0Cases/1M pop <dbl>, Deaths/1M pop <dbl>, TotalTests <dbl>,
#> #   Tests/1M pop <dbl>, Population <dbl>, Continent <chr>,
#> #   1 Caseevery X ppl <dbl>, 1 Deathevery X ppl <dbl>, 1 Testevery X ppl <dbl>
```

If you prefer to keep the value of `NA` instead of 0, enter the argument
`show.na = TRUE`

``` r
# Get data with NA
coronadata <- get_coronadata(show.na = TRUE)
coronadata
#> # A tibble: 708 x 19
#>   Date_extract `Country,Other` TotalCases NewCases TotalDeaths NewDeaths
#>   <date>       <chr>                <dbl>    <dbl>       <dbl>     <dbl>
#> 1 2021-03-27   North America     35575863       NA      813979        NA
#> 2 2021-03-27   South America     20733972       NA      538297        NA
#> 3 2021-03-27   Asia              27831954      490      423125         1
#> 4 2021-03-27   Europe            38857939       NA      900276        NA
#> 5 2021-03-27   Africa             4209223       NA      111987        NA
#> 6 2021-03-27   Oceania              55588        7        1121        NA
#> 7 2021-03-27   World            127265260      497     2788800         1
#> # … with 701 more rows, and 13 more variables: TotalRecovered <dbl>,
#> #   NewRecovered <dbl>, ActiveCases <dbl>, Serious,Critical <dbl>,
#> #   Tot\U00a0Cases/1M pop <dbl>, Deaths/1M pop <dbl>, TotalTests <dbl>,
#> #   Tests/1M pop <dbl>, Population <dbl>, Continent <chr>,
#> #   1 Caseevery X ppl <dbl>, 1 Deathevery X ppl <dbl>, 1 Testevery X ppl <dbl>
```
