wildlifeHarvest
====

wildlifeHarvest is an R package to obtain data from wildlife harvest statistics collected by Alabama Department of Conservation and Natural Resources. The data are natively distributed via the R package but can also be retrieved from the [ADCNR Game Harvest website](https://game.dcnr.alabama.gov/).

## Installation

The package can be installed with:

```
devtools::install_github("rnall0/wildlifeHarvest")
```

The package can be loaded in the R session with:

```
library(wildlifeHarvest)
```


## Using wildlifeHarvest

This package is comprised of two functions: `turkey.harvest` and `deer.harvest`. Each retrieves data related to their respective species.

## Examples

```
turkey.harvest()
turkey.harvest(county = "Lauderdale")
turkey.harvest(year = "2017")
turkey.harvest(county = "Lauderdale", year = "2017")
```

```
deer.harvest()
deer.harvest(county = "Lauderdale")
deer.harvest(year = "2017")
deer.harvest(county = "Lauderdale", year = "2017")
```

## References
Please refer to [https://game.dcnr.alabama.gov/](https://game.dcnr.alabama.gov/)
