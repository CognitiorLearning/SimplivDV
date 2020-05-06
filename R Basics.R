
 Quantity = 10L
 typeof(Quantity)
 #Integer 
 
 Sales = 150.56
 typeof(Sales)
 #double  
 
 Quantity <- 10L
 
 Greeting <- 'Hello Learners'
 typeof(Greeting) 
 
 Sales <- 150.56
 a <- Sales<100
 
 typeof(a)
 
 a <- T
 
 #Loops in R 
 for (i in 1:10){
         print(i)
 }
 
 
 while (F) {
         print('Hello')
 }
 
 
 
 counter  <- 1
 while (counter<=10) {
         print(counter)
         counter=counter+1
 }
 
 
 #Conditional Statement 
 marks = 75

 if (marks<40) {
                answer <- 'You failed the exam'
 } else if (marks >=40 & marks <=70) {
         answer <- 'You got avg marks'
 } else {
         answer <- 'You got good marks'
 }
 
 
 is.vector(marks)
 is.integer(marks)
 is.double(marks)
 is.numeric(marks) 
 
 marks
 a<-c(10L,20L,30L,40L,50L,60L,70L) 
 is.vector(a)
 is.integer(a)
 
 b <- c('a','b',3) 
 is.character(b)
 
 
 
 a[4]
 a[c(1,3,5,7)]
 a[-1]
 a[c(-2,-4)]
 a[3:5]
 
 
 sales_us <- c(1032,3223,2232,1234)
 sales_eu <- c(2132,1223,2132,4434)
 sales_jp <- c(2132,4323,4332,2234)
 sales_eu
 sales_us 
 sales_jp
 
 sales_matrix <- rbind(sales_us,sales_eu,sales_jp)
 cbind(sales_us,sales_eu,sales_jp) 
 
 rownames(sales_matrix) <- c('US','EU','JP')
 
 sales_matrix[2,3]
 sales_matrix
 colnames(sales_matrix) <- c('Q1','Q2','Q3','Q4')
 sales_matrix 
 
 profit_us <- c(432,223,444,342)
 profit_eu <- c(554,223,233,223)
 profit_jp <- c(554,334,334,223)
 
 profit_matrix <- rbind(profit_us,profit_eu,profit_jp)
 rownames(profit_matrix) <- c('US','EU','JP')
 colnames(profit_matrix) <- c('Q1','Q2','Q3', 'Q4')
 
 profit_matrix 
 
 round(profit_matrix/sales_matrix,2)
 
 install.packages('dplyr')
 library(dplyr)
 
 head(airquality) 
 install.packages('datasets')
 library(datasets)
 
 
 airquality 
 
 head(airquality)
 tail(airquality) 
 
 filter(airquality, Temp >70) 
 filter(airquality, Temp > 80 & Month > 5)
 mutate(airquality, TempInC = (Temp - 32) * 5/9)
 summarise(airquality, mean(Temp, na.rm = T))
 summarise(group_by(airquality, Month), mean(Temp, na.rm = T)) 
 count(airquality, Month)
 
 arrange(airquality, desc(Month), Day)
 
 
 airquality %>%
         filter(Month != 5) %>%
         group_by(Month) %>%
         summarise(mean(Temp, na.rm = T))
 
 
 
 #Apply Function 
 #Dataframes 
 
 #Visulization in R 
 
 
 
 
 
 
 
 


 
 
 
 
 
 