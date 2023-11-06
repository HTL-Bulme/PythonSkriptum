def berechneDauer(distanz, geschwindigkeit):
    dauer = distanz / geschwindigkeit
    return dauer

def main():
    s = float(input("Distanz eingeben: "))
    v = float(input("Geschwindigkeit eingeben: "))
    t = berechneDauer(s, v)
    print(round(t*60, 2), "Minuten")

main()
