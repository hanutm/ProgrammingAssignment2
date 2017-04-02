## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
makeCacheMatrix <- function(x = matrix()){
			i <<- NULL                              # i carries the cached inverse of the matrix 
			set <- function(b) {                    # setter function for changing the matrix
				a <<- b
				i <<- NULL
			}
			get <- function() a                     # getter function for reading value of current matrix
			setinv <- function(inv) i <<- inv       # setter function for setting the output of function (here inverse)
			getinv <- function() i                  # function for getting the output of the function
			list(set = set,                         
			     get = get,
			     setinverse = setinv,
			     getinverse = getinv)
}

cacheSolve <- function(a, ...) {                                #function for actual computation
			i <- a$getinverse()                     
			if(!(is.null(i))) {                     #checks if inverse exists or is NULL in case of new matrix
				message("getting saved data")   
				return(i)
			}
			data <- a$get()                         #reads the current matrix into local object (variable)
			inv <- solve(data)                      #solves the matrix 
			a$setinverse(inv)                       #caches the new output (inverse value)
			inv                                     
}
