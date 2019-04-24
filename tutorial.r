# Installing ggplot2
install.packages("ggplot2")

# loading library
library(ggplot2)


# Taking a look on the 'mtcars' database
?mtcars
head(mtcars)


# Ploting a simple graphic
ggplot(data = mtcars) + 
  geom_point(mapping = aes(x = disp, y = mpg))


# Adding colour to the points
ggplot(data = mtcars) + 
  geom_point(mapping = aes(x = disp, y = mpg, colour=am))

ggplot(data = mtcars) + 
  geom_point(mapping = aes(x = disp, y = mpg, colour=as.factor(cyl)))



# Changing the points sizes according to a variable
ggplot(data = mtcars) + 
  geom_point(mapping =  aes(x = disp, y = mpg, colour=as.factor(cyl), size=wt))


# Modeling dots using alpha and shape arguments
head(mpg)

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, alpha = class))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, shape = class))



## Plotting different types of geoms
# histograms
ggplot(data = mtcars) + 
  geom_histogram(mapping = aes(x = mpg), colour = "blue")

# lines
ggplot(data = mtcars) + 
  geom_line(mapping = aes(x = disp, y = mpg), linetype ="twodash", colour = "red", size = 1)

# smooth
ggplot(data = mtcars) + 
  geom_smooth(mapping = aes(x = disp, y = mpg), colour = "yellow") + 

  
# Combining two layers
ggplot(data = mtcars) + 
  geom_smooth(mapping = aes(x = disp, y = mpg), colour = "red") + 
  geom_point(mapping = aes(x = disp, y = mpg))


# Naming labels
ggplot(mtcars) + 
  geom_histogram(mapping = aes(x = mpg)) +
  xlab("Milhas por galão") +
  ylab("Frequência") +
  xlim(c(0, 40)) +
  ylim(c(0,8))
