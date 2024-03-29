% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gimms-package.R
\docType{package}
\name{gimms-package}
\alias{gimms-package}
\title{Download and Process GIMMS NDVI3g Data}
\description{
Download and Process GIMMS NDVI3g Data
}
\details{
This is a set of functions to retrieve information about GIMMS NDVI3g files
currently available online; download (and re-arrange, in the case of
NDVI3g.v0) the half-monthly data sets; import downloaded files from ENVI
binary (NDVI3g.v0) or NetCDF format (NDVI3g.v1) directly into R based on the
widespread \strong{raster} package; conduct quality control; and generate
monthly composites (e.g., maximum values) from the half-monthly input data.
As a special gimmick, a method is included to conveniently apply the
Mann-Kendall trend test upon \code{Raster*} images, optionally featuring
trend-free pre-whitening to account for lag-1 autocorrelation.
}
\references{
Pinzon, JE & Tucker, CJ (2014). A Non-Stationary 1981-2012 AVHRR
NDVI3g Time Series. Remote Sensing, 6(8), 6929-6960, \doi{10.3390/rs6086929}.

The National Center for Atmospheric Research (2018). A Big Earth Data
Platform for Three Poles. Global GIMMS NDVI3g v1 dataset (1981-2015).
Available online at \url{http://poles.tpdc.ac.cn/en/data/9775f2b4-7370-4e5e-a537-3482c9a83d88/}
(accessed on 2021-04-15).
}
\author{
Florian Detsch
}
\keyword{package}
