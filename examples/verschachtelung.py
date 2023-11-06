def main():
    seite_a = float(input("Seite a eingeben: "))

    if (seite_a > 0):
        seite_b = float(input("Seite b eingeben: "))

        if (seite_b > 0):
            flaeche = seite_a * seite_b

            print("Die Fläche ist", flaeche)
        else:
            print("Fehler: Seite b ist nicht postiv")
    else:
        print("Fehler: Seite a ist nicht postiv")

main()
