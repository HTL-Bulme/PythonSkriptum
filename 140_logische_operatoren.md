# Logische Operatoren

Mit der `if`-Verzweigung haben wir geprüft, ob eine Bedingung zutrifft.
Doch was, wenn wir prüfen möchten, ob bei zwei Bedingungen, beide erfüllt sind.
Nehmen wir an, wir möchten ein Programm schreiben, welches prüft,
ob einem Bankkunden eine Kredit vergeben werden darf.
Für einen Kredit muss der Kunde über 18 Jahre alt sein
und zusätzlich über 50000€ auf seinem Sparkonto haben.

Für solche Bedingungen benötigen wir **logische Operatoren**.
Mit diesen lassen sich zwei oder mehrere
Bedingungen zu einer Bedingung kombinieren.
In diesem Kapitel lernen wir die Operatoren `and`, `or` und `not` in Python kennen.
Diese Operatoren werden dir bekannt vorkommen,
denn du kennst sie bereits aus *NWES* 😉.

## and, or, not

Das Ergebnis einer Bedingung ist ein Wahrheitswert, also entweder **wahr** oder **falsch**.
In Python werden diese beiden Begriffe mit `True`, bzw. mit `False` bezeichnet.
Intern handelt es sich aber nur um Platzhalter für die Werte `0` und `1`.
Überall, wo wir `True`, bzw. `False` schreiben, könnten wir genauso gut `1`
bzw. `0` schreiben, jedoch sind die ausgeschriebenen Platzhalter leichter lesbar.

Diese Wahrheitswerte können mit logischen Operatoren
kombiniert werden. In den folgenden Tabellen siehst du das 
Ergebnis der Operation.

###and

| A        | B | A and B |
| :------: | :------: | :------: |
| False    |   False   | False |
| False    |   True   | False |
| True     |  False   | False |
| True     |  True   | True |

###or

| A        | B | A or B |
| :------: | :------: | :------: |
| False    |   False   | False |
| False    |   True   | True |
| True     |  False   | True |
| True     |  True   | True |

###not

| A        | not A |
| :------: | :------: | 
| False    |   True   |
| True    |   False   | 


## 💡 Beispiel

Im folgenden Beispiel siehst du mehrere `if`-Verzweigungen.
Die Bedinungen der `if`-Verzweigungen bestehen aus mehreren
Bedingungen, die mit logischen Operatoren kombiniert werden.



```python
def main():
    zahl1 = int(input("Geben Sie eine Zahl ein"))
    zahl2 = int(input("Geben Sie noch eine Zahl ein"))

    if ((zahl1 > 0) and (zahl2 > 0)):
        print("Beide Zahlen sind größer als 0")

    if ((zahl1 == 5) or (zahl2 == 5)):
        print("Zumindest eine der beiden Zahlen ist 5")

    if ((zahl1 >= 5) and (zahl1 < 10)):
        print("Die erste Zahl ist größer oder gleich als 5 und kleiner als 10")

    if ((zahl1 == 1) or (zahl1 == 3) or (zahl1 == 5)):
        print("Die erste Zahl ist entweder 1, 3 oder 5")

    if (not (zahl1 > 1)):
        print("Die erste Zahl ist nicht größer als 1")
        print("sie ist also kleiner oder gleich 1")
        
    if ((not (zahl1 == 5)) and (zahl2 < 3)):
        print("Die erste zahl ist nicht 5 und die zweite ist kleiner als 3")

main()
```

**ℹ️ Anmerkung**:

In diesem Beispiel wurden die einzelnen Bedingungen in runde
Klammern geschrieben. Das macht den Code leichter lesbar
und sagt ausdrücklich, welche Bedingungen mit den logischen Operatoren
verknüpft werden.

**⚠️ Vorsicht**: Die Klammernsetzung **nicht** ist egal,
sondern verändert die Bedeutung einer Bedingung.
Die Bedingung `not ((A > 0) and (A < 5))` ist beispielsweise **nicht** dasselbe wie 
`(not (A > 0)) and (A < 5)`. 

* Die erste Bedingung `not ((A > 0) and (A < 5))` ist erfüllt
falls A nicht 1, 2, 3 oder 4 ist.
Die Bedingung ist also zum Beispiel für die Zahlen: 0, -1, -23, 5, 6 oder 334 erfüllt.

* Die zweite Bedingung `(not (A > 0)) and (A < 5)` sagt:
die Bedingung ist erfüllt, falls A entweder 0, -1, -2, -3, -4, -5 und so weiter ist.

**Deshalb** gilt bei Bedingungen, und beim Programmieren allgemein:
"Lieber ein paar Klammern zu viel, als eine zu wenig!".

_________________

## Übungen

### 📝 Übung 38

Schreibe ein Programm, bei dem der Benutzer die Länge und die Breite
eines Rechtecks eingeben soll.
Falls die Länge gleich ist, wie die Breite, so soll "Quadrat" ausgegeben werden.
Falls die Länge oder die Breite kleiner oder gleich `0` ist,
soll "Fehler: Falsche Eingabe" ausgegeben werden.
Falls die Länge und die Breite größer als `0` sind, soll
der Umfang und der Flächeninhalt berechnet und ausgegeben werden.

### 📝 Übung 39

Schreibe ein Programm, bei dem der Benutzer sein Geburtsjahr eingeben kann.
Falls das Geburtsjahr größer oder gleich `2020` ist,
soll "Du solltest noch keinen Computer benutzen 😉" ausgegeben werden.
Falls das Geburtsjahr kleiner als `2020` soll das ungefähre Alter in Tagen
berechnet und ausgegeben werden.

### 📝 Übung 40

Schreibe ein Programm, bei dem der Benutzer drei Zahlen eingeben kann.
Das Programm soll die größte der drei Zahlen ausgeben.

### 📝 Übung 41
Schreibe ein Programm, bei dem der Benutzer die drei Seiten eines Dreiecks eingeben kann.

Das Programm soll ausgeben, ob es sich um ein:

* gleichseitiges Dreieck
* gleichschenkeliges
* rechtwinkeliges
* oder allgemeines Dreieck handelt

### 📝 Übung 42
Schreibe ein Programm, bei dem der Benutzer eine Jahreszahl eingeben.
Das Programm gibt aus, ob es sich um ein Schaltjahr handelt oder nicht.

Die Regel ist die folgende:

* Die durch 4 ganzzahlig teilbaren Jahre sind, abgesehen von den folgenden Ausnahmen, Schaltjahre.
* Säkularjahre, also die Jahre, die ein Jahrhundert abschließen (z. B. 1800, 1900, 2100 und 2200), sind, abgesehen von der folgenden Ausnahme, keine Schaltjahre.
* Die durch 400 ganzzahlig teilbaren Säkularjahre, zum Beispiel das Jahr 2000, sind jedoch Schaltjahre.

