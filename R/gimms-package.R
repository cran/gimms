#' Download and Process GIMMS NDVI3g Data
#'
#' This is a set of functions to retrieve information about GIMMS NDVI3g files 
#' currently available online; download (and re-arrange, in the case of 
#' NDVI3g.v0) the half-monthly data sets; import downloaded files from ENVI 
#' binary (NDVI3g.v0) or NetCDF format (NDVI3g.v1) directly into R based on the 
#' widespread \strong{raster} package; conduct quality control; and generate 
#' monthly composites (e.g., maximum values) from the half-monthly input data. 
#' As a special gimmick, a method is included to conveniently apply the 
#' Mann-Kendall trend test upon \code{Raster*} images, optionally featuring 
#' trend-free pre-whitening to account for lag-1 autocorrelation.
#'
#' @name gimms-package
#' @docType package
#' @title Download and Process GIMMS NDVI3g Data
#' @author Florian Detsch
#'
#' @import methods raster parallel
#' @importFrom ncdf4 nc_open ncvar_get
#' @importFrom Kendall MannKendall
#' @importFrom zyp zyp.trend.vector
#' @importFrom utils download.file
#' @importFrom curl curl curl_download new_handle
#'
#' @references
#' Pinzon, JE & Tucker, CJ (2014). A Non-Stationary 1981-2012 AVHRR
#' NDVI3g Time Series. Remote Sensing, 6(8), 6929-6960, \doi{10.3390/rs6086929}.
#'
#' The National Center for Atmospheric Research (2018). A Big Earth Data 
#' Platform for Three Poles. Global GIMMS NDVI3g v1 dataset (1981-2015). 
#' Available online at \url{http://poles.tpdc.ac.cn/en/data/9775f2b4-7370-4e5e-a537-3482c9a83d88/}
#' (accessed on 2021-04-15).
#'
#' @keywords package
#'
NULL
#'
#' @docType data
#' @name bale3g.v1
#' @title Bale Mountains NDVI3g.v1
#' @description Bale Mountains NDVI3g.v1.
#' @details This dataset contains NDVI3g.v1 observations for the Bale Mountains
#' National Park, southern Ethiopia (Jul 1981 to Dec 2015).
#' @format \code{raster::RasterStack}
NULL
#'
#' @docType data
#' @name kili3g.v0
#' @title Kilimanjaro NDVI3g.v0
#' @description Kilimanjaro NDVI3g.v0.
#' @details This dataset contains NDVI3g.v0 observations for the Kilimanjaro
#' region, northern Tanzania (Jul 1981 to Dec 2013).
#' @format \code{raster::RasterStack}
NULL
