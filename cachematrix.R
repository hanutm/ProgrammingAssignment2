
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
