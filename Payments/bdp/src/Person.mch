MACHINE
    Person
SEES
    String
SETS
    PERSON // the set of all possible person instances
ABSTRACT_VARIABLES
    person , person_name , person_age
INVARIANT
    person <: PERSON &
    person_name : person --> STR &
    person_age : person --> NATURAL
INITIALISATION
    person := {} || person_name := {} || person_age := {}
OPERATIONS

    person_value <-- create_person ( name_value , age_value ) =
    PRE
        name_value : STR &
        age_value : NATURAL
    THEN
        ANY pers
        WHERE pers : PERSON - person
        THEN person := person \/ { pers } ||
             person_name ( pers ) := name_value ||
             person_age ( pers ) := age_value ||
             person_value := pers
         END
    END ;

    name_value <-- get_person_name ( person_value ) =
    PRE
        person_value : person
    THEN
        name_value := person_name ( person_value )
    END ;

    age_value <-- get_person_age ( person_value ) =
    PRE
        person_value : person
    THEN
        age_value := person_age ( person_value )
    END ;

    set_person_name ( person_value , name_value ) =
    PRE
        person_value : person &
        name_value : STR
    THEN
        person_name ( person_value ) := name_value
    END
END
