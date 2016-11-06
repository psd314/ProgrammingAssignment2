## makeCacheMatrix constructs four functions that can be called by cacheSolve
## to either cache or calculate the inverse of a matrix

## takes a matrix and outputs a list of functions that can be used
## to cache or calculate the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y){
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    setinv <- function(inverse) inv <<- inverse
    getinv <- function() inv
    list(set = set, get = get, setinv = setinv, getinv = getinv)
    
}


## takes the output of makeCacheMatrix and returns the inverse of the matrix
## if it's already been cached or calculates the inverse if it has not 
##been cached

cacheSolve <- function(x, ...) {
    inv <- x$getinv()
    if(!is.null(inv)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    inv <- solve(data, ...)
    x$setinv
    inv
}
