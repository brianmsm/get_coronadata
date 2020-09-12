
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
#>   <date>       <chr>           <chr>      <chr>    <chr>       <chr>    
#> 1 2020-09-11   North America   7891895    56674    287379      1701     
#> 2 2020-09-11   Asia            8356190    127894   160765      1698     
#> 3 2020-09-11   South America   7002336    67503    225561      1589     
#> 4 2020-09-11   Europe          4013145    41055    211968      407      
#> 5 2020-09-11   Africa          1345193    8786     32410       232      
#> 6 2020-09-11   Oceania         29877      150      830         11       
#> 7 2020-09-11   World           28639357   302062   918928      5638     
#> # … with 683 more rows, and 13 more variables: TotalRecovered <chr>,
#> #   NewRecovered <chr>, ActiveCases <chr>, `Serious,Critical` <chr>,
#> #   `Tot Cases/1M pop` <chr>, `Deaths/1M pop` <chr>, TotalTests <chr>,
#> #   `Tests/1M pop` <chr>, Population <chr>, Continent <chr>, `1 Caseevery X
#> #   ppl` <chr>, `1 Deathevery X ppl` <chr>, `1 Testevery X ppl` <chr>
```

If you prefer to keep the value of `NA` instead of 0, enter the argument
`show.na = TRUE`

``` r
# Get data with NA
coronadata <- get_coronadata(show.na = TRUE)
coronadata
#> # A tibble: 690 x 19
#>   Date_extract `Country,Other` TotalCases NewCases TotalDeaths NewDeaths
#>   <date>       <chr>           <chr>      <chr>    <chr>       <chr>    
#> 1 2020-09-11   North America   7891895    56674    287379      1701     
#> 2 2020-09-11   Asia            8356190    127894   160765      1698     
#> 3 2020-09-11   South America   7002336    67503    225561      1589     
#> 4 2020-09-11   Europe          4013145    41055    211968      407      
#> 5 2020-09-11   Africa          1345193    8786     32410       232      
#> 6 2020-09-11   Oceania         29877      150      830         11       
#> 7 2020-09-11   World           28639357   302062   918928      5638     
#> # … with 683 more rows, and 13 more variables: TotalRecovered <chr>,
#> #   NewRecovered <chr>, ActiveCases <chr>, `Serious,Critical` <chr>,
#> #   `Tot Cases/1M pop` <chr>, `Deaths/1M pop` <chr>, TotalTests <chr>,
#> #   `Tests/1M pop` <chr>, Population <chr>, Continent <chr>, `1 Caseevery X
#> #   ppl` <chr>, `1 Deathevery X ppl` <chr>, `1 Testevery X ppl` <chr>
```
