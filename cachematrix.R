## A invertible matrix his data is cached. After caching the matrix can be inverted.
## This inverted matrix will be cached to save computing time later on.

## Saved the matrix and provides getter and setter functions for the original and inverted matrix.

makeCacheMatrix <- function(x = matrix()) {
        inverse<-NULL
        set<-function(y){
                x<<-y
                inverse<<-NULL
        }
        get<-function(){x}
        setinverse <-function(solve){inverse<<-solve}
        getinverse<-function(){inverse}
        list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}


## Inverses a matrix and returns the inverse.
cacheSolve<-function(x, ...){
        inverse<-x$getinverse()
        print(inverse)
        if(!is.null(inverse)){
                message("Looking up cached inverse")
                return(inverse)
        }
        data<-x$get()
        inverse<-solve(data,...)
        x$setinverse(inverse)
        inverse
}
