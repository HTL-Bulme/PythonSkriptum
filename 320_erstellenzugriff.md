# Strings erstellen und auf Zeichen zugreifen

Strings können in Python wie Listen behandelt werden.
In diesem Abschnitt lernst du sie erstellst und auf einzelne Zeichen zugreifst.

## Strings erstellen

Wir erstellen einen String, indem wir einen Text in doppelte oder einfache
Hochkomma schreiben. Beispielsweise können wir eine String-Variable wie folgt erstellen:

```python
meinName = "Max Mustermann der Erste"
print(meinName)
```

Es ist auch möglich zwei oder mehrere Strings zu einem zu kombinieren.
Wir können das mit dem Plus-Operator bewerkstelligen: 

```python
vorname = "Max"
nachname = "Mustermann"
vollerName = vorname + " " + nachname

print(vollerName)
```

## Auf Zeichen zugreifen

Der Zugriff auf Zeichen, funktioniert wie bei Listen
über einen Index, der in eckige Klammern geschrieben wird.

```python
meinName = "Max Mustermann der Erste"
zeichen = meinName[1]
print(zeichen)
```
**Ausgabe: ** `a`

Das obige Programm gibt das Zeichen mit dem Index `1`, also
das zweite Zeichen aus.
Wir erinnern uns, das der Index bei `0` zu zählen beginnt,
das zweite Zeichen also den Index `1` hat.

Wie bei der Liste können wir auch die Länge mit der 
Funktion `len(x)` ermitteln. Die Länge eines Strings,
entspricht der Anzahl der Zeichen.

```python
meinName = "Max Mustermann der Erste"
print(len(meinName))
```
**Ausgabe: ** `24`



## Strings mit Schleife durchlaufen

Wie Listen können wir auch Strings mit einer Schleife durchlaufen.

```python
meinName = "Max Mustermann der Erste"
for i in range(0,len(meinName)):
    print("Index:",i,"Zeichen",meinName[i])
```
**Ausgabe:**
```
Index: 0 Zeichen M
Index: 1 Zeichen a
Index: 2 Zeichen x
Index: 3 Zeichen  
Index: 4 Zeichen M
Index: 5 Zeichen u
...
```

Das obige Programm gibt jedes Zeichen des Namens
ein einer eigenen Zeile und den zugehörigen Index
des Buchstabens aus.

Schön zu sehen ist, dass der Index bei `0` beginnt,
und das Leerzeichen in Zeile `4` ein Zeichen wie jedes andere ist.

## Escape Sequenzen

Nehmen wir an, wir möchten wieder eine String-Variable erstellen,
die dieses mal aber den Text "Max Mustermann "der Erste"" enthält,
wobei die Phrase "der Erste" in doppelten Hochkommas steht.

Der erste Versuch wäre:
```python
meinName = "Max Mustermann "der Erste""
print(meinName)
```

Das Ergebnis ist jedoch eine Fehlermeldung
in der steht, dass die Syntax nicht passt.
Python interpretiert die Hochkomma um "der Erste",
als Ende des Strings, bzw. als Anfang eines nächsten Strings.

Deshalb müssen wir vor den Hochkommas, die zum Strings selbst gehören,
einen Backslash (\\) setzen. Damit weiss Python, dass es sich um ein gewöhnliches Zeichen
handelt und nicht um das ende eines Strings.

Korrekt ist also:
```python
meinName = "Max Mustermann \"der Erste\""
print(meinName)
```

Den Backslash nennen wir auch das Escape (engl. Flucht) Zeichen,
und der Backslash mit dem doppelten Hochkomma ist eine sogenannte
Escape Sequenz.

Von diesen Escape Sequenzen gibt es noch mehr:

| Escape Sequenz  | Beschreibung | Beispiel |
| ------------- | ------------- |  ------------- | 
| `\"` 	| Doppeltes Hochkomma 	| `"Hallo \"Welt\" "` | 
| `\'` 	| Einfaches Hochkomma 	|  `"Hallo \'Welt\' "`  |
| `\\` |	Backslash 	|   `"Backslash: \\"`  |
| `\n` 	| Neue Zeile 	|   `"Zeile1 \n Zeile2"` |
| `\t` 	|Tabulator (Dickes Leerzeichen) 	| `"Hallo \t Welt "`  |
| `\Uxxxxxxxx` 	| Unicode Zeichen mit 8 Zeichen Hex-Code. | `"\U0001F4AA"`  |

Die Hex-Schreibweise von Zeichen ist besonders nützlich für Emojies.
Alle Emojies und den zugehörigen Code findest du auf https://emojipedia.org.
Unter "Technische Information" findest du den Codepunkt,
also die eindeutige Nummer als Hex-Zahl.
Diese Zahl musst du mit führenden Nullen auf 8 Zeichen auffüllen.
Aus 1F4AA wird also 0001F4AA.

Wenn du deine Code-Datei als Utf-8 Datei speicherst,
kannst du Emojies aber auch ganz einfach in den Code reinkopieren
und benötigst die Hex-Schreibweise nicht.

## Übungen

### 📝 Übung 80

Benutzer muss namen, vorname, strasse und hausnummer eingeben
in folgendem format ausgegeben:

Max Mustermann
Musterstrasse  83

### 📝 Übung 81

Rückwärts

### 📝 Übung 82

zähle wie oft das Zeichen a vorkommt


### 📝 Übung 83

Ist ein Wort ein Parlindrom oder nicht





