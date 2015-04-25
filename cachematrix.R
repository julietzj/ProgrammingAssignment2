## I followed the example of "Caching the mean of vector" to write this assignment "cachematrix"
## the first function, makeCachemartix creates a special martix, which is really a list containing function to 
## 1, set the value of martix 
## 2, get the value of matrix
## 3, set the inverse of martix
## 4, get the inverse of martix 

makeCacheMatrix <- function(x = matrix()) {

 m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
 
  get<-function()x
  setinverse<- function (solve)
    m <<- solve
  getinverse<- function ()
    m
 
  list(set=set, get = get ,
       setinverse = setinverse, 
       getinverse = getinverse)

}


## get inverse of the martix 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         m<-x$getinverse()
  if(!is.null(m)){
    message(" result ")
    return (m)
    
  }
  data<-x$get ()
  m<-solve(data,...)
  x$setinv(m)
  m
        
        
}
