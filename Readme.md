#### goji: Misc. Functions

Personal R package. Particularly useful for co-authors and for replication.  

#### Installation

To install:

```{r install}
# install.packages("devtools")
devtools::install_github("soodoku/goji")
```

#### Some Functions


**Strip Zeros Before Decimal**

To strip zeros before the decimal, use `nolead0s(x)`. Useful for axis labels etc.

```{r nolead0s}
x <- c(0.00,0.1); nolead0s(x)
```
Output: `[1] "0"  ".1"`

**Recode 0 to 1**

To recode a variable 0 to 1, use `zero1(x)`. 

```{r zero1}
x <- c(1,2,3); zero1(x, minx=1, maxx=3)
```
Output: `[1] 0.0 0.5 1.0`

```{r zero1_2}
x <- c(1,2,3); zero1(x, minx=1, maxx=4)
```

Output: `[1] 0.0000000 0.3333333 0.6666667`

**Generalized Variance**

```{r genvar}
x <- data.frame(cbind(seq(7,100,10), seq(11,20,1), seq(5,35,7))); genvar(x)
```

Output: `0.02263038`

**Convert NAs to 0s**

Application: treating missing on knowledge questions as ignorance

```{r entropy}
x <- c(NA, 1, 2); nona(x)
```

Output: ` 0 1 2`

#### License
Scripts are released under [GNU V3](http://www.gnu.org/licenses/gpl-3.0.en.html).