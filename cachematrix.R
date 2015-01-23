## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL # a variable to hold inverse of matrix; this will use as cache
	set <- function(y){ #setup new matrix and initlized its inverse with null
		x <<- y
		inv <<- NULL
		computed <<- FALSE
	}
	get <- function() x #return the orignal matrix
	setinverse <- function (inverse){
		inv <<- inverse #set the inverse of matrix so it can be use in future
		 
	}
	getinverse <- function() inv # return the inverse of matrix
	list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
 }


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	  
	  if(!is.null(x$getinverse())){
		message("getting cached data")
		invX <- x$getinverse()
		return (invX)
	  }
	  message("getting inverse first time")

	  mt <- x$get() # get the matrix
	  inv1 <- solve(mt,...) #calculate the inverse as we did not found previously calculated
	  x$setinverse(inv1) # store the inverse in variable for future use
	  inv1  #return the inverse of matrix
}
