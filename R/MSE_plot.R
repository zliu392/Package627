MSE_plot <- function (dat, ord_fac, quant, group) {
  X <- colnames(dat)
  X[which(X==ord_fac)] <- "ord_fac"
  X[which(X==quant)] <- "quant"
  X[which(X==group)] <- "group"
  colnames(dat) <- X
  PLOT <- ggplot(dat) + facet_grid(.~group) + 
    geom_point(aes(x = log(quant), y = reorder(ord_fac, log(quant)), color=group))
  PLOT
}