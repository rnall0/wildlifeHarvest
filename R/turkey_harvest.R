#' Obtain data from wildlife harvest statistics collected by Alabama Department of Conservation and Natural Resources
#' @param county Query a specific county within the dataset.
#' @param year Query a specific year within the dataset.
#' @return A data frame of Alabama DCNR data from specific species.
#' @examples \dontrun{
#' turkey.harvest()
#' turkey.harvest(county = "Lauderdale")
#' turkey.harvest(year = "2017")
#' turkey.harvest(county = "Lauderdale", year = "2017")
#' }
#'
#' @export

turkey.harvest<-function(county, year){
  if(!missing(county) && !missing(year)){
    load(file = "data/Turkey.rda")
    turkeys.sub<-subset(data, County == county & Year == year)
    return(turkeys.sub)
  }else if(!missing(county) && missing(year)){
    load(file = "data/Turkey.rda")
    turkeys.sub<-subset(data, County == county)
    return(turkeys.sub)
  }else if(missing(county) && !missing(year)){
    load(file = "data/Turkey.rda")
    turkeys.sub<-subset(data, Year == year)
    return(turkeys.sub)
  }else if(missing(county) && !missing(year)){
    load(file = "data/Turkey.rda")
    turkeys.sub<-subset(data, Year == year)
    return(turkeys.sub)
  }else if(missing(county) && missing(year)){
    load(file = "data/Turkey.rda")
    return(data)
  }
}


