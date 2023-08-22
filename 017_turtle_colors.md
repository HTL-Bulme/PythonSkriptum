# Farben verwenden

In diesem Abschnitt lernst du wie man mit der Turtle bunte Bilder zeichnen kann.
Die Turtle kann sowohl farbige Linien als auch farbige Flächen zeichnen.

## Farbe des Stifts ändern

Über den Befehl setPenColor kannst du die Farbe des Stifts auswählen.
Wichtig ist, dass du den Farbnamen in Gänsefüsschen setzt.
Wie immer beim Programmieren kennt die Turtle nur englische Farbnamen.
Die folgende Liste ist zwar nicht vollständig, aber doch ein erster Anhaltspunkt: yellow, gold, orange, red, maroon, violet, magenta, purple, navy, blue, skyblue, cyan, turquoise, lightgreen, green, darkgreen, chocolate, brown, black, gray, white.

Zusätzlich kannst du noch die Dicke der pen ändern.
Mit dem Befehl setPenWidth setzt du die Dicke auf den gewünschten Wert.

Das folgende Beispiel zeigt wie du die Befehle anwenden kannst.
Wichtig ist bei setPenColor, dass du den Namen der Farbe in doppelte Hochkomma schreibst,
da es sich um einen Text handelt.

```python
from gturtle import *
makeTurtle()

setPenColor("blue")
dot(50)
pu()
fd(70)
setPenColor("red")
setPenWidth(50)
pd()
fd(100)
ht()
```

Das Programm erzeugt folgende Grafik:

![Ergebnis des Programms](./images/rufzeichen.png)

## Flächen mit einer Farbe füllen

Um eine Fläche auszufüllen, sagst du zuerst der Turtle mit `startPath()`,
dass sie sich ausgehend vom aktuellen Ort die nachfolgend gezeichnete Figur merken soll.
Mit dem Befehl `fillPath()` wird der jetzige Ort mit dem Startort verbunden 
und die eingeschlossene Fläche ausgefärbt. Mit `setFillColor()`
kannst du die Füllfarbe angeben (sagst du nichts, so ist sie standardmässig schwarz).

```python
from gturtle import *
makeTurtle()

setFillColor("magenta")
startPath()
fd(100)
rt(120)
fd(100)
rt(120)
fd(100)
rt(120)
fillPath()
```
Das Programm erzeugt folgende Grafik:

![Ergebnis des Programms](./images/triangle.png)

















