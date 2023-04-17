#' @title My constructor
#'
#' @description a constructor function makes an object of a particular OOP
#'class and makes a lot of useful statistical information that
#'methods operate on to produce whatever particulars we need
#'
#' @param x a vector
#' @param y a vector
#' @param alpha level of significance
#'
#' @return a named list of class Rttest containing a data
#'        frame containing x and y, alpha, the confidence
#'        interval for mux - muy and the pvalue
#' @export
#'
#' @examples
#' \dontrun{set.seed(21);x <-rnorm(30,5,2); set.seed(23); y<- rnorm(40, 3,2);alpha <- 0.05
#' obj <- myconstr(x = x, y = y, alpha = 0.05)}

myconstr = function(x, y, alpha){
  obj = list(data = data.frame(x = x, y = y), alpha = alpha,
             t.test(x, y, conf.level = 0.95)$conf.int,
             t.test(x, y, conf.level = 0.95)$p.value)
  class(obj) = "Rttest"
  obj
}
