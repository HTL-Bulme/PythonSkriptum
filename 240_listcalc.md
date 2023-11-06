# Berechnungen auf Listen durchführen

Im vorhergehenden Kapitel haben wir gesehen,
dass wir, um ein Element zu finden, alle Elemente mit einer Schleife durchgehen müssen.
Man sagt auch, wir durchlaufen die Liste mit einer Schleife.

## Summenfunktion

Wenn wir Berechnungen auf Listen durchführen, müssen wir dasselbe machen.
Nehmen wir an, wir möchten die Summe aller Elemente der Liste berechnen.

Wir könnten, als ersten Versuch schreiben:

```python
l = [24, 13, -5, 102, 74, -87]
summe = l[0] + l[1] + l[2] + l[3] + l[4] + l[5]
```

Das würde zwar funktionieren, wäre aber umständlich,
und würde wieder nur für Listen der Länge 6 funktionieren.

Besser wäre es wieder eine `for`-Schleife zu machen,
in der die summe der Elemente berechnet wird.
Wir verwenden wieder das gleiche Muster wie im vorhergegangenen Kapitel:

```python
l = [24, 13, -5, 102, 74, -87]

summe = 0
for i in range(0, len(l)):
    summe += l[i]

print("Die Summe ist", summe)
```

Wichtig ist bei diesem Beispiel, dass die Variable `summe`
zuerst definiert wird und mit dem Wert `0` initialisiert wird.
Zu diesem Wert wird bei jedem Schleifendurchlauf ein Element hinzuaddiert.

Wir können dieses Programm auch wieder ordentlich
mit main- und Summenfunktion schreiben:


```python
def summieren(l):
    summe = 0
    for i in range(0, len(l)):
        summe += l[i]
    return summe

def main():
    l = [24, 13, -5, 102, 74, -87]
    print("Die Summe ist", summieren(l))

main()
```

## Kurzvariante der for-Schleife

Das Muster, dass wir mit einer Schleife alle Elemente
einer Liste durchlaufen, wird so häufig verwendet,
dass es auch eine Kurzvariante davon gibt.

Statt: 
```python
    summe = 0
    for i in range(0, len(l)):
        summe += l[i]
```

können wir auch:

```python
    summe = 0
    for zahl in l:
        summe += zahl
```

schreiben. Bei dieser Variante fällt die Verwendung
des Index weg und die Variable `zahl` enthält gleich
den Wert des Elements am Index `i`.
Diese Variante ist nur eine Kurzschreibweise,
im Hintergrund passiert natürlich genau dasselbe.
Der Vorteil ist, dass es ein bisschen weniger zu tippen ist,
der Nachteil ist, dass man keinen Zugriff mehr auf die Index-Variable `i` hat.



## Übungen

### 📝 Übung 73

Mittelwert

### 📝 Übung 74

Produkt

### 📝 Übung 75

Summe aller geraden Zahlen


### 📝 Übung 76

True falls Summe größer 100





