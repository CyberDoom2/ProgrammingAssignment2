## The set of functions defined below allow user to cache
## the time-consuming computation of inverting a matrix.
## When we results of the computations again, it can be looked up
## in the cache rather than recomputed.

## Below makeCacheMatrix function creates a special "matrix" object
## that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {

}


## Below cacheSolve function computes the inverse of the special
## "matrix" returned by `makeCacheMatrix` above. If the inverse has
## already been calculated (and the matrix has not changed), then
## `cacheSolve` will retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
