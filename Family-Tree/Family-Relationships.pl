/*Males*/
male(paul).
male(albert).
male(vernon).
male(james).
male(dudley).
male(harry).
/*Females*/
female(helen).
female(ruth).
female(petunia).
female(lili).
/*Parents*/
parent(paul, petunia).
parent(paul, lili).
parent(helen, petunia).
parent(helen, lili).
parent(albert, james).
parent(ruth, james).
parent(vernon, dudley).
parent(petunia, dudley).
parent(james, harry).
parent(lili, harry).
/*Rules & Relationships*/
father_of(Father, Child):- male(Father), parent(Father, Child).
mother_of(Mother, Child):- female(Mother), parent(Mother, Child).
grandfather_of(Grandfather, Child):- male(Grandfather), parent(Father, Child), parent(Grandfather, Father).
grandmother_of(Grandmother, Child):- female(Grandmother), parent(Mother, Child), parent(Grandmother, Mother).
sister_of(Sister, Person):- female(Sister), parent(Father, Sister), parent(Father, Person), Sister \= Person, !.
brother_of(Brother, Person):- male(Brother), parent(Father, Brother), parent(Father, Person), Brother \= Person, !.
aunt_of(Aunt, Person):- female(Aunt), parent(Father, Person), sister_of(Aunt, Father).
uncle_of(Uncle, Person):- male(Uncle), parent(Father, Person), brother_of(Uncle, Father).
