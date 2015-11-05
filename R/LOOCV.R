# LOOCV

LOOCV <- function(dat, offset=1952) {
  Model <- glm(lifeExp ~ I(year-1952), family=gaussian, dat)
  MSE <- cv.glm(dat, Model)$delta[1]
}