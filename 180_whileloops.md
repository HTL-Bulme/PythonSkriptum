# Wiederholungen mit While Schleifen

Du hast bereits die `for`-Schleife kennengelernt, mit der du einen Codeblock mehrmals wiederholen kannst. Die `for`-Schleife setzt du dann ein, wenn du schon vorher weißt,
wie oft der Codeblock wiederholt werden soll.

Häufig weiß man aber das im vorhinein nicht. Nehmen wir zum Beispiel eine Passwortabfrage.
Wir möchten den Benutzer nach dem Passwort fragen, bis er es richtig eingibt.
Hier weiß man im vorhinein nicht wie viele Anläufe der Benutzer benötigt.

In Fällen in denen wir einen Codeblock wiederholen solange eine Bedingung gilt, verwenden wir die `while`-Schleife.

## 💡 Beispiel: Eingabe einer Geheimzahl

Nehmen wir an wir möchten ein Programm schreiben,
bei dem der Benutzer beliebig oft eine Zahl eingeben kann,
bis er die Geheimzahl erraten hat.

Zuerst brauchen wir die sogenannte Schleifenbedingung.
Solange diese Bedingung gilt, wird die Schleife wiederholt.
Nehmen wir an unsere Geheimzahl ist 13, dann wäre die Bedingung: `not (eingabe == 13)`
oder in Kurzschreibweise: `eingabe != 13`.

```python
eingabe = 0

while (eingabe != 13):
    eingabe = int(input("Raten sie die Geheimzahl: "))

print("Sie haben die Zahl erraten")
```

Die `while`-Schleife wird mit dem Schlüsselwort while eingeleitet, gefolgt von einer Schleifenbedingung. Die Anweisungen im Codeblock werden wiederholt, so lange die Bedingung erfüllt ist. Nach Ende der Wiederholungen wird das Programm mit der nächsten Anweisung nach dem Schleifenblock fortgesetzt.

## 💡 Beispiel: Mit while-Schleife zählen

Wir wollen nun die while schleife benutzen, um eine
Variable so lange um 1 zu erhöhen, solange sie kleiner als 100 ist.

Nehmen wir an die Variable heißt `i`, dann lautet die Schleifenbedingung `i < 100`.

```python
i = 0

while (i < 100):
    print(i)
    i += 1
```

Diese Schleife wird 100 mal wiederholt, da zur Zahl `0` solange `1` dazuaddiert wird,
solange die Zahl kleiner 100 ist. In diesem Beispiel haben wir also
das Verhalten einer `for`-Schleife mit einer `while`-Schleife nachprogrammiert.

## Ähnlichkeit zur Verzweigung

Die `while`-Schleife hat eine gewisse Ähnlichkeit zur `if`-Verzweigung.

* Die `if`-Verzweigung wird **ein Mal** ausgeführt, **falls** die Bedingung erfüllt ist
* Die `while`-Schleife wird **solange** ausgeführt, **solange** die Bedingung erfüllt ist

## Die Endlosschleife


## Übungen

### 📝 Übung 51

