## functions do


makeCacheMatrix <- function(x = matrix()) {
        cacheInverse <- NULL
        set <- function(m) {
                x <<- m
                cacheInverse <<- NULL
        }
        get <- function() x
        setInverse <- function() cacheInverse <<- solve(x)
        getInverse <- function() cacheInverse
        # used for encapsulation
        list(
                set = set, get = get,
                setsolve = setsolve,
                getsolve = getsolve
        )
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverseMatrix <- x$getInverse()
        if (is.null(inverseMatrix)) {
                x$setsolve()
                return(x$getInverse())
        }
        inverseMatrix
}
