## First function creates a list of functions which base of each other and can
## be used singularly and conditionally in the second function.  Second function
## is somewhat a binary decision tree to decide whether the computation needs to
## or if the value required can be attained without running the computation.
##
## I noticed that i created a non-invertible matrix by mistake and my function
## stalled with no meaning full error produced. Might be useful learn how to add
## such conditions.


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

