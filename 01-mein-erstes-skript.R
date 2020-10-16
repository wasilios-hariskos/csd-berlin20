# Grundlagen

## Zuweisung und Ausgabe einer Variablen

### Erste Möglichkeit
meine_variable <- 4 
print(meine_variable) 

### Zweite Möglichkeit
z <- "Hallo"
z

### Dritte Möglichkeit
(meine_variable <- 5) 


## Rechenoperationen

### Zuweisungen
a <- 2
b <- 5
c <- 3

### Addition
a + b
a + c
sum(a, c)

### Subtraktion
a - c

### Multiplikation
a * c

### Division
a / b
a / 0

### Potenzieren
a^b     # a hoch b

### Modulo: Der Rest bei einer ganzzahligen Division
5 %% 2 

b %% a 

## Datentypen

### numeric
d <- 4.5
class(d)

### character
class("Hallo")

### logical
e <- TRUE
class(e)

class(T)

e <- T
e

e <- FALSE
e

e <- F
class(e)

# Vektoren

## Erstellen

v1 <- 1:5
v1

v2 <- c(2, 2, 3, 4, 5)
v2

c(2, 2:5)

v3 <- -1:2
v3

## Benennen

ein_vektor <- c("Martin Schulze", "Gastwirt")
ein_vektor

names(ein_vektor) <- c("Name", "Beruf")
ein_vektor

## Addition
v1
v2
v1 + v2

c(1, 2, 3, 4, 5, 6) + c(1, 2)
c(1, 2, 3, 4, 5, 6) + c(1, 2, 1, 2, 1, 2)

v3 <- c(1, 2, 3) + c(4, 5, 6)
v3

v4 <- c(1 + 4, 2 + 5, 3 + 6)
v4

2 -> h # exkurs

## Summieren 
c(1, 2, 5)
sum(c(1, 2, 5))

sum(1, 2, 5)

help(sum)
?c

c(1, 7:9)
c(1:5, 10.5, "next")

sum(v4)

sum(v3 == v4)

x <- c(FALSE, TRUE, TRUE, FALSE, TRUE)
sum(x)

sum(FALSE, TRUE, TRUE, FALSE, TRUE, FALSE)

sum(v3, v4)

## Auswählen / Subsetting

v2
v2[4]

v1
v1[1] <- "a"
v1

v1[1] <- 1
v1

class(v1)

is.numeric(v1)
is.character(v1)

class(as.numeric(v1))


v1
v1 <- as.numeric(v1)
v1

ein_vektor
index <- c("Beruf", "Name")
index
ein_vektor <- ein_vektor[index]
ein_vektor

ein_vektor[c(2, 1)]

v1 

v1[c(1, 5)]

v1[2:4]

v1[v1 > 3]

v1[v1 <= 3]

v1[(v1 <= 3) == FALSE]

## Auswählen durch Vergleich

x <- c(2, 5, 7)
y <- 2

x > y

x >= y

x == y

x != y # ungleich

idx <- x != y # index
idx

x
x[idx]

# Matrix

## Erstellen

help(matrix)

matrix(data = 1:9, 
       nrow = 3, 
       byrow = TRUE)

matrix(1:9, 3, 3 ,TRUE)

matrix(nrow = 3,
       byrow = TRUE,
       data = 1:9)

meine_matrix <- matrix(data = 1:9,
                    nrow = 3,
                    ncol = 3,
                    byrow = FALSE)
meine_matrix

?sum
sum(data = c(23, 20, 21, NA), 
    na.rm = FALSE)

## Benennen
help(rownames)

m2 <- cbind(1, 1:4)
m2
colnames(m2, do.NULL = FALSE)
colnames(m2) <- c("x","Y")
m2
rownames(m2) <- rownames(m2, do.NULL = FALSE, prefix = "Obs.")
m2

meine_matrix
rownames(meine_matrix) <- c("row 1", "row 2", "row 3")
meine_matrix
colnames(meine_matrix) <- c("col 1", "col 2", "col 3")
meine_matrix

help(matrix)

