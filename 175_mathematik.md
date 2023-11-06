# Mathematische Funktionen

Bis jetzt haben wir die Grundrechenarten, die Ganzzahldivision,
Modulo und das Potenzieren in Python kennengelernt.
Python bietet uns aber eine sehr umfangreiches **Modul** an mathematischen Funktionen.
In diesem Kapitel sehen wir uns einige dieser Funktionen an.

## Importieren des Mathematik-Moduls

Das importieren von Modulen kennen wir bereits von der Turtle.
Für die Turtle mussten wir `from gturtle import *` schreiben,
wobei `gturtle` gerade der Name des Turtle-Moduls war.

Das Mathematik-Modul heißt in Python `math`, also schreiben wir für den import:
```python
from math import * 
```

## Runden von Werten

Sehen wir uns folgendes Programm an:
```python
drittel = 1 / 3
print(drittel) 
```
Es wird die Zahl 1 durch drei dividiert und anschließend mit `print` ausgegeben.
Die Ausgabe ist standardmäßig: `0.3333333333333333`.
Es werden also 16 Nachkommastellen ausgegeben.
Das ist vielleicht zu viel.
Mit der Funktion `round` können wir auf eine bestimmte Anzahl Nachkommastellen runden.

```python
from math import * 
drittel = 1 / 3
gerundet = round(drittel, 2)
print(gerundet) 
```

Die Funktion `round` hat zwei Parameter: Der erste Parameter ist die Zahl die gerundet
werden soll, und der zweite Parameter ist die Anzahl der gewünschten Nachkommastellen.

Manchmal möchte man auch eine Zahl zur nächsten ganzen Zahl auf- oder abrunden.
hierzu gibt es die beiden Funktionen `floor` und `ceil`.
Die Funktion `floor` (engl. Boden) rundet eine Gleitkommazahl ab,
die Funktion `ceil` (von ceiling engl. Decke) rundet eine Gleitkommazahl auf.

```python
from math import * 
zahl = 4.123
abgerundet = floor(zahl)
aufgerundet = ceil(zahl)
print("Die Zahl ist:", zahl)
print("Die nächst kleinere ganze Zahl: ", abgerundet) 
print("Die nächst größere ganze Zahl: ", aufgerundet) 
```

## Quadratwurzel einer Zahl

Bis jetzt haben wir zur Berechnung der Quadratwurzel eine Zahl mit dem Exponenten `0.5`
potenziert. "Hoch einhalb" ist dasselbe wie das Ziehen der 2. Wurzel.

Es gibt aber auch eine spezielle Funktion für das ziehen der Quadratwurzel.
Die Funktion heißt `sqrt`, kurz für Squareroot (engl. Quadratwurzel), und hat einen Parameter.
Der Parameter ist gerade die Zahl aus der die Wurzel gezogen werden soll.

```python
from math import * 
zahl = 16
wurzel = sqrt(zahl)
print("Die Wurzel ist: ", wurzel) 
```

## Die Kreiszahl π und die eulersche Zahl e

Die Kreiszahl π kennen wir aus dem Mathematikunterricht, sie ist
die mathematische Konstante, die das Verhältnis des Umfangs eines Kreises zu seinem
Durchmesser angibt. Sie ist näherungsweise 3.141592.

Die eulersche Zahl ist ebenfalls eine mathematische Konstante,
die in den folgenden Jahren noch häufig im Mathematikunterricht vorkommen wird.
Sie wird benutzt um Wachstumsprozesse, wie das Wachstum von Wäldern
oder das Wachstum von Bakterienkulturen zu beschreiben.
Ihr Wert ist näherungswiese 2.71828.

Um mit pi und e zu rechnen könnten wir eine eigene Variable anlegen:
```python
meinEigenesPI = 3.141592
meinEigenesE  = 2.71828
```

Dann müssten wir die Variable aber bei jedem Programm neu definieren.
Das ist umständlich und birgt die Gefahr, dass wir uns vertippen.
Glücklicherweise werden die Konstanten bereits vom Mathematik-Modul 
mit einer Genauigkeit von **15** Nachkommastellen mitgeliefert.

```python
from math import * 
print(pi)
print(e)
```

## Weitere Funktionen

Python bietet noch viele weitere mathematische Funktionen an.
Diese sind aber bis jetzt in Mathematik in eurer Klasse noch nicht vorgekommen.

Eine vollständige Liste aller Funktionen
findest du hier: https://docs.python.org/3/library/math.html



## Übungen

### 📝 Übung 53

Schreibe ein Programm bei dem der Benutzer zuerst wählen kann ob er
das Volumen eines Zylinders (1) oder das Volumen einer Kugel (2) berechnen möchte.

Falls der Benutzer `1` eingibt, so soll er nach dem Radius und nach der Höhe
des Zylinders gefragt werden. Danach soll das Volumen berechnet werden und
ausgegeben werden.

Falls der Benutzer `2` eingibt, soll nach dem Radius der Kugel gefragt werden,
das Volumen der Kugel berechnet und ausgegeben werden.

### 📝 Übung 54

Schreibe ein Programm, bei dem der Benutzer die Wurzel einer Zahl berechnen kann.
Zuerst soll die Zahl vom Benutzer eingegeben werden.
Falls die Zahl kleiner als `0` ist, so soll eine Fehlermeldung ausgegeben werden.
Ansonsten soll die Wurzel mit der `sqrt`-Funktion berechnet und ausgegeben werden.

## 🧭 Zusammenfassung














