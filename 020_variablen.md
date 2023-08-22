# Variablen 

Bis jetzt haben wir schon einige Programme geschrieben, welche Grafiken gezeichnet haben.
Jedoch sehen diese Grafiken immer gleich aus. 
Spannender wäre es, wenn der Benutzer unseres Programms bei jedem Start
des Programms eingeben könnte, wie genau die Grafik genau aussehen sollte.
Beispielsweise könnte ein Benutzer eingeben,
dass er gerne drei Schneeflocken mit je acht Ästen haben möchte.

In diesem Kapitel lernst du **Variablen** kennen.
Mit Variablen kannst du dein Programm beispielsweise von
Benutzereingaben abhängig machen.
Dadurch werden die Programme **interaktiv** und viel **flexibler**.

## Was sind Variablen?
Variablen sind benannte Speicherplätze für Werte.
Immer wenn man sich im Programm etwas "merken" möchte,
um es später wieder zu verwenden, benötigt man Variablen.

Nehmen wir an, wir möchten ein Quadrat zeichnen und schreiben dazu folgenden Code:

```python
from gturtle import *
makeTurtle()

fd(50)
rt(90)
fd(50)
rt(90)
fd(50)
rt(90)
fd(50)
rt(90)
```

Dieses Quadrat ist aber immer gleich groß, denn es hat die Seitenlänge `50`.
Möchten wir das Quadrat vergrößern, also beispielsweise von `50` auf `75`,
so müssten wir vier mal die Zahl `50` abändern.

Besser wäre es, wenn wir die Zahl `50` einmal in einen Speicherplatz ablegen,
und jedes mal den Wert des Speicherplatzes benutzen.
So müssen wir die Zahl `50` nur einmal schreiben.

## Definition von Variablen

Bevor wir eine Variable benutzen müssen wir sie anlegen.
Wir geben ihr dabei einen Namen und einen Startwert.
Den Vorgang des Anlegens einer Variable nennt man **Definition** der Variable.
Die Namen für Variablen sollten kurz und verständlich sein.
Für die Seite eines Quadrats könnte man `a` verwenden.

Um eine Variable mit dem Namen `a` und dem Wert `50` zu definieren,
schreibt man:

```python
a = 50
```


Die Variable mit dem Namen `a` kann nun überall dort verwendet werden,
wo normalerweise der Wert `50` steht.

Wir könnten also ein neues Programm schreiben,
bei dem die Seitenlänge deutlich einfacher geändert werden kann,
da die Zahl `50` nur an einer Stelle vorkommt.

```python
from gturtle import *
makeTurtle()

a = 50

fd(a)
rt(90)
fd(a)
rt(90)
fd(a)
rt(90)
fd(a)
rt(90)
```

**⚠️ Vorsicht:** Der Name der Variable muss auf der linken Seite des `=` Zeichens stehen
und auf der rechten Seite der Wert, welcher der Variable zugewiesen werden soll.
Die Zeile `50 = a` führt zu einem Fehler.


## Eigenschaften von Variablen

Variablen haben in Python drei Eigenschaften

+ Name
+ Typ
+ Wert

**Name**: Mit dem Namen wird die Variable angesprochen.
Der Name sollte kurz und vielsagend sein.
Variablennamen müssen mit einem Buchstaben beginnen und 
dürfen nur Buchstaben, Ziffern und das Zeichen Underscore "_" enthalten.
Leerzeichen sind nicht erlaubt und deutsche Sonderzeichen,
wie "ß" oder "ö", sollten vermieden werden.

+ **Gültige** Variablennamen sind bspw.: `seite_a`, `hoehe` oder `radius2`
+ **Ungültige** Variablennamen sind bspw.: `2radius`, `höhe` oder `seite a`


**Typ**: Eine Variable kann verschiedene Arten von Werten beinhalten.
Wir unterscheiden hier drei grundlegende Typen:

+ Integer: Ganzzahlige Werte, wie beispielsweise: 1, 2, 3 aber auch 0 und -1, -2 etc.
+ Float: Zahlen in Gleitkommadarstellung: 1.001, 3.2, 8.9293 oder -1130.23
+ String: Texte wie beispielsweise "Hallo" oder "Guten Morgen"

**Wert**: Jede Variable hat einen Wert. Der Wert der Variable kann
im Programm laufend geändert werden. 

_________________

## Übungen

### 📝 Übung 9
Prüfe welche der folgenden Variablendefinitionen gültig sind,
indem du sie Zeile für Zeile in den Codeeingabe-Bereich kopierst und Start klickst

```python
meine_Variable = 123.4
beste Variable Ever = 123
x_y_z = 2000
t = -7
15.4 = y
x-y-z = 2000
import = 4
```

### 📝 Übung 10

Schreibe ein Programm, bei dem am Anfang zwei Variablen definiert werden.
Die Variable `seite_a` soll den Wert 60 bekommen, und die Variable `seite_b`
soll den Wert 80 bekommen.

Nach der Variablendefinition soll ein Rechteck mit den Seitenlängen
`seite_a` und `seite_b` gezeichnet werden.

**Wichtig:** Beachte, dass du die Zahlen `60` und `80` nur einmal im Programm benötigst. 


## 🧭 Zusammenfassung

+ Variablen sind benannte Speicherplätze für Werte
+ Variablen müssen vor der Verwendung angelegt (definiert) werden
+ Dabei steht der Name der Variablen immer links vom Gleichheitszeichen = und der Wert rechts davon. Beispiel `seite_a = 23`
+ Variablen haben drei Eigenschaften: Name, Typ und Wert
+ Typen sind bspw. Integer (Ganzzahl), Float (Gleitkommazahl) und String (Text)














