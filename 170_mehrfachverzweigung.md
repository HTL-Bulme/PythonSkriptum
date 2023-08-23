# Mehrfachverzweigung

Sehr häufig kommt es beim Programmieren vor, 
dass genau eine von vielen Bedingungen zutreffen kann.

Nehmen wir zum Beispiel die letzte Übung aus dem letzten Kapitel,
hier wurde geprüft, ob die Zahl positiv, negativ oder gleich `0` ist.
Es kann nur eine der drei Bedingungen zutreffen.

Falls es mehrere Bedingungen gibt, bei der nur eine zutreffen kann,
so empfiehlt sich die Verwendung der Mehrfachverzweigung `elif`.

## 💡 Beispiel

Wir möchten eine Zahl überprüfen und falls ...

* ... die Zahl positiv ist, soll "Zahl ist positiv" ausgegeben werden
* ... die Zahl negativ ist, soll "Zahl ist negativ" ausgegeben werden
* ... die Zahl gleich `0` ist, soll "Zahl ist 0" ausgegeben werden

Das können wir mit dem `elif` Schlüsselwort bewerkstelligen.
Falls die erste Bedingung `zahl > 0` nicht zutrifft wird die
zweite Bedingung `zahl < 0` geprüft.
Falls diese auch nicht zutrifft die nächste, und so weiter.
Falls eine der Bedingungen zutrifft wird genau nur der Codeblock unter
dieser Bedingung ausgeführt und danach keine Bedingung mehr geprüft.
Der `else`-Teil der Verzweigung wird nur dann ausgeführt wenn 
keine der Bedingungen zugetroffen ist.

```python
zahl = int(input("zahl eingeben"))

if (zahl > 0):
    print("Zahl ist positiv")
elif (zahl < 0):
    print("Zahl ist negativ")
elif (zahl == 0):
    print("Zahl ist 0")
else:
    print("Das ist unmöglich :)")
```
_________________

## Übungen

### 📝 Übung 51

Bei einem Test kann man 100 Punkte erlangen.
Schreibe ein Programm, welches die erreichte Note ausgibt.

* über 87 Punkte: Sehr Gut
* über 75 Punkte: Gut
* über 62 Punkte: Befriedigend
* über 50 Punkte: Genügend
* sonst: Nicht Genügend

### 📝 Übung 52

Schreibe ein Programm bei dem der Benutzer eine Temperatur eingeben kann.
Das Programm soll ausgeben, welchen Aggregatzustand das Wasser bei dieser Temperatur hat,
bzw. angeben, ob die Temperatur genau am Gefrierpunkt oder am Siedepunkt ist.

**Tabelle:**

* `temp < 0`: Eis
* `temp == 0`: Gefrierpunkt
* `temp > 0 and temp < 100`: Wasser
* `temp == 100`: Siedepunkt
* `temp > 100`: Dampf



## 🧭 Zusammenfassung











