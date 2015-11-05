# arrange_order

arrange_order <- function(dat, type) {
  dat1 <- dat
  if (type==1) dat1 <- dat %>% arrange(mse)
  else if (type==2) dat1 <- dat %>% mutate(continent = reorder(continent, mse, median))
  else if (type==3) dat1 <- dat %>% mutate(continent = reorder(continent, mse, median)) %>% arrange(continent)
  else dat1 <- dat %>% mutate(continent = reorder(continent, mse, median)) %>% arrange(mse)
  dat1
}