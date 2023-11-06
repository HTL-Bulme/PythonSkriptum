# Hinzufügen und Löschen von Elementen

Wir können auch neue Elemente zu Listen hinzufügen
und vorhandene Elemente löschen.

## Hinzufügen von Elementen

Zum hinzufügen von Elementen existieren zwei Funktionen:

* `append(x)`
* `insert(i,x)`

Die Funktion `append(x)` fügt ein neues Element mit dem Wert
`x` am Ende der Liste ein. Bei der Funktion 
`insert(i,x)` kann der Index des neuen Elementes angegeben werden.

Diese Funktionen gehören zur Liste.
Deshalb ist die Syntax bei den Listenfunktionen etwas anders.
Wir schreiben `listenname.funktion(argumente)`.

ℹ️ Streng genommen nennen wir diese spezielle Art von
Funktionen *Methoden*, wir bleiben hier aber beim Begriff der Funktion.
Dazu aber in der 3. Klasse mehr. 😉 

### append

Sehen wir uns zuerst `append(x)` an:
```python
meineListe = [24, 13, -5, 102, 74, -87]
meineListe.append(99)
print(meineListe)
```
Das Programm gibt `[24, 13, -5, 102, 74, -87, 99]` aus.
Die Zahl 99 wird also als neues Element am Ende angehängt.

### insert

Die Funktion `insert(i,x)` fügt x als neues Element
an der Position `i` ein. Die Elemente,
die entweder am Index `i` oder dahinter waren,
werden nach hinten geschoben:

```python
meineListe = [24, 13, -5, 102, 74, -87]
meineListe.insert(2,99)
print(meineListe)
```

Das Programm gibt `[24, 13, 99, -5, 102, 74, -87]` aus.
Die Zahl 99 wird also als neues Element **am Index 2** eingefügt.
Die Elemente, die am Index `2` oder dahinter waren,
wurden um eins nach hinten geschoben.

## Entfernen von Elementen

Auch zum Entfernen von Elementen existieren zwei Funktionen:

* `remove(x)`
* `pop(i)`

Die Funktion `remove(x)` sucht das Element `x` in der Liste,
und entfernt es. Falls das Element mehrfach vorkommt,
wird nur das erste gefundene Element gelöscht.

Die Funktion `pop(i)` löscht das Element am Index `i`.

### remove

```python
meineListe = [24, 13, -5, 102, 74, -87]
meineListe.remove(-5)
print(meineListe)
```

Das Programm gibt `[24, 13, 102, 74, -87]` aus.
Das Element `-5` wurde entfernt.
In deiner Liste darf es keine Lücken geben,
deshalb tritt das Element `102` and die Stelle von `-5`,
das Element `74` an die Stelle von `102` und so weiter.
Alle Elemente die hinter dem entfernten Element liegen,
werden beim Entfernen um eine Stelle nach vor verschoben.

### pop

```python
meineListe = [24, 13, -5, 102, 74, -87]
meineListe.pop(1)
print(meineListe)
```

Das Programm gibt `[24, -5, 102, 74, -87]` aus.
Es wurde also das Element am Index `1`,
also das Element `13` gelöscht.
wie bei der `remove`-Funktion werden auch hier,
die dahinter liegenden Elemente um eins nach
vor verschoben.


Die Funktion `pop` kann auch ohne Argument aufgerufen werden.
Dann wird das letzte Element der Liste entfernt.

```python
meineListe = [24, 13, -5, 102, 74, -87]
meineListe.pop()
print(meineListe)
```

Das Programm gibt `[24, 13, -5, 102, 74]` aus.
Es wurde also das Element `-87` entfernt.

ℹ️ Das entfernen des letzten Elements kann deutlich schneller sein,
als ein Element weiter vorne zu entfernen,
da es keine Elemente gibt die nachrücken müssen.

## 💡 Beispiel: Liste mit allen Zahlen von 1 bis 100


## 💡 Beispiel: Liste vom Benutzer füllen lassen




## Übungen

### 📝 Übung 65
Liste aller geraden Zahlen von 2 bis 100

### 📝 Übung 66
Liste der Quadratzahlen bis 100


### 📝 Übung 67
Liste von 100 bis 0


### 📝 Übung 68
Liste aller Zahlen von 20 bis 50 erstellen
Benutzer kann sagen welche Elemente er entfernen möchte
bei negativer Zahl abbruch









