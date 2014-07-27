# makeCacheMatrix
# Create Special matrix object
# Save tha matrix to variable x and inverse to variable c
# Return object List
# set: sets matrix and resets cached inverse
# get: returns matrix
# setSolve: saves solve value
# getSolve: returns cached inverse value

makeCacheMatrix <- function(x = matrix()) {
  c<-NULL
  set <- function(y){
    x<<-y
    c<<- NULL 
  }
  
  get <- function () x
  
  setsolve<-function(solve){
    c<<-solve
  }
  getsolve<-function(){
    c
  }
  
  list(set=set,get=get,setsolve=setsolve,getsolve=getsolve)

}


# cachesolve : Function to get inversed matrix from special matrix created by makeCacheMatrix
# Take Special object x and check ifinverse value is already cached
# If cached value exists then return that value
# Else calculate inverse for the special matrix saved in x
# cache using setSolve and return result


cacheSolve <- function(x=matrix(), ...) {
        ## Return a matrix that is the inverse of 'x'
  c<-x$getsolve()
  if(!is.null(c)){
    message("getting cached data")
    return (c)
  }
    data<-x$get
  c<-getsolve()
  x$setsolve(c)
  c
  
}

