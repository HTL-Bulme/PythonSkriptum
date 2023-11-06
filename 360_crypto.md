# Die Caesar-Verschlüsselung

Die Caesar-Verschlüsselung ist eines der einfachsten und unsichersten
Verfahren und dient heute hauptsächlich dazu, Grundprinzipien der Kryptologie,
also der Wissenschaft der Verschlüsselung und Entschlüsselung von Information,
anschaulich darzustellen.

## Das Verfahren im Detail

Bei der Verschlüsselung wird jeder Buchstabe des Klartexts auf einen Geheimtextbuchstaben abgebildet. Diese Abbildung ergibt sich, indem man die Zeichen eines geordneten Alphabets um eine bestimmte Anzahl zyklisch nach rechts verschiebt (rotiert); zyklisch bedeutet, dass man beim Verschieben über Z hinaus wieder bei A anfangend weiterzählt. Die Anzahl der verschobenen Zeichen bildet den Schlüssel, der für die gesamte Verschlüsselung unverändert bleibt. Beispiel für eine Verschiebung um drei Zeichen: 

![Schema Caesar-Verschlüsselung](./images/caesar.png)

Der Buchstabe A wird also auf den Buchstaben D abgebildet,
der Buchstabe B auf den Buchstaben E und so weiter.
Dieses Verfahren wird für jeden Buchstaben des Klartextes angewandt.
Am Ende des Alphabets wird das X zu einem A, das Y zu B und das Z zu C.
Aus dem Klartext "CAESAR" wird somit der Geheimtext "FDHVDU".

Bei der Entschlüsselung, also der Umwandlung des Geheimtextes in den Klartext
muss die Umwandlung in die entgegengesetzte Richtung stattfinden.
Aus einem D wird ein A, aus einem E wird ein B und so weiter.

![Schema Caesar-Entschlüsselung](./images/caesar_rev.png)

Die Anzahl der Zeichen, um die verschoben wird, wird Schlüssel genannt.
Der Schlüssel beim obigen Beispiel hat also den Wert 3.

## Implementierung in Python

Wir werden die Verschlüsselung der Einfachheit halber
nur für Großbuchstaben implementieren,
es funktioniert für andere Zeichen aber genau gleich.

Unsere Großbuchstaben sind im ersten Unicode Block
(Basis-Lateinisch) gespeichert. Dieser entspricht exakt dem **ASCII** Code.
Wenn wir uns die ASCII Tabelle ansehen,
so sehen wir, dass die Code Points der Großbuchstaben im Bereich von 
65 bis 90 sind:

![ASCII Code der Großbuchstaben](./images/ascii.png)

Wir gehen also wie folgt vor:

* Erstelle neuen String: Geheimtext
* Durchlaufe den Klartext Zeichen für Zeichen mit einer Schleife
* Falls der Code Point des Zeichens im Bereich 65 bis inkl. 90 ist, addiere den Schlüssel
* Falls der neue Code Point dann größer als 90 ist, so subtrahiere 26, damit wir innerhalb der Großbuchstaben bleiben
* Füge das Zeichen mit dem neuen Code Point an den Geheimtext an

In Python implementiert sieht das Programm wie folgt aus:

```python
def caesarEncrypt(text, schluessel):
    geheim = ""
    for i in range(0,len(text)):
        zeichen = text[i]
        codePoint = ord(zeichen)

        if (codePoint >= 65 and codePoint <= 90):
            codePoint += schluessel

            if (codePoint > 90):
                codePoint -= 26
        
        geheim += chr(codePoint)
    return geheim

print(caesarEncrypt("HALLO WELT!",3))
```
**Ausgabe :** `KDOOR ZHOW!`

Das obige Programm verschlüsselt die Großbuchstaben eines Texts,
mit dem Caesar-Verfahren mit dem Schlüssel `3`.
Die Ausgabe ist `KDOOR ZHOW!`. Wie du siehst werden das Leerzeichen
und das Rufzeichen nicht verschlüsselt.

Wenn du den Text entschlüsseln möchtest kannst du die Funktion mit
dem Geheimtext und den Schlüssel `-3` aufrufen.

```python
print(caesarEncrypt("KDOOR ZHOW!",-3))
```

oder besser, eine eigene Entschlüsselungsfunktion schreiben.

```python
def caesearDecrypt(text, schluessel):
    return caesarEncrypt(text, -schluessel)
```
## Übungen


### 📝 Übung 85
Überlege dir wie viele Schlüssel es Maximal geben kann.

### 📝 Übung 86

Du hast den Geheimtext "QH UNFG RF REENGRA" erhalten,
aber leider keinen Schlüssel.
Probiere alle möglichen Schlüssel durch um den Klartext zu erhalten

**Tipp:** Verwende eine `for`-Schleife

