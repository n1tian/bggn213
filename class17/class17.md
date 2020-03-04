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
virus[inds8,]
```

    ##                                   Province.State Country.Region     Lat
    ## 18                               King County, WA             US 47.6062
    ## 70                               Cook County, IL             US 41.7377
    ## 160                              Los Angeles, CA             US 34.0522
    ## 164                                   Orange, CA             US 33.7879
    ## 171                                    Tempe, AZ             US 33.4255
    ## 380                              Cook County, IL             US 41.7377
    ## 400                              Santa Clara, CA             US 37.3541
    ## 436                                   Boston, MA             US 42.3601
    ## 569                               San Benito, CA             US 36.5761
    ## 570                              Santa Clara, CA             US 37.3541
    ## 685                                  Madison, WI             US 43.0731
    ## 978                              Cook County, IL             US 41.7377
    ## 992                              King County, WA             US 47.6062
    ## 1091                        San Diego County, CA             US 32.7157
    ## 1244                             San Antonio, TX             US 29.4241
    ## 1245                        San Diego County, CA             US 32.7157
    ## 1794                         Humboldt County, CA             US 40.7450
    ## 1796        Lackland, TX (From Diamond Princess)             US 29.3829
    ## 1797           Omaha, NE (From Diamond Princess)             US 41.2545
    ## 1798                       Sacramento County, CA             US 38.4747
    ## 1803          Travis, CA (From Diamond Princess)             US 38.2721
    ## 1836                        San Diego County, CA             US 32.7157
    ## 1837                             Santa Clara, CA             US 37.3541
    ## 1976        Lackland, TX (From Diamond Princess)             US 29.3829
    ## 1977           Omaha, NE (From Diamond Princess)             US 41.2545
    ## 1983          Travis, CA (From Diamond Princess)             US 38.2721
    ## 1984 Unassigned Location (From Diamond Princess)             US 35.4437
    ## 2084                                   Tempe, AZ             US 33.4255
    ## 2120 Unassigned Location (From Diamond Princess)             US 35.4437
    ## 2191                       Sacramento County, CA             US 38.4747
    ## 2268 Unassigned Location (From Diamond Princess)             US 35.4437
    ## 2282                                  Boston, MA             US 42.3601
    ## 2347                             King County, WA             US 47.6062
    ## 2350                             Santa Clara, CA             US 37.3541
    ## 2351                        Snohomish County, WA             US 48.0330
    ## 2356                       Washington County, OR             US 45.5470
    ## 2365                             King County, WA             US 47.6062
    ## 2436                             Cook County, IL             US 41.7377
    ## 2439                             King County, WA             US 47.6062
    ## 2442                              Providence, RI             US 41.8240
    ## 2444                        Snohomish County, WA             US 48.0330
    ## 2519                             Cook County, IL             US 41.7377
    ## 2520                          Grafton County, NH             US 43.9088
    ## 2522                            Hillsborough, FL             US 27.9904
    ## 2525                             King County, WA             US 47.6062
    ## 2526                           New York City, NY             US 40.7128
    ## 2528                           Placer County, CA             US 39.0916
    ## 2529                              Providence, RI             US 41.8240
    ## 2530                               San Mateo, CA             US 37.5630
    ## 2531                             Santa Clara, CA             US 37.3541
    ## 2532                                Sarasota, FL             US 27.3364
    ## 2533                        Snohomish County, WA             US 48.0330
    ## 2534                           Sonoma County, CA             US 38.5780
    ## 2538                                Umatilla, OR             US 45.7750
    ## 2539 Unassigned Location (From Diamond Princess)             US 35.4437
    ## 2541                       Washington County, OR             US 45.5470
    ## 2548                             King County, WA             US 47.6062
    ## 2549                        Snohomish County, WA             US 48.0330
    ## 2617                          Norfolk County, MA             US 42.1767
    ## 2618                                Berkeley, CA             US 37.8715
    ## 2621                           Fulton County, GA             US 33.8034
    ## 2622                          Grafton County, NH             US 43.9088
    ## 2623                            Hillsborough, FL             US 27.9904
    ## 2625                             King County, WA             US 47.6062
    ## 2627                         Maricopa County, AZ             US 33.2918
    ## 2630                               San Mateo, CA             US 37.5630
    ## 2631                             Santa Clara, CA             US 37.3541
    ## 2633                        Snohomish County, WA             US 48.0330
    ## 2636                             Wake County, NC             US 35.8032
    ## 2637                      Westchester County, NY             US 41.1220
    ## 2646                             King County, WA             US 47.6062
    ## 2672                                 Madison, WI             US 43.0731
    ##           Long       date cases      type
    ## 18   -122.3321 2020-01-22     1 confirmed
    ## 70    -87.6976 2020-01-24     1 confirmed
    ## 160  -118.2437 2020-01-26     1 confirmed
    ## 164  -117.8531 2020-01-26     1 confirmed
    ## 171  -111.9400 2020-01-26     1 confirmed
    ## 380   -87.6976 2020-01-31     1 confirmed
    ## 400  -121.9552 2020-01-31     1 confirmed
    ## 436   -71.0589 2020-02-01     1 confirmed
    ## 569  -120.9876 2020-02-03     2 confirmed
    ## 570  -121.9552 2020-02-03     1 confirmed
    ## 685   -89.4012 2020-02-05     1 confirmed
    ## 978   -87.6976 2020-02-09     2 recovered
    ## 992  -122.3321 2020-02-09     1 recovered
    ## 1091 -117.1611 2020-02-11     1 confirmed
    ## 1244  -98.4936 2020-02-13     1 confirmed
    ## 1245 -117.1611 2020-02-13     1 confirmed
    ## 1794 -123.8695 2020-02-21     1 confirmed
    ## 1796  -98.6134 2020-02-21     2 confirmed
    ## 1797  -95.9758 2020-02-21    11 confirmed
    ## 1798 -121.3542 2020-02-21     1 confirmed
    ## 1803 -121.9399 2020-02-21     5 confirmed
    ## 1836 -117.1611 2020-02-21     1 recovered
    ## 1837 -121.9552 2020-02-21     1 recovered
    ## 1976  -98.6134 2020-02-24    -2 confirmed
    ## 1977  -95.9758 2020-02-24   -11 confirmed
    ## 1983 -121.9399 2020-02-24    -5 confirmed
    ## 1984  139.6380 2020-02-24    36 confirmed
    ## 2084 -111.9400 2020-02-25     1 recovered
    ## 2120  139.6380 2020-02-26     6 confirmed
    ## 2191 -121.3542 2020-02-27     1 confirmed
    ## 2268  139.6380 2020-02-28     2 confirmed
    ## 2282  -71.0589 2020-02-28     1 recovered
    ## 2347 -122.3321 2020-02-29     5 confirmed
    ## 2350 -121.9552 2020-02-29     1 confirmed
    ## 2351 -121.8339 2020-02-29     1 confirmed
    ## 2356 -123.1386 2020-02-29     1 confirmed
    ## 2365 -122.3321 2020-02-29     1     death
    ## 2436  -87.6976 2020-03-01     1 confirmed
    ## 2439 -122.3321 2020-03-01     3 confirmed
    ## 2442  -71.4128 2020-03-01     1 confirmed
    ## 2444 -121.8339 2020-03-01     1 confirmed
    ## 2519  -87.6976 2020-03-02     1 confirmed
    ## 2520  -71.8260 2020-03-02     1 confirmed
    ## 2522  -82.3018 2020-03-02     1 confirmed
    ## 2525 -122.3321 2020-03-02     5 confirmed
    ## 2526  -74.0060 2020-03-02     1 confirmed
    ## 2528 -120.8039 2020-03-02     1 confirmed
    ## 2529  -71.4128 2020-03-02     1 confirmed
    ## 2530 -122.3255 2020-03-02     1 confirmed
    ## 2531 -121.9552 2020-03-02     6 confirmed
    ## 2532  -82.5307 2020-03-02     1 confirmed
    ## 2533 -121.8339 2020-03-02     2 confirmed
    ## 2534 -122.9888 2020-03-02     1 confirmed
    ## 2538 -118.7606 2020-03-02     1 confirmed
    ## 2539  139.6380 2020-03-02     1 confirmed
    ## 2541 -123.1386 2020-03-02     1 confirmed
    ## 2548 -122.3321 2020-03-02     4     death
    ## 2549 -121.8339 2020-03-02     1     death
    ## 2617  -71.1449 2020-03-03     1 confirmed
    ## 2618 -122.2730 2020-03-03     1 confirmed
    ## 2621  -84.3963 2020-03-03     2 confirmed
    ## 2622  -71.8260 2020-03-03     1 confirmed
    ## 2623  -82.3018 2020-03-03     1 confirmed
    ## 2625 -122.3321 2020-03-03     7 confirmed
    ## 2627 -112.4291 2020-03-03     1 confirmed
    ## 2630 -122.3255 2020-03-03     1 confirmed
    ## 2631 -121.9552 2020-03-03     2 confirmed
    ## 2633 -121.8339 2020-03-03     2 confirmed
    ## 2636  -78.5661 2020-03-03     1 confirmed
    ## 2637  -73.7949 2020-03-03     1 confirmed
    ## 2646 -122.3321 2020-03-03     1     death
    ## 2672  -89.4012 2020-03-03     1 recovered

``` r
total_cases_US <- sum(virus[inds8, "cases"])
inds9 <- virus$Country.Region == "US" & virus$type == "death"
virus[inds9,]
```

    ##            Province.State Country.Region     Lat      Long       date cases
    ## 2365      King County, WA             US 47.6062 -122.3321 2020-02-29     1
    ## 2548      King County, WA             US 47.6062 -122.3321 2020-03-02     4
    ## 2549 Snohomish County, WA             US 48.0330 -121.8339 2020-03-02     1
    ## 2646      King County, WA             US 47.6062 -122.3321 2020-03-03     1
    ##       type
    ## 2365 death
    ## 2548 death
    ## 2549 death
    ## 2646 death

``` r
death_cases_US <- sum(virus[inds9, "cases"])
round(death_cases_US/total_cases_US*100, 2)
```

    ## [1] 5.11
