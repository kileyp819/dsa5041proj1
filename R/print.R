#' Print method for class Rttest
#'
#' @param x data from constructor function
#' @param ... table variables
#' @importFrom kableExtra kable
#'
#' @return a table displaying the data
#' @export print.Rttest
#'
#' @export
#'
#' @examples
#' \dontrun{print(obj)}

print.Rttest = function(x, ...) {
  obj <- NULL
  kable(obj$data, table.attr = "style = 'width: 30%'", align = 'r')
}
