# Sisteme de Operare – Capitolul 1

**1.** Realizați un fișier de comenzi indirecte care primește 15 parametri pe care trebuie să îi afișeze.

**2.** Scrieți un fișier de comenzi care să șteargă din directorul curent toate fișierele care au extensie identică cu cea primită de fișierul de comenzi ca parametru. Fișierul de comenzi să accepte mai multe extensii deodată.

**3.** Realizați un fișier de comenzi care să afișeze toate fișierele care au extensia identică cu cea primită de fișierul de comenzi ca parametru.

**4.** Creați un program „MENIU” care returnează una din valorile: 0, 1, 2, 3 (de exemplu, în limbajul C). Realizați un fișier de comenzi F1.BAT care realizează următoarele:
- primește 2 parametri: primul este numele unui subdirector, S, al doilea numele unui fișier, fără extensie, F;
- creează subdirectorul S;
- schimbă directorul curent în S;
- apelează MENIU;
- în funcție de valoarea returnată de MENIU, realizează următoarele:
  - 1 – creează prin copiere de la tastatură fișierul F.TXT;
  - 2 – sortează F.TXT în F.SRT;
  - 3 – afișează F.SRT;
- dacă valoarea returnată este diferită de 0, se apelează din nou MENIU, repetându-se procedeul până când MENIU returnează 0;
- se afișează directorul curent;
- se revine în directorul părinte.

Realizați un fișier F2.BAT care apelează F1.BAT cu diferite valori pentru parametri.

**5.** Îmbunătățiți F1.BAT, făcând verificări de existență a fișierelor dacă MENIU returnează 2 sau 3.

**6.** Modificați F1.BAT și F2.BAT astfel încât să nu mai primească parametri formali, ci să își ia datele din variabilele interpretorului.

**7.** Realizați F3.BAT care primește ca parametru numele unui subdirector S pe care trebuie să îl șteargă împreună cu toate fișierele pe care le conține. Lansați F3.BAT având ca parametri subdirectoarele create anterior. Se presupune că S nu conține alte subdirectoare.
