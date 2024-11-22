## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(GWlasso)

## ----Amesbury-----------------------------------------------------------------

data(Amesbury)

## ----getbw, eval = FALSE, include = TRUE--------------------------------------
#  
#  # compute the distance matrix
#  distance_matrix <- compute_distance_matrix(Amesbury$coords, add.noise = TRUE)
#  
#  # run the bw selection algorithm
#  bw_choice <- gwl_bw_estimation(x.var = Amesbury$spe.df,
#                        y.var = Amesbury$WTD,
#                        dist.mat = distance_matrix,
#                        adaptive = TRUE,
#                        adptbwd.thresh = 0.1,
#                        kernel = "bisquare",
#                        alpha = 1,
#                        progress = TRUE,
#                        n = 100)
#  

## ----fitgwl, eval = FALSE, include = TRUE-------------------------------------
#  
#  # compute the distance matrix
#  distance_matrix <- compute_distance_matrix(Amesbury$coords, add.noise = TRUE)
#  
#  my.gwl.fit <- gwl_fit(bw= 120,
#                       x.var = Amesbury$spe.df,
#                        y.var = Amesbury$WTD,
#                        dist.mat = distance_matrix,
#                        adaptive = TRUE,
#                        kernel = "bisquare",
#                        alpha = 1,
#                        progress = TRUE)
#  
#  plot(my.gwl.fit)

## ----pred, include = TRUE, eval=FALSE-----------------------------------------
#  
#  my_predicted_values <- predict(my.gwl.fit, newdata = Amesbury$spe.df, newcoords = Amesbury$coords)
#  
#  plot( my_predicted_values ~Amesbury$WTD)
#  abline(0,1, col="red")

