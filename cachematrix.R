## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}


makeCacheMatrix <- function(x=matrix())
{
  n <- NULL
  
  set <- function(y)
  {
    x <<- y
    n <<- NULL
  }
  
  get <- function()
  {
    x
  }
  
  setMat <- function(solve1)
  {
    n <<-solve1
  }
  
  getMat <- function()
  {
    n
  }
  
  list(set = set, get = get, setMat = setMat , getMat = getMat)
}

cacheSolve <- function(y = matrix(), ...)
{
  x<-as.data.frame(t(y))
  n <- x$getMat()
  if(!is.null(n))
  {
    message("Cache data being fetched")
    return(n)
  }
  
  mat <- x$get()
  mat1<-as.matrix(mat)
  n <- solve(mat1)
  x$setMat(n)
  
  n

}
