## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

CacheMatrix <- function(x = matrix()) {                  ##create a numeric matrix x 
  m1 <- NULL
  set <- function(y) {                                                   
    x <<- y
    m1 <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) m1 <<- solve          
  getinverse <- function() m1
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  m1 <- x$getinverse()
  if(!is.null(m1)) {    
    message("getting cached data")
    return(m1)
  }
  data <- x$get()  
  m1 <- solve(data, ...)
  x$setinverse(m1)
  m1
}

