# Figures

Reorder <- function(dat, fun) {
  dat_new <- dat
  dat_new$continent <- dat %>% with(reorder(continent, gdpPercap, fun))
  dat_new
}

