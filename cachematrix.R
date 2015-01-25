## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
makeCacheMatrix <- function(x = matrix()) {
  # sets x equal to an empty matrix
  abc <- NULL
  # Set the inverse equal to NULL
  
  set <- function(y){
    x <<- y
    # set function assigns the argument to x
    abc <<- NULL
    # Once the set function is called, Inverse is re-set to NULL (this is important if you redefine the matrix, x)
  }
  get <- function() x
  # get function returns the matrix
  
  setInverse <- function(solve) abc <<- solve
  
  
  getInverse <- function() abc
  # getInverse returns the Inverse
  
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
  # creates a list of the functions
  
}

cacheSolve <- function(x, ...) {
  abc <- x$getInverse()
  # Retrives the most recent value for the inverse
  
  if(!is.null(abc)){
    message("getting cached data")
    return(abc)
    # If the value of Inverse is NOT null (was previously calculated), cacheSolve returns that value        
  }
  # If the value of Inverse is NULL, then you retrive matrix x and calculate the inverse with the solve() function
  message("newly calculating data")
  data <- x$get()
  abc <- solve(data, ...)
  x$setInverse(I)
  # Sets Inverse to the newly calculated value   
  abc #Returns the new Inverse value
}
