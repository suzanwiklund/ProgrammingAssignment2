## Put comments here that give an overall description of what your
## functions do
setwd("/Users/Non-corrupt user/Desktop/Suzy/DataScience/R Programming/ProgrammingAssignment2/")


##creates a list that contains functions to:
##sets the values 
##gets the values of the matrix
##sets the inverse of the matrix
##gets the inverse of the matrix
makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  
  #sets values
  set <- function(y){
     x <<- y
     i <<- NULL
  }

  #gets values of matrix
  get <- function() x
  
  #sets inverse 
  setinverse <- function(inverse) i <<- inverse
  #gets inverse
  getinverse <- function()i 
  
  
  list(set=set, get=get,setinverse=setinverse,
       getinverse=getinverse)
  
 
}


##gets the inverese of the matrix
##if inverse already exists then uses cached inverse
##ohterwise computes inverse - gets data, solves & sets it
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  i <- x$getinverse()
  if(!is.null(i)){
     message("getting cached data")
     return(i)
    
  }
  #need to calc inverse
  data <- x$get()
  i<- solve(data, ...)
  x$setinverse(i)
  i
}
