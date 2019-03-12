
##Are they supposed to be commented?
#• title: short title
#description: a short description of what the script is about
#input(s): what are the inputs required by the script?
#output(s): what are the outputs created when running the script?
#setwd("C:/Users/John/Desktop/hw-stat133/workout1/data") 

curry <- read.csv("../data/stephen-curry.csv", stringsAsFactors = FALSE)
iguodala <- read.csv("../data/andre-iguodala.csv", stringsAsFactors = FALSE)
green <- read.csv("../data/draymond-green.csv", stringsAsFactors = FALSE)
durant <- read.csv("../data/kevin-durant.csv", stringsAsFactors = FALSE)
thompson <- read.csv("../data/klay-thompson.csv", stringsAsFactors = FALSE)

curry$name <- "Stephen Curry"
iguodala$name <- "Andre Iguodala"
green$name <- "Draymond Green"
durant$name <- "Kevin Durant"
thompson$name <- "Klay Thompson"

curry$shot_made_flag[curry$shot_made_flag=="y"] <- "shot_yes"
curry$shot_made_flag[curry$shot_made_flag=="n"] <- "shot_no"
iguodala$shot_made_flag[iguodala$shot_made_flag=="y"] <- "shot_yes"
iguodala$shot_made_flag[iguodala$shot_made_flag=="n"] <- "shot_no"
green$shot_made_flag[green$shot_made_flag=="y"] <- "shot_yes"
green$shot_made_flag[green$shot_made_flag=="n"] <- "shot_no"
durant$shot_made_flag[durant$shot_made_flag=="y"] <- "shot_yes"
durant$shot_made_flag[durant$shot_made_flag=="n"] <- "shot_no"
thompson$shot_made_flag[thompson$shot_made_flag=="y"] <- "shot_yes"
thompson$shot_made_flag[thompson$shot_made_flag=="n"] <- "shot_no"

curry$minute <- curry$period*12 - curry$minutes_remaining
iguodala$minute <- iguodala$period*12 - iguodala$minutes_remaining
green$minute <- green$period*12 - green$minutes_remaining
durant$minute <- durant$period*12 - durant$minutes_remaining
thompson$minute <- thompson$period*12 - thompson$minutes_remaining

sink_name <- summary(iguodala) #using this because summary in sink is broken. (I think this is a known issue in R)
sink(file="../output/andre-iguodala-summary.txt")
print(sink_name)
sink()

sink_name <- summary(curry) #using this because summary in sink is broken. (I think this is a known issue in R)
sink(file="../output/stephen-curry-summary.txt")
print(sink_name)
sink()

sink_name <- summary(green) #using this because summary in sink is broken. (I think this is a known issue in R)
sink(file="../output/draymond-green-summary.txt")
print(sink_name)
sink()

sink_name <- summary(durant) #using this because summary in sink is broken. (I think this is a known issue in R)
sink(file="../output/kevin-durant-summary.txt")
print(sink_name)
sink()

sink_name <- summary(thompson) #using this because summary in sink is broken. (I think this is a known issue in R)
sink(file="../output/klay-thompson-summary.txt")
print(sink_name)
sink()

#shots_data <- rbind(summary(green),summary(curry),summary(thompson),summary(iguodala),summary(durant))
shots_data <- rbind(green,curry,thompson,iguodala,durant)
write.csv(shots_data,file="../data/shots_data.csv")

sink_name <- summary(shots_data)
sink("../output/shots-data-summary.txt")
print(sink_name)
sink()

