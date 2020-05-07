chicago <- read.csv('Chicago-F.csv', row.names = 1)
houston <- read.csv('Houston-F.csv', row.names = 1)
Newyork <- read.csv('NewYork-F.csv', row.names = 1)
Sanfrancisco <- read.csv('SanFrancisco-F.csv', row.names = 1)

is.data.frame(chicago)

#Apply 
  #apply  - Matrix 
  #lapply - Lists
  #sapply - Lists


chicago <- as.matrix(chicago)
houston <- as.matrix(houston)
Newyork <- as.matrix(Newyork)
Sanfrancisco <- as.matrix(Sanfrancisco)

is.data.frame(chicago)
is.matrix(chicago)


apply(chicago, 1, mean)

apply(chicago, 1,max)

weather <- list(chicago=chicago, houston=houston, Newyork=Newyork, 
                sanfrancisco=Sanfrancisco)
weather


lapply(weather, rowMeans)
lapply(weather, colMeans)


lapply(weather, "[",1,1)

lapply(weather, "[",1,)

lapply(weather, "[",,3)


lapply(weather,  function(x) x[2,])
lapply(weather,  function(x) x[1,])
lapply(weather,  function(x) x[,12])


lapply(weather,  function(x) x[1,] - x[2,])

lapply(weather,  function(x) round((x[1,] - x[2,])/x[2,],2))

#sapply 
lapply(weather, "[",1,7)
sapply(weather, "[",1,7)


lapply(weather, "[",1,10:12)
sapply(weather, "[",1,10:12)


lapply(weather, rowMeans)
sapply(weather, rowMeans)







lapply(weather,  function(x) round((x[1,] - x[2,])/x[2,],2))

sapply(weather,  function(x) round((x[1,] - x[2,])/x[2,],2))


#Demographic Data problem 


stats <- read.csv(file.choose())
nrow(stats)
ncol(stats)
head(stats, n=1)
tail(stats, n=1)
str(stats)

summary(stats)


stats[3,3]
stats[3,'Birth.rate']
stats[,'Internet.users']
levels(stats$Income.Group)

stats[1:10,]

stats[c(4,100),]




stats$MyCal = stats$Birth.rate * stats$Internet.users
stats$MyCal <- NULL

stats[stats$Internet.users<2,]

stats[stats$Birth.rate>40 & stats$Internet.users<2,]
stats[stats$Birth.rate>40 | stats$Internet.users<2,]
stats[stats$Income.Group=='High income',]

install.packages('ggplot2')
library('ggplot2')


qplot(data=stats, x=Internet.users)
qplot(data=stats, x=Income.Group, y=Birth.rate)
qplot(data=stats, x=Income.Group, y=Birth.rate, size=I(3), 
      color = I('Blue'))

qplot(data=stats , x=Income.Group, y=Birth.rate, geom='boxplot')

qplot(data=stats, x=Internet.users, y=Birth.rate,color=Income.Group)

