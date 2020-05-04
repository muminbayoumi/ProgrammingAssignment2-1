## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix(),...) {
        #initialiing inversese placeholder
        i <- NULL
        setmat <- function(y){
                x<<-y
                i<<-NULL
        }
        getmat <- function()x
        setinv <- function() i <<-solve(x,...)
        getinv <- function() i
        # using the method from the vector example kept giving me an error,
        # as setting any uninitiated variable here made it unrecognizable to the
        # and im not entirely sure why. Making a function like this pre-determin-
        # -ed inputs controlled by the main makeCacheMatrix function made more sense.
        list(setmat=setmat,
             getmat=getmat,
             setinv=setinv,
             getinv=getinv)

}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        i <- x$getinv()
        if(!is.null(i)){
                message("displaying cached solution")
                return(i)
        }
        i <- x$setinv()
        # set inv uses set inv output already computed to populate the i placeholder
        i

        ## Return a matrix that is the inverse of 'x'
}
