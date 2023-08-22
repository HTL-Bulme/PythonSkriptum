# Verzweigungen

Was du im täglichen Leben unternimmst, hängt oft von gewissen Bedingungen ab. So entscheidest du dich je nach Wetter, wie du in die Schule fährst. Du sagst: "Falls es regnet, fahre ich mit der Bim, sonst mit dem Fahrrad".

Auch der Ablauf eines Programms kann von Bedingungen abhängig sein. Solche Programmverzweigungen auf Grund von bestimmten Bedingungen gehören zu den Grundstrukturen jeder Programmiersprache.

In diesem Kapitel sehen wir uns an wie
Programmblöcke nur unter gewissen Bedingungen ausgeführt werden.

## Die if-Verzweigung
Stell dir beispielsweise vor, du möchtest die aktuelle Temperatur prüfen,
und eine Warnung ausgeben, falls die Temperatur unter 0° ist.
Nehmen wir an wie haben die aktuelle Temperatur in einer Variable gespeichert,
können wir sie mit einer `if`-Verzweigung überprüfen:

```python
if (temperatur < 0):
    print("Vorsicht Glatteis!")
```

Mit `if` hast du also beim Programmieren die Möglichkeit, auf spezielle
Situationen gezielt zu reagieren. Dazu braucht `if` immer eine Bedingung,
um entscheiden zu können, ob diese Situation wirklich eintrifft.
Eine **Bedingung** ist ein Ausdruck, der entweder **wahr** oder **falsch** ist.

Üblicherweise entstehen Bedingungen durch die Anwendung von Vergleichsoperatoren.
Diese sind uns bereits aus der Mathematik bekannt,
müssen aber beim Programmieren anders geschrieben werden,
da Spezialzeichen wie "≤" nicht auf der Tastatur vorhanden sind.

**⚠️ Vorischt:** Bei "ist gleich" benötigst du unbedingt zwei Gleichheitszeichen!
Ein Gleichheitszeichen ist der Zuweisungsoperator und damit eine
komplett andere Operation.

| Operator | Beschreibung |
|-------|-------|
| < | kleiner |
| <= | kleiner oder gleich |
| == | gleich |
| >= | größer oder gleich |
| > | größer |
| != | ungleich |

## 💡 Beispiel

Im folgenden Beispiel gibt der Benutzer den Flächeninhalt eines Quadrats ein,
und das Programm berechnet die Seitenlänge mithilfe der Quadratwurzel.
Das ist jedoch nur möglich, wenn der Flächeninhalt positiv ist,
da eine Wurzel aus einer negativen Zahl nicht existiert.

```python
def main():
    flaeche = float(input("Geben Sie die Fläche ein: "))
    if (flaeche >= 0):
        seite = flaeche ** 0.5
        print(seite)

main()
```

**⚠️ Vorsicht:** Im VS Code startest du das Programm mit dem Play-Button
rechts oben (1). Ausgaben erscheinen im Terminal-Fenster unter dem Code.
In diesem Fenster (2) müssen auch die Eingaben getätigt werden.
Siehe dazu die folgende Abbildung:

![Ein- und Ausgabe in VS Code](./images/inputvscode.png)


Das Programm gibt die Seitenlänge aus, falls die Fläche größer oder gleich 0 ist.
Das Programm gibt aber nichts aus, falls die Zahl negativ ist.
Besser wäre es, wenn das Programm eine Fehlermeldung ausgeben würde,
falls die Eingabe negativ war. Das können wir mit der if-else Verzweigung erreichen.

## Die if-else-Verzweigung

Du kannst die if-Verzweigung um das Schlüsselwort `else` und einen weiteren
Programmblock erweitern. Dieser Programmblock wird dann ausgeführt,
wenn die Bedingung nicht wahr ist.

```python
def main():
    flaeche = float(input("Geben Sie die Fläche ein"))
    if (flaeche >= 0):
        seite = flaeche ** 0.5
        print(seite)
    else:
        print("Fehler: Die eingegebene Fläche ist negativ")

main()
```

_________________

## Übungen

### 📝 Übung 36

Schreibe ein Programm bei dem der Benutzer seine Punkteanzahl vom 
SWP-Test eingeben kann. Falls die Punkteanzahl größer oder gleich 16 ist,
soll "Positive Note" werden.
Ansonsten soll "Negative Note" ausgegeben werden.

### 📝 Übung 37

Schreibe ein Programm bei dem der Benutzer eine Ganzzahl eingeben kann.
Das Programm soll ausgeben, ob die Zahl positiv, negativ oder Null ist.

**Tipp:** Du wirst mehr als eine if-Verzweigung brauchen.

### 📝 Übung 38
Schreibe ein Programm bei dem der Benutzer zwei Ganzzahlen eingeben kann.
Das Programm soll ausgeben, ob die erste Zahl größer als die zweite Zahl ist.

### 📝 Übung 39
Schreibe ein Programm bei dem der Benutzer eine Ganzzahl eingeben kann.
Das Programm soll ausgeben, ob die zahl eine gerade Zahl ist, oder nicht.

### 📝 Übung 40
Schreibe ein Programm bei dem der Benutzer einen String eingeben kann.
Prüfe ob der eingegebene Wert gleich "Sesam öffne dich" ist.
Falls ja, soll "Du hast das Passwort erraten" ausgegeben werden.
Falls nein, soll "Das war falsch" ausgegeben werden.

**Tipp:** Beachte, dass du Strings immer in doppelten Hochkomma schreiben musst!

## 🧭 Zusammenfassung
Mit der `if`-Verzweigung kannst du Codeblöcke nur dann ausführen lassen,
wenn eine Bestimmte Bedingung erfüllt ist.
Eine Bedingung ist ein Ausdruck, der entweder wahr oder falsch ist.
Eine `if`-Verzweigung kann zusätzlich einen `else`-Teil enthalten.
Dieser `else`-Teil wird ausgeführt, falls die Bedingung nicht erfüllt ist.

Der `else`-Teil ist **optional**, das heißt, er kann angeführt werden, muss aber nicht.

Die Syntax einer `if`-Verzweigung ist:
```python
if (Bedingung):
    Anweisungen, die
    ausgeführt werden
    falls Bedingung erfüllt ist
else:
    Anweisungen, die
    ausgeführt werden
    falls Bedingung NICHT erfüllt
```
 
















