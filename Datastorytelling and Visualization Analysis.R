getwd()
setwd("/Users/shekharsingh/Documents/Big Data and Business Analytics/Analytics1/RStudio")

dataset <- read.csv("FIFA_2019.csv", header=TRUE)
View(dataset)

dim(dataset) 
summary(dataset)
str(dataset)
head(dataset)


#fitting linear regression 
fit.lr = lm(formula = Potential ~ Crossing+Finishing+HeadingAccuracy+ShortPassing+Volleys+Dribbling+Curve+FKAccuracy+LongPassing+BallControl+Acceleration+SprintSpeed+Agility+Reactions+Balance+ShotPower+Jumping+Stamina+Strength+LongShots+Aggression+Interceptions+Positioning+Vision+Penalties+Composure+Marking+StandingTackle+SlidingTackle+GKDiving+GKHandling+GKKicking+GKPositioning+GKReflexes,
               data = dataset) 
summary(fit.lr)

fit.lr2 = lm(formula = Overall ~ Crossing+Finishing+HeadingAccuracy+ShortPassing+Volleys+Dribbling+Curve+FKAccuracy+LongPassing+BallControl+Acceleration+SprintSpeed+Agility+Reactions+Balance+ShotPower+Jumping+Stamina+Strength+LongShots+Aggression+Interceptions+Positioning+Vision+Penalties+Composure+Marking+StandingTackle+SlidingTackle+GKDiving+GKHandling+GKKicking+GKPositioning+GKReflexes,
            data = dataset) 
summary(fit.lr2)


fit.lr3 = lm(formula = Overall ~ Age,
             data = dataset) 
summary(fit.lr3)







