## I have set input "x" as matrix
## set solved value "s" as NULL

## finally changed every reference of "mean" to "solve"

makeCacheMatrix <- function(x = matrix(sample(1:100,9),3,3)) {
s<-NULL
	set<-function(y){
		x<<-y
		s<<-NULL
	}
	get<-function()x
	getsolve<-function(solve)s<<-solve
	getsolve<-function()s
	list(set=set,get=get,
	setsolve=setsolve,
	getsolve=getsolve)
}


## I changed every reference of "mean" and "m"to "solve"and "s"respectively.

cacheSolve <- function(x, ...) {
       s<-x$getsolve()
        if(!is.null(s)){
        	message("getting inverse matrix")
        	return(s)
        }
        data<-x$get()
        s<-solve(data, ...)
        x$getsolve(s)
        s

}
