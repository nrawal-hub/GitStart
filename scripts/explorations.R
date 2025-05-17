# Following along witht he R tutorials from MIT course
coin <- c("Head", "Tail")
toss <- c()
for(i in 1:100){
  toss[i] <- sample(x = coin, 1)
}
toss

toss_alt <-c()
bin_100 <- rbinom(n = 100, size = 1, prob = 0.5)
bin_100
sum(bin_100)
toss_alt <- bin_100
toss_alt[bin_100 ==1] <- "Head"
toss_alt[bin_100 ==0] <- "Tail"
toss_alt
table(toss)
table(toss_alt)

state <- c("Washington", "California", "Texas")
marital_status <- c("married", "single")
income <- seq(1,4)

sim_sample_100 <- matrix(nrow = 100, ncol = 3) 
colnames(sim_sample_100) <- c("marital_status","income","state")
head(sim_sample_100)

for(i in 1:100){
  sim_sample_100[i, 1] <- sample(x = marital_status, size = 1, replace = TRUE)
  sim_sample_100[i, 2] <- sample(x = income, size = 1, replace = TRUE)
  sim_sample_100[i, 3] <- sample(x = state, size = 1, replace = TRUE)
}

for(i in 1:100){
  sim_sample_100[i, "marital_status"] <- sample(x = marital_status, size = 1, replace = TRUE)
  sim_sample_100[i, "income"] <- sample(x = income, size = 1, replace = TRUE)
  sim_sample_100[i, "state"] <- sample(x = state, size = 1, replace = TRUE)
}

apply(X = sim_sample_100, MARGIN = 2, FUN = table)
apply(X = sim_sample_100, MARGIN = 1, FUN = max)


fish_weights <- c(12, 34, 20, 6.6)
fish_weights_lb <- fish_weights * 2.2

sum(fish_weights_lb) 
sum(fish_weights)*2.2

rm(list = ls())
