#' Plot method for class Rttest
#'
#' @param x object made from my constr
#' @param ... plot variables
#'
#' @importFrom dplyr select
#' @importFrom ggplot2 ggplot geom_boxplot aes labs position_dodge scale_x_discrete
#'
#' @return a side by side boxplot of the data
#' @export plot.Rttest
#'
#' @export
#'
#' @examples
#' \dontrun{plot(obj)}

plot.Rttest = function(x, ...){
  df <- x$data
  ggplot(data = df, aes(x = factor(1), y = x)) +
    geom_boxplot(width = 0.5, position = position_dodge(width = 0.5)) +
    geom_boxplot(aes(x = factor(2), y = y), width = 0.5, position = position_dodge(width = 0.5)) +
    scale_x_discrete(labels = c("x", "y")) +
    labs(title = "Side-by-side Boxplot",
         x = "Variable",
         y = "Value")

}
