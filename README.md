#### goji: Misc. Functions

[![Build Status](https://travis-ci.org/soodoku/goji.svg?branch=master)](https://travis-ci.org/soodoku/goji)
[![Build status](https://ci.appveyor.com/api/projects/status/vtycrn3k2qfyjaay?svg=true)](https://ci.appveyor.com/project/soodoku/goji)

Personal R package. Particularly useful for co-authors and for replication.  

#### Installation

To install latest development version from GitHub:

```r
# install.packages("devtools")
devtools::install_github("soodoku/goji")
```

#### Some Functions

**Strip Zeros Before Decimal**

To strip zeros before the decimal, use `nolead0s(x)`. Useful for axis labels etc.

```r
x <- c(0.00, 0.1); nolead0s(x)
```
Output: `[1] "0"  ".1"`

**Recode 0 to 1**

To recode a variable 0 to 1, use `zero1(x)`. 

```r
x <- c(1, 2, 3); zero1(x, minx = 1, maxx = 3)
```
Output: `[1] 0.0 0.5 1.0`

```r
x <- c(1, 2, 3); zero1(x, minx = 1, maxx = 4)
```

Output: `[1] 0.0000000 0.3333333 0.6666667`

**Generalized Variance**

```r
x <- data.frame(cbind(seq(7, 100, 10), seq(11, 20, 1), seq(5, 35, 7))); genvar(x)
```

Output: `0.02263038`

**Convert NAs to 0s**

Application: treating missing on knowledge questions as ignorance

```r
x <- c(NA, 1, 2); nona(x)
```

Output: ` 0 1 2`

**Clean**

Lower case, remove punctuation and space(s)

```r
x <- c("John, doe ", "first last  "); clean(x)
```

Output: `[1] "johndoe"   "firstlast"`

#### License
Scripts are released under [GNU V3](http://www.gnu.org/licenses/gpl-3.0.en.html).
