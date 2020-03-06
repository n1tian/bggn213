class17.Rmd
================
Nuo Tian
3/4/2020

``` r
url <- "https://tinyurl.com/COVID-2019"
virus <- read.csv(url)

tail(virus)
```

    ##      Province.State Country.Region     Lat     Long       date cases      type
    ## 2675         Shanxi Mainland China 37.5777 112.2922 2020-03-03     5 recovered
    ## 2676        Sichuan Mainland China 30.6171 102.7103 2020-03-03     8 recovered
    ## 2677        Tianjin Mainland China 39.3054 117.3230 2020-03-03    13 recovered
    ## 2678       Xinjiang Mainland China 41.1129  85.2401 2020-03-03     2 recovered
    ## 2679         Yunnan Mainland China 24.9740 101.4870 2020-03-03     1 recovered
    ## 2680       Zhejiang Mainland China 29.1832 120.0934 2020-03-03    24 recovered

Q1. How many total infected cases are there around the world?

``` r
total_cases <- sum(virus$cases)
total_cases
```

    ## [1] 144233

Q2. How many deaths linked to infected cases have there been?

``` r
inds <- virus$type == "death"
death_cases <- sum(virus[inds, "cases"])
death_cases
```

    ## [1] 3160

Q3. What is the overall death rate?

``` r
round(death_cases/total_cases*100, 2)
```

    ## [1] 2.19

Q4. What is the death rate in “Mainland China”?

``` r
inds2 <- virus$Country.Region == "Mainland China"
total_cases_MC <- sum(virus[inds2, "cases"])
inds3 <- virus$Country.Region == "Mainland China" & virus$type == "death"
death_cases_MC <- sum(virus[inds3, "cases"])
round(death_cases_MC/total_cases_MC*100, 2)
```

    ## [1] 2.26

Q5. What is the death rate in Italy, Iran and the US?

\#death rate in Italy

``` r
inds4 <- virus$Country.Region == "Italy"
total_cases_It <- sum(virus[inds4, "cases"])
inds5 <- virus$Country.Region == "Italy" & virus$type == "death"
death_cases_It <- sum(virus[inds5, "cases"])
round(death_cases_It/total_cases_It*100, 2)
```

    ## [1] 2.88

\#death rate in Iran

``` r
inds6 <- virus$Country.Region == "Iran"
total_cases_Ir <- sum(virus[inds6, "cases"])
inds7 <- virus$Country.Region == "Iran" & virus$type == "death"
death_cases_Ir <- sum(virus[inds7, "cases"])
round(death_cases_Ir/total_cases_Ir*100, 2)
```

    ## [1] 2.85

\#death rate in the US

``` r
inds8 <- virus$Country.Region == "US"
total_cases_US <- sum(virus[inds8, "cases"])
inds9 <- virus$Country.Region == "US" & virus$type == "death"
death_cases_US <- sum(virus[inds9, "cases"])
round(death_cases_US/total_cases_US*100, 2)
```

    ## [1] 5.11
