#using the makeCacheMatrix function to set and get the matrix and inverse in it
makeCacheMatrix <- function(mat = matrix()){#
 ## initializing the inverse property
in <- NULL
set <- function(matrix){
mat <<- matrix
in <<- NULL
}
 ## using methods to get the matrix
get <- function() {
mat
}
  ##setting inverse matrix
setInv <- function(inverse){
in <<- inverse
}
getInv <- function(){
in
}

list(set = set, get = get, setInv = setInv, getInv = getInv)
}
##cacheSolve Function inverses the matrix 
cacheSolve <- function(x,...){
mat <- x$getInv()
if(!is.null(mat) ) {
message('receiving cached data')
return(mat)
}
mat <- solve(data) %*% data
x$setInv(mat)
mat
}

