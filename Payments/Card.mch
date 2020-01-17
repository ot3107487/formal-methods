MACHINE
    Card
SEES
    String
INCLUDES
    Person
PROMOTES
    create_person, get_person_name, get_person_age, set_person_name
SETS
    CARDS; TYPES = {VISA, VIRTUAL}
CONSTANTS
    min_age
PROPERTIES
    min_age : TYPES --> NATURAL &
    min_age = {(VISA |->22), (VIRTUAL |-> 14)}
VARIABLES
    cards, iban, type, holder
INVARIANT
    cards <: CARDS &
    iban : cards --> STR &
    type : cards --> TYPES &
    holder : cards --> person &
    !crd . (crd : cards => person_age(holder(crd)) >= min_age(type(crd))) 
INITIALISATION
    cards := {} ||
    iban := {} ||
    type := {} ||
    holder:= {}
OPERATIONS
   
    cards_value <-- create_cards(iban_value, type_value, holder_value) =
    PRE
        iban_value : STR &
        type_value : TYPES &
        holder_value : person &
        person_age(holder_value) >= min_age(type_value)
    THEN
        ANY crd
        WHERE crd : CARDS - cards
        THEN cards := cards \/ {crd} ||
             iban(crd) := iban_value ||
             type(crd) := type_value ||
             holder(crd) := holder_value ||
             cards_value := crd
         END
    END;
     
    iban_value <-- get_iban(cards_value) =
    PRE
        cards_value : cards
    THEN
        iban_value := iban(cards_value)
    END;
    
    type_value <-- get_type(cards_value) =
    PRE
        cards_value: cards
    THEN
        type_value := type(cards_value)
    END;
    
    holder_value <-- get_holder(cards_value) =
    PRE
        cards_value : cards
    THEN
        holder_value := holder(cards_value)
    END;
    
    set_cards_iban(cards_value, iban_value) =
    PRE
        cards_value : cards &
        iban_value : STR
    THEN
        iban(cards_value) := iban_value
    END;
    
    set_cards_type(cards_value, type_value) =
    PRE
        cards_value : cards &
        type_value : TYPES &
        person_age(holder(cards_value)) >= min_age(type_value)
    THEN
        type(cards_value) := type_value
    END;
    
    set_cards_holder(cards_value, holder_value) =
    PRE
        cards_value : cards &
        holder_value : person &
        person_age(holder_value) >= min_age(type(cards_value))
    THEN
        holder(cards_value) := holder_value
    END
END 

