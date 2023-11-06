# Assoziative Listen

Eine Assoziative Liste (manchmal auch "Dictionary") ist eine Datenstruktur
die sehr ähnlich zu gewöhnlichen Listen ist.
Es wird jedoch nicht mit einem Index auf ein Element zugegriffen,
sondern mit einem **Schlüssel** (engl. key). Der Schlüssel ist üblicherweise ein String,
der das Element eindeutig identifiziert.

Sie werden verwendet, um effizient nach Werten zu suchen, die einem bestimmten Schlüssel zugeordnet sind, und sind in vielen Anwendungen unverzichtbar, da sie eine schnelle Abbildung von Schlüsseln auf Werte ermöglichen.

## Unterschied: Liste zu assoziativer Liste

In der folgenden Abbildung sind die Unterschiede zwischen Liste und 
assoziativer Liste dargestellt.
Während bei der Liste über einen Index auf Elemente zugegriffen wird,
werden bei der assoziativen Liste Strings (Texte) verwendet.

![Unterschied Listen zu assoziativen Listen](./images/assocliste.png)

## Verwendung 

Die assoziative Liste kann fast gleich wie die Liste verwendet werden.
Der einzige Unterschied ist, dass die assoziative Liste mit 
geschwungenen Klammern angelegt wird.

```python
x = {}
x["ABC"] = 123
print(x)
```
**Ausgabe:** `{'ABC': 123}`

Soll eine Liste beim erstellen bereits Werte beinhalten,
so muss die folgende Syntax verwendet werden:

```python
x = {"ABC": 123, "DEFG": 432, "Hallo Welt!": 999}
print(x["Hallo Welt!"])
```
**Ausgabe:** `999`




