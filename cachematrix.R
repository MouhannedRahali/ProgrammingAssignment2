# This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  
  
  inv <- NULL
  
  set <- function(y) {
    
    x <<- y
    
    inv <<- NULL
    
  }
  
  get <- function() x
  
  setsolve <- function(solve) inv <<- solve
  
  getsolve <- function() inv        
  list(set = set, get = get,
       setsolve = setsolve,getsolve = getsolve)
  
}




cacheSolve <- function(x, ...) {
  #This function computes the inverse of the special "matrix" returned by makeCacheMatrix above
  
  
  inv <- x$getsolve()
  
  if(!is.null(inv)) {
    
    message("getting cached data")
    
    return(inv)
    
  }
}