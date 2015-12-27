## Caching matrix inverse

## Creates a list which hold matrix and its inverse

makeCacheMatrix <- function(x = matrix()) {
  get <- function() x
  
  inv <- NULL

  getSolve <- function() {
    if ( is.null(inv) ) {
      inv <<- solve(x)
      #message("set inv")
    }
    #else {
    #  message("using cached")
    #}
    return(inv);
  }
  
  list(get=get, getSolve=getSolve)
}


## Using an object from previous function to access and possibly compute inverse

cacheSolve <- function(x, ...) {
  x$getSolve()
}
