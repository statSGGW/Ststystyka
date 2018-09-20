Zadania 

# dane wczytujemy z internetu
daneSoc <- read.csv("http://biecek.pl/R/dane/daneSoc.csv", sep=";")

head(daneSoc)

attach(daneSoc)

install.packages(c("stats", "e1071", "psych", "car"))
library("stats")
library("e1071")
library("psych")
library("car")

# zakres
range(wiek)

# rozstęp międzykwarylowy
IQR(wiek)

# średnia
mean(wiek)

# średnia obcieta
mean(wiek, trim=0.2)

# średnia geometryczna
geometric.mean(wiek)

# średnia harmoniczna
harmonic.mean(wiek)

#mediana
median(wiek)

# moda
modes::mode(wiek)

# kwantyle
quantile(wiek, c(0.1,0.25,0.5,0.75,0.9))

# odchylenie medianowe
mad(wiek)

# odchylenie standardowe
sd(wiek)

# kurtoza
kurtosi(wiek)

# skośność
skewness(wiek)

summary(wiek)

summary(wyksztalcenie)

table(wyksztalcenie, praca)

# Wykresy

hist(wiek,5,main="Histogram zmiennej wiek", ylab="liczebności")
rug(wiek, side=1,ticksize=0.03,col="red")

h <- hist(wiek,30,main="Histogram zmiennej wiek", ylab="liczebności")
rug(jitter(wiek, factor=2), side=1,ticksize=0.03,col="red")
str(h)

hist(wiek,5,main="Histogram zmiennej wiek", ylab="proporcje", freq=FALSE)

boxplot(wiek~wyksztalcenie, data=daneSoc, col="orange")

# wykres pudełkowy z chmurą
boxplot(wiek)
tmpx = jitter(rep(1.3, length(wiek)), factor=3)
points(tmpx, wiek, pch=16, col="lightgrey", cex=0.5)

# wykres skrzypcowy
violinplot(wiek[plec=="mezczyzna"], wiek[plec=="kobieta"], wiek, names=c("wiek M", "wiek K", "wiek"))

# wykres rozrzutu
sp(cisnienie.skurczowe,cisnienie.rozkurczowe,groups=plec,smooth=FALSE, boxplots="xy", lwd=3, pch=c(20,21), cex=1.5)


Zadania do samodzielnego wykonania

1. Zapisz dane iris do pliku tekstowego i csv.
2. Zaimportuj dane do Excell i przygotuj do analizy
3. Wykonaj statystyke opisową w Excel dla zaimportowanych danych oraz stwórz wykresy.
4. Otwórz w Excel plik z danymi.
5. Zaznacz tabelę z danymi i zaimportuj do R z wykorzystaniem pakietu readr (przeklejanie).
6. Wykonaj statystykę opisową w R oraz stwórz różne wykresy diagnostyczne.