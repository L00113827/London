
# Question 1
# Reading a dataset from data frame London
london_crime <- read.csv("london-crime-data.csv", na = "")
str(london_crime) # structure

london_crime$Date <- paste(london_crime$month, london_crime$year, sep='/')
str(london_crime)

# Change the variable
# Date requirement day, month, year
class(converted_date)

# Adding day element
converted_date <- as.Date(london_crime$month, london_crime$year, sep = "/")
converted_date

converted_date <- paste("01", london_crime$month, london_crime$year, sep = "/")
converted_date

london_crime$Date <- as.Date(converted_date, "%d/%m/%y")
str(london_crime)

# Question 2

names(london_crime)
names(london_crime)[2] <- "Borough"
names(london_crime)[3] <- "MajorCategory"
names(london_crime)[4] <- "SubCategory"
names(london_crime)[5] <- "Value"
names(london_crime)[8] <- "CrimeDate"

names(london_crime)

attach(london_crime)
london_crime <- subset(london_crime, select = c("Borough", "MajorCategory", "SubCategory", "Value", "CrimeDate"))
detach(london_crime)
head(london_crime, 5)

# Question 3

london_crime$Date <- as.Date(converted_date, "%d/%m/%y")
str(london_crime)

# Question 4
#Plotting the Chart to show summary of Borough info
plot(london_crime$Borough)
london_crime$Borough <- factor(london_crime$Borough)
str(london_crime)
plot(london_crime$Borough) # Ealing has the highest level and slington has the lowest level
summary(london_crime$Borough)

# Question 5

london_crime$MajorCategory <- factor(london_crime$MajorCategory)
str(london_crime$MajorCategory)

# Summary
major_category <- summary(london_crime$MajorCategory)

# plot the data
pie(major_category, main = "Crime Percentage") # Theft and handling has the highest crime percentage 
#and sexual offense has the lowest crime percentage


# Question 6
london_crime$Region[london_crime$Borough == 'Barking and Dagenham'] <- 'East'
london_crime$Region[london_crime$Borough == 'Barnet'] <- 'North'
london_crime$Region[london_crime$Borough == 'Bexley'] <- 'East'
london_crime$Region[london_crime$Borough == 'Brent'] <- 'West'
london_crime$Region[london_crime$Borough == 'Bromley'] <- 'South'
london_crime$Region[london_crime$Borough == 'Camden'] <- 'North'
london_crime$Region[london_crime$Borough == 'Croydon'] <- 'South'
london_crime$Region[london_crime$Borough == 'Ealing'] <- 'West'
london_crime$Region[london_crime$Borough == 'Enfield'] <- 'North'
london_crime$Region[london_crime$Borough == 'Greenwhich'] <- 'East'
london_crime$Region[london_crime$Borough == 'Hackney'] <- 'North'
london_crime$Region[london_crime$Borough == 'Hammersmith and Fulham'] <- 'West'
london_crime$Region[london_crime$Borough == 'Haringey'] <- 'North'
london_crime$Region[london_crime$Borough == 'Harrow'] <- 'West'
london_crime$Region[london_crime$Borough == 'Havering'] <- 'East'
london_crime$Region[london_crime$Borough == 'Hillingdon'] <- 'West'
london_crime$Region[london_crime$Borough == 'Hounslow'] <- 'West'
london_crime$Region[london_crime$Borough == 'Islington'] <- 'Central'
london_crime$Region[london_crime$Borough == 'Kensington and Chelsea'] <- 'Central'
london_crime$Region[london_crime$Borough == 'Kingston upon Thames'] <- 'East'
london_crime$Region[london_crime$Borough == 'Lambeth'] <- 'Central'
london_crime$Region[london_crime$Borough == 'Lewisham'] <- 'Central'
london_crime$Region[london_crime$Borough == 'Merton'] <- 'South'
london_crime$Region[london_crime$Borough == 'Newham'] <- 'East'
london_crime$Region[london_crime$Borough == 'Redbridge'] <- 'East'
london_crime$Region[london_crime$Borough == 'Richmond upon Thames'] <- 'West'
london_crime$Region[london_crime$Borough == 'Southwalk'] <- 'Central'
london_crime$Region[london_crime$Borough == 'Sutton'] <- 'South'
london_crime$Region[london_crime$Borough == 'Tower Hamlets'] <- 'Central'
london_crime$Region[london_crime$Borough == 'Waltham Forest'] <- 'Central'
london_crime$Region[london_crime$Borough == 'Wandsworth'] <- 'East'
london_crime$Region[london_crime$Borough == 'Westminster'] <- 'Central'

str(london_crime$Region)



# Question 7
london_crime$
  
  
# Question 8
  
  
# Question 9
  
  
# Question 10
  write.csv(london_crime, file = "london_crime_modified.csv")



