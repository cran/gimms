% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/updateInventory.R
\name{updateInventory}
\alias{updateInventory}
\title{Update GIMMS NDVI3g File Inventory}
\usage{
updateInventory(server = c("ecocast", "nasanex"), version = 1L, quiet = FALSE)
}
\arguments{
\item{server}{\code{character}. Specifies the remote server to use. Currently
available options are \code{"ecocast"} (default) and \code{"nasanex"}.}

\item{version}{\code{integer} (or any other convertible class), defaults to
\code{1L}. Specifies desired GIMMS NDVI3g product version, see 'Details'.
Currently ignored if \code{server = "nasanex"}.}

\item{quiet}{\code{logical}, defaults to \code{FALSE}. If \code{TRUE},
console output is disabled.}
}
\value{
A \code{character} vector of online filepaths.
}
\description{
Download the latest version of the GIMMS NDVI3g file inventory from the NASA
Ames Ecological Forecasting Lab (ECOCAST) or NASA Earth Exchange (NEX) Amazon
AWS. If none of the specified endpoints is reachable (e.g., if there is no
active internet connection), the latest local version of the file inventory
is used.
}
\details{
GIMMS NDVI3g.v1 is currently available from ECOCAST until end 2015 and comes
in NetCDF (\code{.nc4}) format. In contrast, NDVI3g.v0 is available as ENVI
binary imagery and available from ECOCAST (NASANEX) until end 2013 (2012)
only.
}
\examples{
\dontrun{
updateInventory()            # NDVI3g.v1
updateInventory(version = 0) # NDVI3g.v0
}

## note that local versions of the online file inventories are also available
ofl_v1 <- system.file("extdata", "inventory_ecv1.rds", package = "gimms")
readRDS(ofl_v1)

ofl_v0 <- system.file("extdata", "inventory_ecv0.rds", package = "gimms")
readRDS(ofl_v0)

}
\seealso{
\code{\link{rearrangeFiles}}.
}
