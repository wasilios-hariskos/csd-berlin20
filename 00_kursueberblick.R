# Eindimensionale Vektoren

namen_vektor <- c("Anton", "Anton", "Berta", "Berta")
noten_vektor <- c(2, 3, 4, 1)

names(noten_vektor) <- namen_vektor

print(noten_vektor)

# Funktionen 

help(c)
help(mean)
mean(noten_vektor)

mittelwert <- function(x){
  summe <- sum(noten_vektor)
  anzahl <- length(noten_vektor)
  return(summe / anzahl)
}

mittelwert(noten_vektor)


# Zweidimensionale Matrizen

noten_matrize <- matrix(data = noten_vektor,
                        nrow = 2,
                        byrow = TRUE)

rownames(noten_matrize) <- c("Anton", "Berta")
colnames(noten_matrize) <- c("Mathe-Klausur", "Statistik-Klausur")

print(noten_matrize)


# Faktoren

geschlecht_faktor <- factor(x = c("Mann", "Mann", "Frau", "Frau"))

print(geschlecht_faktor)


# Datensätze

klausuren_vektor <- c("Mathe", "Statistik", "Mathe", "Statistik")
klausur_daten <- data.frame(Name = namen_vektor, 
                            Geschlecht = geschlecht_faktor,
                            Klausur = klausuren_vektor, 
                            Note = noten_vektor)
klausur_daten



# Ausblick: Datenanalyse
install.packages("tidyverse")
library(tidyverse)

klausur_daten %>% 
  group_by(Geschlecht) %>% 
  summarize(Notendurchschnitt = mittelwert(Note),
            Standardabweichung = sd(Note))