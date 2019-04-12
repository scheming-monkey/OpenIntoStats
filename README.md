
# openintro <a href="https://www.openintro.org/"><img src="man/figures/openintro-hex.jpg" align="right" height="139" /></a>

<!-- badges: start -->

[![CRAN
status](https://www.r-pkg.org/badges/version/openintro)](https://cran.r-project.org/package=openintro)
<!-- badges: end -->

Supplemental functions and data for ‘OpenIntro’ resources, which
includes open-source textbooks and resources for introductory statistics
at [openintro.org](https://www.openintro.org/). The package contains
data sets used in our open-source textbooks along with custom plotting
functions for reproducing book figures. Note that many functions and
examples include color transparency; some plotting elements may not show
up properly (or at all) when run in some versions of Windows operating
system.

## Installation

You can install the released version of openintro from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("openintro")
```

You can install the development version of openintro from GitHub with:

``` r
# install.packages("devtools")
library(devtools)
install_github("OpenIntroStat/openintro-r-package")
```

This package was produced as part of the OpenIntro project. For the
accompanying textbook, visit openintro.org. A PDF of the textbook is
free and paperbacks can be purchased online (royalty-free).

## Example

This is a basic example for using one of the package functions,
`treeDiag()`.

``` r
library(openintro)
#> Please visit openintro.org for free statistics materials
#> 
#> Attaching package: 'openintro'
#> The following object is masked from 'package:datasets':
#> 
#>     cars
treeDiag(c("Flight on time?","Luggage on time?"),
         c(0.8, 0.2), list(c(0.97, 0.03), c(0.15, 0.85)))
```

<img src="man/figures/README-treeDiag-1.png" width="80%" />

## Code of Conduct

Please note that the ‘openintro’ project is released with a [Contributor
Code of Conduct](CODE_OF_CONDUCT.md). By contributing to this project,
you agree to abide by its terms.