matrix(data = 1:9,
       nrow = 3,
       ncol = 3,
       byrow = FALSE,
       dimnames = list(c("row 1", "row 2", "row 3"),
                       c("col 1", "col 2", "col 3"))
)

## Summieren von Zeilen

meine_matrix

rowSums(meine_matrix)

## Summieren von Spalten

colSums(meine_matrix)

## Alle Elemente summieren
sum(meine_matrix)

## Zeilen oder Spalten hinzufügen

v5 <- c(3, 5, 7)

meine_matrix
v5
rbind(meine_matrix, meine_matrix, v5)

cbind(meine_matrix, c(1, 1, 1))

rbind(meine_matrix, c("3", "5", "7"))

## Auswählen

meine_matrix[1, 2]

meine_matrix[1:2, 2:3]

meine_matrix[, 1]

meine_matrix[1, ]

meine_matrix[1, 1:3]

dim(matrix(1:8, 4))

x <- 1:12
class(x)
dim(x) <- c(3, 4)
x
class(x)

## Rechenoperationen

meine_matrix * meine_matrix  * meine_matrix

meine_matrix ^ 3

meine_matrix + meine_matrix

meine_matrix - meine_matrix

meine_matrix / meine_matrix

meine_matrix %*% meine_matrix

meine_matrix %*% matrix(11:16, nrow = 3)

3 * meine_matrix

## Exkurs: Erklärung der Matrizenmultiplikation

### Matrizenmultiplikation (A %*% B = C)

x = 2 # Spaltenanzahl der 1. Matrix = Zeilenanzahl der 2. Matrix

A = matrix(data = 1:4, ncol = x)
A
dim(A)

B = matrix(data = 1:10, nrow = x)
B
dim(B)

C <- A %*% B 
C
dim(C) # Zeilenanzahl der 1. Matrix = Spaltenanzahl der 2. Matrix

### Auswahl eines Elements
zeile = 2
spalte = 1
C[zeile, spalte]

### Berechnung: Zeilenvektor * Spaltenvektor und aufsummieren (inneres Skalarprodukt)
A[zeile,] * B[,spalte]
sum(A[zeile,] * B[,spalte])


# Faktoren

## Erstellen
?factor

geschlecht <- c("Mann", "Frau", "Frau", "Mann")
class(geschlecht)
geschlecht

geschlecht_factor <- factor(geschlecht)
geschlecht_factor

## Nominalskalierte kategoriale Variable (unordered factor)

tiere <- c("Hund", "Katze", "Hund")
tiere
factor_tiere <- factor( x = tiere)
factor_tiere

## Vergleich von Elementen eines "unordered factor"

factor_tiere[1] > factor_tiere[2] # Vergleich macht keinen Sinn
factor_tiere[1] == factor_tiere[2] # Vergleich macht Sinn
factor_tiere[1] == factor_tiere[3] # Vergleich macht Sinn

## Ordinalskalierte kategoriale Variable (ordered factor)

temperatur <- c("hoch", "niedrig", "niedrig", "mittel")
factor_temperatur <- factor(x = temperatur,
                            ordered = TRUE,
                            levels = c("niedrig", "mittel", "hoch")
)
factor_temperatur

## Vergleich von Elementen eines "ordered factor"

factor_temperatur[1] > factor_temperatur[2] # Vergleich macht sinn
factor_temperatur[2] == factor_temperatur[3] # Vergleich macht sinn

## Änderung des Faktorlevels (aufgrund von Klarheit)

gender <- c(0, 1, 1, 0, 1, 0, 1) # 0 bedeutet "Frau" und 1 bedeutet "Mann"
gender 

help(levels) # mit der levels Funktion kann man die Kodierung anpassen 

factor_gender <- factor(gender)
factor_gender

levels(factor_gender) <- c("Frau", "Mann")

factor_gender

class(factor_gender)

# Datensätze (data frames)

## Beispiel

mtcars

class(mtcars)

help(mtcars)

## Überblick gewinnen

help(mtcars)

help(head)

letters
class(letters)
head(letters)
head(letters, n = Inf)

tail(mtcars)

str(mtcars)

help(str)

