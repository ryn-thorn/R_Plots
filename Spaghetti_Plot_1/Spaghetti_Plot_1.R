library(ggplot2)
library(ggalt)
theme_set(theme_classic())

dt <- read.csv("/Volumes/vdrive/helpern_users/keith_k/Projects/SpaghettiPlot/data_structure.csv") #read in csv
dt$dx2 <-  as.factor(dt$dx2)
dt$dx1 <-  as.factor(dt$dx1)

####### hippocampus plot - avg
ggplot(dt, aes(x = age, y = metric, colour = dx2, shape = dx1)) +
  geom_point(size = 2) +
  scale_colour_manual(values = c("black", "red")) +
  scale_shape_manual(values=c(19,21)) +
  geom_line(aes(group = baseid)) +
  labs(x = "age",
       y = "metric",
       title =  "Metric by Age") +
  theme(plot.title = element_text(hjust=0.5, face="bold"),
        title = element_text(size = rel(1.4))) -> gg1
  #scale_x_continuous(breaks = seq(60,100,1)) +
  #scale_y_continuous(breaks = seq(-4,3,0.25)) +
  #geom_hline(yintercept=-1.5, color = "grey", size=0.5) +
  #geom_hline(yintercept=1.5, color = "grey", size=0.5) -> gg1
gg1
ggsave("/Volumes/vdrive/helpern_users/keith_k/Projects/SpaghettiPlot/example_plot.png",width=12,height=6)
