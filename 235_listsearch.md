# Suchen von Elementen

In den vorhergegangenen Kapiteln haben wir Listen angelegt,
Elemente hinzugefügt und entfernt.
Jedoch haben wir beim Entfernen gesehen,
dass das Programm mit einer Fehlermeldung abstürzt,
wenn das Element, welches wir entfernen möchten, nicht existiert.

Uns fehlt also noch eine Möglichkeit zu prüfen, ob Elemente existieren.
Diesen Prozess nennen wir "Suchen" und 
das werden wir in diesem Kapitel Schritt-für-Schritt erarbeiten.

## Liste mit Schleife durchlaufen

Um zu überprüfen, ob ein gewisses Element in einer Liste existiert,
bleibt uns nichts anderes übrig, als jedes Element einzeln zu überprüfen.
Sehen wir uns nochmals die bereits bekannte Liste an:

![Darstellung einer Liste mit sechs Elementen](./images/lists.png)

Nehmen wir an, wir möchten überprüfen, ob die zahl `74` existiert,
so könnten wir folgendes schreiben:

```python
meineListe = [24, 13, -5, 102, 74, -87]
wert = 74

if (meineListe[0] == wert):
    print("gefunden")
if (meineListe[1] == wert):
    print("gefunden")
if (meineListe[2] == wert):
    print("gefunden")
if (meineListe[3] == wert):
    print("gefunden")
if (meineListe[4] == wert):
    print("gefunden")
if (meineListe[5] == wert):
    print("gefunden")
```

Das wäre etwas umständlich, würde aber funktionieren,
solange die Liste immer 6 Elemente hat.
Wenn wir aber einmal scharf auf den Code draufschauen,
dann sehen wir, dass wir 6 mal denselben Code,
nur mit einem anderen Index ausführen.
Hier ergibt sich also die Möglichkeit die **for-Schleife** einzusetzen,
um den Code kürzer zu machen.

```python
meineListe = [24, 13, -5, 102, 74, -87]
wert = 74

for i in range(0,6):
    if (meineListe[i] == wert):
        print("gefunden")
```

Wir haben also eine `for`-Schleife erstellt,
die von 0 bis inklusive 5 läuft.
Bei jedem Schleifendurchlauf,
wird die Variable `i` um `1` erhöht.
Beim ersten Mal hat `i` den Wert `0`,
beim zweiten Mal `1`, und so weiter.
Die Schleife läuft, solange `i` kleiner als `6` ist,
also von `0` bis `5`.

Dieses Programm ist nun schon viel eleganter,
da es keine Code Duplikate enthält.
Jedoch funktioniert es noch immer nur
für Listen der Länge 6.

Wir können aber die Länge einer Liste auch
von Python mit der `len`-Funktion berechnen lassen.
Die Funktion `len` verlangt als Argument eine Liste
und gibt die Länge der Liste zurück.
Wenn wir die Zahl `5` im obigen Programm durch `len(meineListe)`
ersetzen, funktioniert das Programm für Listen beliebiger Länge:

```python
meineListe = [24, 13, -5, 102, 74, -87]
wert = 74

for i in range(0,len(meineListe)):
    if (meineListe[i] == wert):
        print("gefunden")
```

Das obige Programm wirst du häufig wiedersehen.
Es ist ein Muster, welches immer wieder vorkommt.
Man möchte eine Aussage über die Liste treffen,
und dafür muss man mit jedem einzelnen Element etwas machen.
Man sagt auch man **durchläuft** die Liste mit einer `for`-Schleife.

## Resultat der Suche in Flag-Variable speichern

Das folgende Programm macht schon fast was es soll.
Es überprüft, ob ein Element in einer Liste vorkommt.
Falls es vorkommt, gibt das Programm den Text "gefunden" aus.

```python
meineListe = [24, 13, -5, 102, 74, -87]
wert = 74

for i in range(0,len(meineListe)):
    if (meineListe[i] == wert):
        print("gefunden")
```

Die Text-Ausgabe ist für uns ungünstig, da wir auf diesen später nicht
mehr im Programm zugreifen können.
Besser wäre eine Variable, die speichert, ob das Element vorhanden war oder nicht. 
Soche Variablen, die angeben ob eine Bedingung zutrifft oder eben nicht zutrifft, 
nennen wir **Flag**-Variablen oder kurz ein Flag. Der Name rührt von einer Fahne (engl. Flag) her,
die im bildlichen Sinne gehisst wird, falls eine Bedingung zutrifft,
bzw. gesenkt wird, falls eine Bedingung nicht zutrifft.
Flags können nur zwei verschiedene Werte haben `True` oder `False`.

In unserem Beispiel müssen wir zuerst davon ausgehen, dass der Wert nicht vorhanden ist,
also setzen wir das Flag auf `False`. Falls wir ein Element finden, setzen wir das Flag auf `True`.

Im folgenden Code wird das Flag `gefunden` genannt und standardmässig auf `False` gesetzt.
```python
meineListe = [24, 13, -5, 102, 74, -87]
wert = 74

gefunden = False
for i in range(0,len(meineListe)):
    if (meineListe[i] == wert):
        gefunden = True
```

## Suche als Funktion definieren

Die Suche nach einem Element in einer Liste,
ist etwas, dass wir sicher häufiger benötigen werden.
Deshalb macht es Sinn diese Funktionalität in eine eigene Funktion zu packen.

Die Funktion sollte zwei Parameter haben:

* die Liste die durchsucht werden soll
* die Zahl nach der gesucht werden soll

Die Funktion sollte einen Rückgabewert haben,
der angibt, ob das Element gefunden wurde, oder nicht.

```python
def sucheElement(liste, wert):
    gefunden = False
    for i in range(0,len(liste)):
        if (liste[i] == wert):
            gefunden = True
    return gefunden

def main():
    meineListe = [24, 13, -5, 102, 74, -87]
    print(sucheElement(meineListe,13))
    print(sucheElement(meineListe,555))

main()
```

Im obigen Programm wurde die Suche nach dem Element in eine eigene Funktion ausgelagert.
In der Main Funktion wird die sucheElement Funktion zwei Mal aufgerufen.
Beim ersten Mal wird `True` ausgegeben, da `13` ein Element der Liste ist.
Beim zweiten Mal wird `False` ausgegeben, da `555` **kein** Element der Liste ist.




## Übungen

### 📝 Übung 69

neue funktione
auf welchem index vorkommt

### 📝 Übung 70
zählen wie oft vorkommt

### 📝 Übung 71
ersetzen falls gefunden


### 📝 Übung 72
zählen wir viele gerade zahlen







