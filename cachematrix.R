## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

MakeVector <- function(x = matrix()){
        inversa <- NULL
        set <- function(y){
                x <<- y
                inversa <<- NULL
        }
        
        get <- function() x
        SetInversa <- function(inverse) inversa <<- inverse
        getInversa <- function() inversa
        list(set = set, get = get, SetInversa = SetInversa, getInversa = getInversa)

}


## Write a short comment describing this function

cachInverse <- function(x, ...){
        inversa <- x$getInversa()
        if (!is.null(inversa)) {
                message("getting cached data")
                return(inversa)
        }
        mat <- x$get()
        inversa <- solve(mat, ...)
        x$setInversa(inversa)
        inv
}

my_matrix <- MakeVector(matrix(1:4, 2, 2))
my_matrix$get()
