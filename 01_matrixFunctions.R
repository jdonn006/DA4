
######################################################
######################################################
## colmean:
##    For a numeric m x n matrix, calculates the column
##    means.
##
##  INPUTS: 
##    A : a numeric matrix of any dimensions m x n. 
##
##  OUTPUTS:
##    x : a numeric vector of length n.
##
if (exists("colmean")) rm(colmean)


colmean <- function(A) {
  if (!is.matrix(A)) {
    stop("Error type: must be a matrix.")
    } else if (!is.numeric(A)) {
      stop("Error type: object A must be a numeric matrix.")
    }


  
  x <- apply(A, 2, mean)
  return(x)
}
x_matrix <- matrix(1:9, nrow=3, ncol=3)
result <- colmean(x_matrix)
