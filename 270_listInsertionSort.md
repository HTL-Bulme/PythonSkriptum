# Sortieren von Listen

Zwei der wichtigsten Aufgaben in der Informatik überhaupt sind "suchen" und "sortieren".
Das Sortieren ist unter anderem
deshalb wichtig, weil es viel schneller geht, etwas in einer sortierten
Liste zu suchen.

Eines der mächtigsten Unternehmen der Welt – Google
– basiert darauf, die Webseiten im Internet sortieren und damit eine
Suchfunktion anzubieten.
Für das Sortieren gibt es sehr gute und schnelle Algorithmen. In diesem
Abschnitt schauen wir uns allerdings einen etwas langsameren Algorithmus an,
der dafür gut verständlich ist.

## Sortieren durch n-faches Berechnen des Minimums

im letzten Abschnitt haben wir uns eine Minimum-Funktion gebaut:

```python
def minimum(liste):
    minimum = liste[0]
    for i in range(0,len(liste)):
        if (liste[i] < minimum):
            minimum = liste[i]
    return minimum
```

Die Idee für das Sortierprogramm ist die folgende:

1. Wir haben eine zu sortierende Liste (Liste A)
1. Wir erstellen eine neue leere Liste (Liste B)
1. Wir suchen das Minimum aus Liste A
1. Wir fügen das Minimum in Liste B ein
1. Wir entfernen das Minimum aus Liste A
1. Wir machen weiter mit Schritt 3, bis die Liste A keine Elemente mehr enthält

## Implementierung


Die folgende Funktion `sortieren` implementiert diese Idee.
In der ersten Zeile wird eine neue leere Liste erstellt.
Danach folgt die while Schleife.
Diese Schleife wird solange ausgeführt,
solange es noch Elemente in der Liste A gibt.

Solange das der Fall ist, wird mit der Funktion `minimum(liste)`
das Minimum der Liste berechnet.
Dieses Minimum wird zu Liste B hinzugefügt und
aus Liste A entfernt.

Am Ende stehen die Elemente in sortierter Reihenfolge in der Liste B.
Diese wird mit return zurückgegeben.

```python
def sortieren(listeA):
    listeB = []
    
    while (len(listeA) > 0):
        minimumElement = minimum(listeA)
        listeB.append(minimumElement)
        listeA.remove(minimumElement)

    return listeB
```




