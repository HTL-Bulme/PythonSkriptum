# Grafische Darstellung von Programmen

Programme werden durch den Programmcode vollständig definiert.
Es ist aber auch möglich Programme grafisch darzustellen.
In dieser Darstellung können Programme oft einfacher verstanden werden.
Des Weiteren ist es auch für "Nicht-Programmierer" möglich ein Programm zu verstehen.

## Flussdiagramme

Zur Darstellung von einfachen Programmen verwenden wir Flussdiagramme
(engl. Flowcharts).
In den folgenden Abbildungen siehst du die Symbole aus
denen Flussdiagramme bestehen und einige Beispiele für komplette Flussdiagramme.

### Start / Stop
<img style="float: right; width:33%" src="./images/start_stop.png">
Dieses Symbol zeigt den Start und das Ende des Programms.
<div style="clear:both;"></div>

### Operation (Tätigkeit)
<img style="float: right; width:33%" src="./images/process.png">
Beschreibt eine Operation, wie eine Berechnung,
oder eine Wertzuweisung zu einer Variable.
<div style="clear:both;"></div>

### Eingabe / Ausgabe
<img style="float: right; width:33%" src="./images/input_output.jpg">
Beschreibt das Einlesen von Werten vom Benutzer oder die 
Ausgabe von Werten. Dieses Symbol entspricht den Funktionen `input` bzw. `print`.
<div style="clear:both;"></div>

### Verzweigung
<img style="float: right; width:33%" src="./images/decision.png">
Dieses Symbol repräsentiert die `if`-Verzweigung.
Es enhält eine Bedingung und zwei Ausgänge.
Je nachdem, ob die Bedingung erfüllt ist, wird entweder
zum einen Ausgang oder zum anderen verzweigt.
<div style="clear:both;"></div>

### Pfeil
<img style="float: right; width:33%" src="./images/arrow.png">
Der Pfeil verbindet die Symbole untereinander.
<div style="clear:both;"></div>


## Beispiele



### Passworteingabe

In diesem Beispiel soll der Benutzer eine Geheimnummer eingeben.
Die Geheimnummer ist 1735.

Falls die Eingabe richtig ist, soll das Programm: "Okay!" ausgeben.
Falls die Nummer falsch ist, soll das Programm: "ACCESS DENIED!" ausgeben.

![Flussdiagramm einer einfachen Passworteingabe](./images/beispiel1.png)

### Rabatt ab 1000€

In diesem Beispiel soll ein Rabatt von 150€ gewährt werden,
falls der Einkaufswert mehr als 1000€ beträgt.

![Flussdiagramm des Rabattberechnungsprogramms](./images/beispiel2.png)

### Flächenberechnung Quadrat

In diesem Beispiel der Benutzer nach der Seitenlänge eines
Quadrats gefragt werden. Falls die Seite kleiner als `0` ist,
so soll eine Fehlermeldung ausgegeben werden.
Ist die Seite größer oder gleich `0`, soll die Fläche berechnet
werden und danach ausgegeben werden. 

![Flussdiagramm der Flächenberechnung](./images/beispiel3.png)
