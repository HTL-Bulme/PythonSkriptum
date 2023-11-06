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