## Starting the code
 ## reading the file
   setwd( 'C:/Users/rubind1/Documents/Coursera-R' )
## X is a matrix and making s as null
            makeCacheMatrix <- function  (x = matrix(sample(1:100,9),3,3) ) {
  s <- NULL
     set <- function(y) {
    x <<- y
     s <<- NULL
  }
                 ## changed refernce value to ' mean' to 'solve'
          get <- function()  x ## function x
      setsolve <- function(solve) s <<- solve
     getsolve <- function() s
  list(set = set, get = get,
          setsolve = setsolve,
        getsolve = getsolve)
}
  ## Condition checked 
   ## DOing the same here changed "mean" to "solve" and "m" to "s"
         cacheSolve <-  function (x, ...)  {
   s <-  x$getsolve()
       if( !is.null(s) ) {
                      message("getting inversed matrix") ## getting inversed matrix
 ## returning 's'
        return(s)
  }
            data <- x$get()
     s <- solve(data, ...)
    x$setsolve(s)
    s
}

## end of program
