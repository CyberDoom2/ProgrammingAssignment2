## The set of functions defined below allow user to cache
## the time-consuming computation of inverting a matrix.
## When we results of the computations again, it can be looked up
## in the cache rather than recomputed.

## Return a matrix that is the inverse of 'x'

## Below makeCacheMatrix function creates a special "matrix" object
## that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
    
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
## Initiates some variables

    get <- function() x
## Gets the function
    setInverse <- function(inverse) m <<-inverse
## Sets the function

    getInverse <- function() m
## Inverse is get here

    list(set = set, get = get,
    setInverse = setInverse,
    getInverse = getInverse)
## create the list to report out 
    
}





## Below cacheSolve function computes the inverse of the special
## "matrix" returned by `makeCacheMatrix` above. If the inverse has
## already been calculated (and the matrix has not changed), then
## `cacheSolve` will retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
    
    m <- x$getInverse()
##Checks if the inverse has already been calculated
## If it has, gets it from the cache.

    if ( ! is.null(m)) {
        print("getting cached data")
        return(m)
    }

m <- solve(x$get())
    x$setInverse(m)
##If not found in cache, calculates the inverse.

m  
#returns the result

}