## Erstellen

help(data.frame) # see example

L3 <- LETTERS[1:3]
L3

fac <- sample(x = L3, 
              size = 10, 
              replace = TRUE)
fac
class(fac)

help(sample)

d <- data.frame(one = 1, # vector 1
                ranking = 1:10, # vector 2
                initial = fac) # vector 3
d

data.frame(1, ## The "same" with automatic column names
           1:10, 
           sample(L3, 10, replace = TRUE))

is.data.frame(d)

## Auswählen
d
d[1, 3]
d[1:3, 2:3]
d[1, ]
d[1:5, "initial"]
d$initial
d[,3]
d$one

## Subset: Untermengen bilden

help(subset) # see examples

help(airquality)
str(airquality)


head(airquality)
tail(airquality)

df1 <- subset(x = airquality, 
              subset = Temp > 80, 
              select = c(Ozone, Temp))
str(df1)

df2 <- subset(x = airquality, 
              subset = Day == 1, 
              select = c(-Temp, -Solar.R))

str(df2)

df3 <- subset(x = airquality, 
              select = Ozone:Wind)

str(df3)

help("NA")

## Order: Datensätze nach Variablen ordnen

help(order) # eigenes Beispiel

v <- c(100, 10, 1000, 50)

order(v) # was macht order

v
v[order(v)]  # Aufgabe: In aufsteigender reihenfolge anordnen
v[order(-v)]  # Aufgabe: In absteigender reihenfolge anordnen

head(df1)  # subset df1 von airquality nach Ozone anordnen:
df1[order(df1$Ozone), ]

help(cor) # Exkurs: Korrelation zwischen Ozone und Temp berechnen
cor(x = df1$Ozone, 
    y = df1$Temp,
    use = "complete.obs") # default value "everything" would yield NA

# Listen ----

## Erstellen

help(list) # eigenes Bespiel

vector1 <- c(4, 6, 10)
vector2 <- c("Klaus", "Werner", "Martin")
vector3 <- vector2 == "Werner"

vector3

help(matrix)
m1 <- matrix(data = 1:15, 
             nrow = 5)
m1

m2 <- matrix(data = 15:1,
             ncol = 5,
             byrow = TRUE)
m2
class(m2)

df1 <- data.frame(m2)
df1
class(df1)

df2 <- head(mtcars)
df2

df3 <- tail(airquality)
df3

meine_liste <- list(vector1, # liste erstellen
                    vector2,
                    vector3,
                    m1,
                    m2,
                    df1,
                    df2,
                    df3)

meine_liste

## Benennen

### Existierende

names(meine_liste) <- c("Numeric",
                        "Character",
                        "Logical",
                        "Matrix1",
                        "Matrix2",
                        "Datensatz1",
                        "Datensatz2",
                        "Datensatz3")
meine_liste

meine_liste$Datensatz2

### Neue Liste

meine_liste2 <- list(Numeric = vector1, # liste erstellen
                     Character = vector2,
                     Logical = vector3,
                     Matrix1 = m1,
                     Matrix2 = m2,
                     Datensatz1 = df1,
                     Datensatz2 = df2,
                     Datensatz3 = df3)

meine_liste2

## Elemente auswählen

meine_liste2$Datensatz3
meine_liste2$Datensatz3$Temp

meine_liste2[[8]]
meine_liste2[[8]][[4]]
class(meine_liste2[[8]][[4]])
meine_liste2[[8]][4]
class(meine_liste2[[8]][4])

meine_liste2[["Datensatz3"]]
meine_liste2[["Datensatz3"]]["Temp"]

meine_liste2$Datensatz3
meine_liste2$Datensatz3[4] # data.frame als output
meine_liste2$Datensatz3[[4]] # vector als output

## Element hinzufügen

text <- "Prima, wir sind fast fertig mit der Einführung in R."
text
meine_liste3 <- c(meine_liste2, text)
meine_liste3

meine_liste4 <- c(meine_liste2, Fazit = text)
meine_liste4

## Überblick gewinnen

head(meine_liste4)

tail(meine_liste4)

str(meine_liste4)