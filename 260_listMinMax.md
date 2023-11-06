# Minimum und Maximum berechnen

In diesem Kapitel geht es um die Fragestellung,
wie wir in einer Liste das Minimum bzw. das Maximum finden können.

Wieder gehen wir nach dem bekannten Muster vor:
Wir durchlaufen die Liste mit einer `for`-Schleife und untersuchen jedes Element.
Dieses Mal müssen wir prüfen, ob das Element kleiner ist, als alle anderen.

Wir können das bewerkstelligen, indem wir uns ein aktuelles Minimum wegspeichern.
Falls wir ein Element finden, welches kleiner ist, als dieses aktuelle Minimum,
so haben wir ein neues Minimum gefunden, und setzen das aktuelle Minimum auf
diesen Wert.
Wenn wir zum Schluss jeden Wert mit dem aktuellen Minimum vergleichen haben,
so können wir sicher sein, dass das aktuelle Minimum das Minimum der gesamten Liste ist.

Als Startwert für das aktuelle Minimum können wir jedes Element der Liste nehmen.
Der Einfachheit halber nehmen wir das erste Element, da dieses immer vorhanden ist.
(Ausnahme: Die Liste ist leer, dann gibt es aber auch kein Minimum)

```python
meineListe = [24, 13, -5, 102, 74, -87]
minimum = meineListe[0]

for i in range(0,len(meineListe)):
    if (meineListe[i] < minimum):
        minimum = meineListe[i]

print ("Das Minimum ist:", minimum)
```

## Übungen

### 📝 Übung 77

maximum

### 📝 Übung 78

minimum als Funktion

### 📝 Übung 79

größte Zahl, die durch drei teilbar ist





