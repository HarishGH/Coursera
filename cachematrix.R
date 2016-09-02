
makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
  x<<-y
  m<<-NULL
}
get<-function() x
setmatrix<-function(solve) m<<- solve
getmatrix<-function() m
list(set=set, get=get,
   setmatrix=setmatrix,
   getmatrix=getmatrix)
}


cacheSolve <- function(x, ...) {
  m <- x$getInverse()                 
  if(!is.null(m)){                    
    message("getting cached data")   
    return(m)                         
  }
  data <- x$get()                      
  m <- solve(data, ...)               
  x$setInverse(m)                    
}

  
