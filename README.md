# Blockchain Logic Validator  
**Ekspertni sustav za provjeru valjanosti blockchain transakcija (Flora-2)**

---

## 1. Opis projekta

Ovaj projekt predstavlja ekspertni sustav za provjeru valjanosti blockchain
transakcija razvijen korištenjem jezika **Flora-2** i načela **deklarativnog
programiranja**. Sustav formalizira osnovna pravila blockchain domene te omogućuje
transparentno zaključivanje i objašnjavanje rezultata.

Projekt je izrađen u edukativne svrhe u sklopu kolegija **Deklarativno programiranje**.

---

## 2. Arhitektura sustava

Sustav se sastoji od:
- korisnika (CLI),
- inferencijskog mehanizma Flora-2,
- baze znanja koja sadrži klase, pravila, upite i testne podatke.

Iako je implementacija objedinjena u jednu datoteku, logička arhitektura odgovara
klasičnom modelu ekspertnih sustava.

---

## 3. Baza znanja

Završna baza znanja implementirana je u jedinstvenoj datoteci: **blockchain_kb.flr**


Ona objedinjuje sve komponente sustava radi jednostavnijeg učitavanja i stabilnijeg rada.

---

### 3.1 Definicije klasa

Baza znanja modelira tri osnovna koncepta blockchain domene:

- **Address** – predstavlja korisničku adresu i stanje računa  
- **Transaction** – predstavlja prijenos vrijednosti između adresa  
- **Block** – predstavlja skup transakcija povezanih u blockchain strukturu  

---

### 3.2 Pravila validacije

Implementirana su pravila koja provjeravaju:

- da je iznos transakcije pozitivan,
- da su pošiljatelj i primatelj različiti,
- da pošiljatelj ima dovoljno sredstava,
- da je digitalni potpis ispravan,
- da transakcija nije dvostruko potrošena (double-spending).

Pravila se kombiniraju u složenije zaključke o valjanosti transakcija.

---

### 3.3 Korisnički i analitički upiti

Sustav nudi upite za:
- provjeru valjanosti transakcija,
- dijagnostiku uzroka nevaljanosti,
- dohvat stanja adresa,
- analizu blokova,
- agregiranu analizu mreže.

---

### 3.4 Testni podaci

Testni podaci uključuju:
- definirane adrese s početnim stanjima,
- ispravne i neispravne transakcije,
- blokove (uključujući genesis blok).

Oni omogućuju demonstraciju svih funkcionalnosti sustava.

---

## 4. Prikaz rada sustava – scenariji

## 5. Upute za pokretanje sustava

Sustav je implementiran kao ekspertni sustav u jeziku **Flora-2** te se koristi
isključivo putem **naredbenog retka (CLI)**.

---

### 5.1 Preduvjeti

Za pokretanje sustava potrebno je imati:

- Linux operacijski sustav  
  - preporučeno: **Ubuntu** (npr. 20.04 ili noviji)
- instaliran **Flora-2 / ErgoLite Reasoner**
- instaliran **XSB Prolog** (dio Flora-2 distribucije)

> **Napomena:**  
> Na nekim distribucijama (npr. Fedora) Flora-2 može imati problema s
> kompatibilnošću i kompilacijom. U tom slučaju preporučuje se korištenje
> Ubuntu sustava ili kontejnerskog okruženja.

---

### 5.2 Pokretanje Flora-2 okruženja

Ako Flora-2 već nije instalirana, potrebno ju je instalirati prema službenim
uputama dostupnima na:

https://flora.sourceforge.net/

Nakon uspješne instalacije, Flora-2 se u terminalu pokreće naredbom:

```bash
./runflora
```

### Učitavanje baze znanja
Učitavanje cjelokupne baze znanja u Flora-2 okruženje.

```prolog
?- [blockchain_kb].
```

Ako ste pak u Floru-2 pokrenuli drugom folderu, potrebno je pozicionirati se na sljedeći način:
```prolog
?-  ['_putanja_/blockchain-logic-validator/blockchain_kb.flr'].
```
**Važno je ne izostaviti jednostruke navodnike ' ' !**

### Dobivanje uputa korištenja sustava
Korisnik može dobiti objašnjenje upute svih naredbi u sustavu koje su implementirane sljedećom naredbom.

```prolog
?- help.
```

Nakon učitavanja baze znanja i prikaza dostupnih naredbi, korisnik može
interaktivno izvršavati upite za provjeru valjanosti transakcija, dijagnostiku
pogrešaka te analizu stanja blockchain mreže. 

**Scenariji su prikazani i objašnjeni u sekciji 6 u projektnoj dokumentaciji**
