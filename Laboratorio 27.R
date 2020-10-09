##Hecho con mucho gusto por: Suhail Montaño Sánchez##
##Universidad Autónoma del Estado de Hidalgo##
#Doctorado en Ciencias Económico Administrativas#

#Cargar paquetería

library(data.table)

choose.files()

green.products <- read.csv("C:\\Users\\Suha\\Downloads\\green products.csv")
all.products <- read.csv("C:\\Users\\Suha\\Downloads\\COMPLETE_YEARS_PRODUCTS.csv")

green.products <- as.data.table(green.products)

all.products <- as.data.table(all.products)

#merge

merge.allproducts = merge(all.products, green.products, by="product_code")

merge.full = merge(all.products, green.products, by="product_code", all.x = T)

write.csv(merge.full, file = "merge.ful.csv")
