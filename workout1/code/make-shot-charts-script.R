library("ggplot2")
library("jpeg")
library("grid")
library("dplyr")
#setwd("C:/Users/John/Desktop/hw-stat133/workout1/data")
source("../code/make-shots-data-script.r")


court_file <- "../images/nba-court.jpg"

court_image <- rasterGrob(
  readJPEG(court_file),
  width = unit(1, "npc"),
  height = unit(1, "npc"))

thompson_shot_chart <- ggplot(data = thompson) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Klay Thompson (2016 season)') +
  theme_minimal()

ggsave("../images/klay-thompson-shot-chart.pdf", width=6.5,height=5)

iguodala_shot_chart <- ggplot(data = iguodala) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Andre Iguodala (2016 season)') +
  theme_minimal()

ggsave("../images/andre-iguodala-shot-chart.pdf", width=6.5,height=5)

durant_shot_chart <- ggplot(data = durant) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Kevin Durant (2016 season)') +
  theme_minimal()

ggsave("../images/kevin-durant-shot-chart.pdf", width=6.5,height=5)

curry_shot_chart <- ggplot(data = curry) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Stephen Curry (2016 season)') +
  theme_minimal()

ggsave("../images/stephen-curry-shot-chart.pdf", width=6.5,height=5)

green_shot_chart <- ggplot(data = green) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Draymond Green (2016 season)') +
  theme_minimal()

ggsave("../images/draymond-green-shot-chart.pdf", width=6.5,height=5)

gsw_shots <- rbind(curry,iguodala,durant,thompson,green)

gsw_shot_charts <- ggplot(data=gsw_shots) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) + facet_wrap(~ name)
  #ggtitle('Shot Chart: Draymond Green (2016 season)') +
  theme_minimal()
  
ggsave("../images/gsw-shot-charts.pdf",width=8,height=7)


gsw_shot_charts <- ggplot(data=gsw_shots) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) + facet_wrap(~ name)
#ggtitle('Shot Chart: Draymond Green (2016 season)') +
theme_minimal()

ggsave("../images/gsw-shot-charts.png",width=8,height=7)