Countries_2012_Dataset <- c("Aruba","Afghanistan","Angola","Albania","United Arab Emirates","Argentina","Armenia","Antigua and Barbuda","Australia","Austria","Azerbaijan","Burundi","Belgium","Benin","Burkina Faso","Bangladesh","Bulgaria","Bahrain","Bahamas, The","Bosnia and Herzegovina","Belarus","Belize","Bermuda","Bolivia","Brazil","Barbados","Brunei Darussalam","Bhutan","Botswana","Central African Republic","Canada","Switzerland","Chile","China","Cote d'Ivoire","Cameroon","Congo, Rep.","Colombia","Comoros","Cabo Verde","Costa Rica","Cuba","Cayman Islands","Cyprus","Czech Republic","Germany","Djibouti","Denmark","Dominican Republic","Algeria","Ecuador","Egypt, Arab Rep.","Eritrea","Spain","Estonia","Ethiopia","Finland","Fiji","France","Micronesia, Fed. Sts.","Gabon","United Kingdom","Georgia","Ghana","Guinea","Gambia, The","Guinea-Bissau","Equatorial Guinea","Greece","Grenada","Greenland","Guatemala","Guam","Guyana","Hong Kong SAR, China","Honduras","Croatia","Haiti","Hungary","Indonesia","India","Ireland","Iran, Islamic Rep.","Iraq","Iceland","Israel","Italy","Jamaica","Jordan","Japan","Kazakhstan","Kenya","Kyrgyz Republic","Cambodia","Kiribati","Korea, Rep.","Kuwait","Lao PDR","Lebanon","Liberia","Libya","St. Lucia","Liechtenstein","Sri Lanka","Lesotho","Lithuania","Luxembourg","Latvia","Macao SAR, China","Morocco","Moldova","Madagascar","Maldives","Mexico","Macedonia, FYR","Mali","Malta","Myanmar","Montenegro","Mongolia","Mozambique","Mauritania","Mauritius","Malawi","Malaysia","Namibia","New Caledonia","Niger","Nigeria","Nicaragua","Netherlands","Norway","Nepal","New Zealand","Oman","Pakistan","Panama","Peru","Philippines","Papua New Guinea","Poland","Puerto Rico","Portugal","Paraguay","French Polynesia","Qatar","Romania","Russian Federation","Rwanda","Saudi Arabia","Sudan","Senegal","Singapore","Solomon Islands","Sierra Leone","El Salvador","Somalia","Serbia","South Sudan","Sao Tome and Principe","Suriname","Slovak Republic","Slovenia","Sweden","Swaziland","Seychelles","Syrian Arab Republic","Chad","Togo","Thailand","Tajikistan","Turkmenistan","Timor-Leste","Tonga","Trinidad and Tobago","Tunisia","Turkey","Tanzania","Uganda","Ukraine","Uruguay","United States","Uzbekistan","St. Vincent and the Grenadines","Venezuela, RB","Virgin Islands (U.S.)","Vietnam","Vanuatu","West Bank and Gaza","Samoa","Yemen, Rep.","South Africa","Congo, Dem. Rep.","Zambia","Zimbabwe")
Codes_2012_Dataset <- c("ABW","AFG","AGO","ALB","ARE","ARG","ARM","ATG","AUS","AUT","AZE","BDI","BEL","BEN","BFA","BGD","BGR","BHR","BHS","BIH","BLR","BLZ","BMU","BOL","BRA","BRB","BRN","BTN","BWA","CAF","CAN","CHE","CHL","CHN","CIV","CMR","COG","COL","COM","CPV","CRI","CUB","CYM","CYP","CZE","DEU","DJI","DNK","DOM","DZA","ECU","EGY","ERI","ESP","EST","ETH","FIN","FJI","FRA","FSM","GAB","GBR","GEO","GHA","GIN","GMB","GNB","GNQ","GRC","GRD","GRL","GTM","GUM","GUY","HKG","HND","HRV","HTI","HUN","IDN","IND","IRL","IRN","IRQ","ISL","ISR","ITA","JAM","JOR","JPN","KAZ","KEN","KGZ","KHM","KIR","KOR","KWT","LAO","LBN","LBR","LBY","LCA","LIE","LKA","LSO","LTU","LUX","LVA","MAC","MAR","MDA","MDG","MDV","MEX","MKD","MLI","MLT","MMR","MNE","MNG","MOZ","MRT","MUS","MWI","MYS","NAM","NCL","NER","NGA","NIC","NLD","NOR","NPL","NZL","OMN","PAK","PAN","PER","PHL","PNG","POL","PRI","PRT","PRY","PYF","QAT","ROU","RUS","RWA","SAU","SDN","SEN","SGP","SLB","SLE","SLV","SOM","SRB","SSD","STP","SUR","SVK","SVN","SWE","SWZ","SYC","SYR","TCD","TGO","THA","TJK","TKM","TLS","TON","TTO","TUN","TUR","TZA","UGA","UKR","URY","USA","UZB","VCT","VEN","VIR","VNM","VUT","PSE","WSM","YEM","ZAF","COD","ZMB","ZWE")
Regions_2012_Dataset <- c("The Americas","Asia","Africa","Europe","Middle East","The Americas","Asia","The Americas","Oceania","Europe","Asia","Africa","Europe","Africa","Africa","Asia","Europe","Middle East","The Americas","Europe","Europe","The Americas","The Americas","The Americas","The Americas","The Americas","Asia","Asia","Africa","Africa","The Americas","Europe","The Americas","Asia","Africa","Africa","Africa","The Americas","Africa","Africa","The Americas","The Americas","The Americas","Europe","Europe","Europe","Africa","Europe","The Americas","Africa","The Americas","Africa","Africa","Europe","Europe","Africa","Europe","Oceania","Europe","Oceania","Africa","Europe","Asia","Africa","Africa","Africa","Africa","Africa","Europe","The Americas","The Americas","The Americas","Oceania","The Americas","Asia","The Americas","Europe","The Americas","Europe","Asia","Asia","Europe","Middle East","Middle East","Europe","Middle East","Europe","The Americas","Middle East","Asia","Asia","Africa","Asia","Asia","Oceania","Asia","Middle East","Asia","Middle East","Africa","Africa","The Americas","Europe","Asia","Africa","Europe","Europe","Europe","Asia","Africa","Europe","Africa","Asia","The Americas","Europe","Africa","Europe","Asia","Europe","Asia","Africa","Africa","Africa","Africa","Asia","Africa","Oceania","Africa","Africa","The Americas","Europe","Europe","Asia","Oceania","Middle East","Asia","The Americas","The Americas","Asia","Oceania","Europe","The Americas","Europe","The Americas","Oceania","Middle East","Europe","Europe","Africa","Middle East","Africa","Africa","Asia","Oceania","Africa","The Americas","Africa","Europe","Africa","Africa","The Americas","Europe","Europe","Europe","Africa","Africa","Middle East","Africa","Africa","Asia","Asia","Asia","Asia","Oceania","The Americas","Africa","Europe","Africa","Africa","Europe","The Americas","The Americas","Asia","The Americas","The Americas","The Americas","Asia","Oceania","Middle East","Oceania","Middle East","Africa","Africa","Africa","Africa")

mydf <- data.frame(Countries_2012_Dataset, Codes_2012_Dataset, Regions_2012_Dataset)
colnames(mydf) <- c('Country', 'Code', 'Region')
rm(mydf)



mydf <- data.frame(Country = Countries_2012_Dataset, 
                   Code=Codes_2012_Dataset, Region=Regions_2012_Dataset)


merged <- merge(stats, mydf, by.x='Country.Code', by.y='Code')
merged <- merge(stats, mydf, by.x='Country.Code', by.y='Code', all=T)
merged <- merge(stats, mydf, by.x='Country.Code', by.y='Code', all.x = T)
merged <- merge(stats, mydf, by.x='Country.Code', by.y='Code',all.y = T)

merged$Country.Name<-NULL


qplot(data=merged, x=Internet.users, y=Birth.rate, size=I(3), 
      color=Region, shape=I(19), alpha=I(0.6))






