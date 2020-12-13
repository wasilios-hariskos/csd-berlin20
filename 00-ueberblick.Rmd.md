Computergestützte Statistische Datenanalyse in R
========================================================
author: Dr. Wasilios Hariskos
date: 
autosize: true

Netzbasierte Versionsverwaltung
========================================================

**Github und Git**
- Alle Kursmaterialien sind frei zugänglich und befinden sich in diesem [Github Repositorium](https://github.com/wasilios-hariskos/csd-berlin20).
- Github ist ein Internetdienst für die Versionsverwaltung Git.
- Github ist sehr beliebt bei Wissenschaftlern und Programmierern und erleichtert die kollaborative Datenanalyse.

**Weiterführende Quellen**
- Buchkapitel [Github and Git](https://r-pkgs.org/git.html) aus dem Buch [R Packages](https://r-pkgs.org/)
- Buch [Happy Git with R](https://happygitwithr.com/)
- Wissenschaftlicher Artikel [A Quick Introduction to Version Control with Git and GitHub](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1004668)
- YouTube Video [An Introduction to Git and GitHub](https://www.youtube.com/watch?v=MJUJ4wbFm_A)

Programmieren mit R
========================================================

- Eindimensionale Vektoren

```r
namen_vektor <- c("Anton", "Anton", "Berta", "Berta")
noten_vektor <- c(2, 3, 4, 1)

names(noten_vektor) <- namen_vektor

print(noten_vektor)
```

```
Anton Anton Berta Berta 
    2     3     4     1 
```

- Zweidimensionale Matrizen

```r
noten_matrize <- matrix(data = noten_vektor,
                        nrow = 2,
                        byrow = TRUE)

rownames(noten_matrize) <- c("Anton", "Berta")
colnames(noten_matrize) <- c("Mathe-Klausur", "Statistik-Klausur")

print(noten_matrize)
```

```
      Mathe-Klausur Statistik-Klausur
Anton             2                 3
Berta             4                 1
```

- Faktoren

```r
geschlecht_faktor <- factor(x = c("Mann", "Mann", "Frau", "Frau"))

print(geschlecht_faktor)
```

```
[1] Mann Mann Frau Frau
Levels: Frau Mann
```

- Datensätze


```r
klausuren_vektor <- c("Mathe", "Statistik", "Mathe", "Statistik")
klausur_daten <-data.frame(Name = namen_vektor, 
                           Geschlecht = geschlecht_faktor,
                           Klausur = klausuren_vektor, 
                           Note = noten_vektor)
klausur_daten
```

```
   Name Geschlecht   Klausur Note
1 Anton       Mann     Mathe    2
2 Anton       Mann Statistik    3
3 Berta       Frau     Mathe    4
4 Berta       Frau Statistik    1
```

- Funktionen

```r
mittelwert <- function (x){
  summe <- sum(noten_vektor)
  anzahl <- length(noten_vektor)
  return(summe / anzahl)
}

mittelwert(noten_vektor)
```

```
[1] 2.5
```

- Ausblick: Datenanalyse

```r
library(tidyverse)

klausur_daten %>% 
  group_by(Geschlecht) %>% 
  summarize(Notendurchschnitt = mittelwert(Note),
            Standardabweichung = sd(Note))
```

```
# A tibble: 2 x 3
  Geschlecht Notendurchschnitt Standardabweichung
  <fct>                  <dbl>              <dbl>
1 Frau                     2.5              2.12 
2 Mann                     2.5              0.707
```


- Listen


Slide With Plot
========================================================

![plot of chunk unnamed-chunk-4](00-ueberblick.Rmd-figure/unnamed-chunk-4-1.png)
