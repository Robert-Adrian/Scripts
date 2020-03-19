# Scripts



Script care iti calculeaza dimensiunea in bytes a unui director. Scriptul preia tot continutul directorului si verifica daca acestea sunt fisiere sau alte directoare Daca un element al directorului primit ca parametru este fisier, atunci ii calculeaza dimensiunea in bytes a lui si o adauga la valoarea totala Daca un element al directorului este un alt director, adica un subdirector, atunci apelez din nou scriptul avand ca parametru subdirectorul si se apeleaza recursiv pana cand parcurg toate elementele, subdirectoarele, elementele subdirectoarelor si adaug la total dimensiunea in bytes a acestora si la final o afisez



Poate primii mai multe argumente cand este apelat, primul argument este directorul a carui dimensiune vreau sa o aflu. Al doilea parametru este dimensiunea minima de la care incepe sa calculeze dimensiunea directorului. Al treilea parametru este fisierul in care sa salveze fisierele care au dimensiunea mai mare decat al doilea parametru
