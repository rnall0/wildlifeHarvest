#' Obtain data from wildlife harvest statistics collected by Alabama Department of Conservation and Natural Resources
#' @param county Query a specific county within the dataset.
#' @param year Query a specific year within the dataset.
#' @return A data frame of Alabama DCNR data from specific species.
#' @examples \dontrun{
#' deer.harvest()
#' deer.harvest(county = "Lauderdale")
#' deer.harvest(year = "2017")
#' deer.harvest(county = "Lauderdale", year = "2017")
#' }
#'
#' @export

deer.harvest<-function(county, year){
  if(!missing(county) && !missing(year)){
    load(file = "data/Deer.rda")
    deers.sub<-subset(data, County == county & Year == year)
    return(deers.sub)
  }else if(!missing(county) && missing(year)){
    load(file = "data/Deer.rda")
    deers.sub<-subset(data, County == county)
    return(deers.sub)
  }else if(missing(county) && !missing(year)){
    load(file = "data/Deer.rda")
    deers.sub<-subset(data, Year == year)
    return(deers.sub)
  }else if(missing(county) && !missing(year)){
    load(file = "data/Deer.rda")
    deers.sub<-subset(data, Year == year)
    return(deers.sub)
  }else if(missing(county) && missing(year)){
    load(file = "data/Deer.rda")
    return(data)
  }
}
