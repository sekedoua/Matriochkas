


dygraph(list(x = 1:10, y = runif(10))) %>%
  dyAxis("y", valueRange = c(0, 1.5)) %>%
  dyEvent(2, label = "test") %>%
  dyAnnotation(5, text = "A")


dygraph(weather) %>%
  dyAxis("y", label = "Temperature (C)") %>%
  dyAxis("y2", label = "Rainfall") %>%
  dySeries("rainfall", axis = 'y2')

dygraph(list(x = 1:10, y = runif(10))) %>%
  dyAxis("y", valueRange = c(0, 1.5)) %>%
  dyEvent(2, label = "test") %>%
  dyAnnotation(as.POSIXct(), text = "A")

dygraph(presidents, main = "Presidential Approval") %>%
  dyAxis("y", valueRange = c(0, 100)) %>%
  dyAnnotation( '1965-2-09', text = 'A')%>%
  dyEvent("1950-6-30", "Korea", labelLoc = "bottom") %>%
  dyEvent("1965-2-09", "Vietnam", labelLoc = "bottom")




dygraph(presidents, main = "Quarterly Presidential Approval Ratings") %>%
  dyAxis("y", valueRange = c(0, 100)) -> graph
dates<-c("1950-7-1","1965-1-1","1972-1-1")
texts<-c("a","bb","cc")
my_code<-paste("graph %>%",
               paste0("dyAnnotation('",dates,"',text='",texts,"')",collapse = " %>% "))
eval(parse(text = my_code))



lungDeaths <- cbind(ldeaths, mdeaths, fdeaths)

dygraph(lungDeaths, main = "Deaths from Lung Disease (UK)") %>%
  dySeries("mdeaths", drawPoints = TRUE, color = "blue") %>%
  dySeries("fdeaths", stepPlot = TRUE, color = "red")   
