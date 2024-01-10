p1:
	cd P1 && sh ./init.sh

p2: p1
	cd P2 && sh ./inject.sh

p3: p1
	cd P3 && sh ./inject.sh