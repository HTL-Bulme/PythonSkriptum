# Funktionen mit Rückgabewert

Du weißt bereits, wie man eine Funktion mit oder ohne Parameter definiert und sie aufruft.
Wir haben bereits eigene Funktionen geschrieben, die beispielsweise geometrische
Formen zeichnen können.

Des Weiteren haben wir auch mathematische Funktionen wie die Funktion `sqrt` aufgerufen,
um die Quadratwurzel einer Zahl zu berechnen.
Diese Funktion hat einen Parameter und gibt einen Wert, nämlich die berechnete
Quadratwurzel, zurück. Wir konnten also schreiben: `wurzel = sqrt(16)`
und die Variable `wurzel` enthielt den berechneten Wert, also in diesem Fall `4`.

In diesem Kapitel sehen wir uns an, wie wir Funktionen schreiben, die auch 
berechnete Werte zurückgeben können.

## Das Schlüsselwort return

Nehmen wir an wir möchten eine Funktion schreiben,
welche das Quadrat einer Zahl berechnet.
Diese Funktion sollte einen Parameter haben,
und eine Zahl zurückgeben.

Würden wir zum Beispiel die Funktion `quadrat` mit dem
Argument `5` aufrufen, so sollte die Funktion das Resultat `25` zurückgeben.
Hierfür gibt es das Schlüsselwort return:

```python
def quadrat(zahl):
    ergebnis = zahl * zahl
    return zahl
```

Mit return gibt eine Funktion einen Wert an den Aufrufer zurück
und hört mit der weiteren Abarbeitung auf.

## 💡 Beispiel: Volumenrechner

In diesem Beispiel möchten wir das Volumen eines Quaders oder
eines Zylinders berechnen.
Der Benutzer sollte zuerst eingeben können welche geometrische Form er haben möchte.
Gibt der Benutzer (1) ein, so soll er nach den Maßen eines Quaders gefragt,
gibt er (2) ein, so soll er nach den Maßen des Zylinders gefragt werden.

Ein ähnliches Beispiel hatten wir schon einmal,
nun möchten wir die tatsächliche Berechnung des Volumens jedoch in zwei
eigene Funktionen verlagern.

Wir schreiben zuerst die beiden Funktionen `volumenQuader` und `volumenZylinder`.
Beachte, dass das `return` Schlüsselwort üblicherweise die letzte Anweisung 
in einer Funktion ist, denn die Zeilen nach dem return werden ohnehin nicht mehr abgearbeitet.

```python
def volumenQuader(seite_a, seite_b, hoehe):
    flaeche = seite_a * seite_b
    volumen = flaeche * hoehe
    return volumen
```

```python
def volumenZylinder(radius, hoehe):
    flaeche = radius ** 2 * pi
    volumen = flaeche * hoehe
    return volumen
```

Das gesamte Programm würde wie folgt aussehen:

```python
from math import *

def volumenQuader(seite_a, seite_b, hoehe):
    flaeche = seite_a * seite_b
    volumen = flaeche * hoehe
    return  volumen

def volumenZylinder(radius, hoehe):
    flaeche = radius ** 2 * pi
    volumen = flaeche * hoehe
    return  volumen

def main():
    auswahl = int(input("Wollen sie einen Quader (1) oder einen Zylinder(2) berechnen?: "))

    if (auswahl == 1):
        a = float(input("Seite a: "))
        b = float(input("Seite b: "))
        h = float(input("Höhe: "))

        volumen = volumenQuader(a,b,h)
    elif (auswahl == 2):
        r = float(input("Radius: ")) 
        h = float(input("Höhe: "))

        volumen = volumenZylinder(r,h)
    else:
        print("Ungültige Eingabe: ", auswahl)
        return

    print("Das Volumen ist: ", volumen)

main()
```

Falls du in der `main`-Funktion eine return Anweisung ausführst,
so beendest du die Hauptfunktion und damit das Programm.
Das wird im obigen Programm benutzt, um bei einer ungültigen Eingabe das
Programm sofort zu beenden.



## Übungen

### 📝 Übung 60

Schreibe eine Funktion `average(a, b)`, die den Durchschnitt der
beiden Zahlen a und b berechnet und zurückgibt

### 📝 Übung 61
Schreibe eine Funktion `minimum(a, b)`, die von den beiden Zahlen
a und b die kleinere zurückgibt. Natürlich machst du das ohne Pythons
Funktion min zu verwenden.

### 📝 Übung 62
Schreibe eine Funktion `quaderOberflaeche(a)`, welche die Oberfläche eines Quaders zurückgibt.

## 🧭 Zusammenfassung


















