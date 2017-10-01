makeCacheMatrix <- function(mat = matrix()){
in <- NULL
set <- function(matrix){
mat <<- matrix
in <<- NULL
}
get <- function() {
mat
}
setInv <- function(inverse){
in <<- inverse
}
getInv <- function(){
in
}

list(set = set, get = get, setInv = setInv, getInv = getInv)
}

mat <- x$getInv()
if(!is.null(mat) ) {
message('receiving cached data')
return(mat)
}
mat <- solve(data) %*% data
x$setInv(mat)
mat
}

