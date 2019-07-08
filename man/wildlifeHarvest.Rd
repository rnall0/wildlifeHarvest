\name{wildlifeHarvest}
\alias{wildlifeHarvest}
\title{
Alabama County Wildlife Harvest Statistics
}
\description{
Obtain data from wildlife harvest statistics collected by Alabama Department of Conservation and Natural Resources
}
\usage{
turkey.harvest(county, year)
deer.harvest(county, year)
}

\arguments{
  \item{county}{
  Query a specific county within the dataset.
}
  \item{year}{
  Query a specific year within the dataset.
}
}

\references{
https://game.dcnr.alabama.gov/
}

\examples{
turkey.harvest()
turkey.harvest(county = "Lauderdale")
turkey.harvest(year = "2017")
turkey.harvest(county = "Lauderdale", year = "2017")

deer.harvest()
deer.harvest(county = "Lauderdale")
deer.harvest(year = "2017")
deer.harvest(county = "Lauderdale", year = "2017")

}

