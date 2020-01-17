MACHINE
    Payment
SEES
    String
INCLUDES
    Card, Shop
PROMOTES
    create_cards, get_iban, get_type, get_holder, set_cards_iban, set_cards_type, set_cards_holder,
    create_person, get_person_name, get_person_age, set_person_name
SETS
    PAYMENT
CONSTANTS
    card_acceptance, discounts
PROPERTIES
    card_acceptance : REGIONS --> TYPES &
    card_acceptance = {(USA |-> VISA), (EUROPE |-> VIRTUAL)} &
    discounts : REGIONS --> NATURAL &
    discounts = {(EUROPE |-> 20), (USA |-> 0) }
VARIABLES
    payment, payment_card, payment_shop, payment_amount
INVARIANT
    payment <: PAYMENT &
    payment_card : payment --> cards &
    payment_shop : payment --> shop &
    !pay . (pay : payment => type(payment_card(pay)) = card_acceptance(region(payment_shop(pay)))) &
    payment_amount : payment --> NATURAL
INITIALISATION
    payment := {} ||
    payment_card := {} ||
    payment_shop := {} ||
    payment_amount := {}
OPERATIONS
    payment_value <-- create_payment(card_value, shop_value, amount_value) =
    PRE
        card_value : cards &
        shop_value : shop &
        amount_value : NATURAL &
        type(card_value) = card_acceptance(region(shop_value))
    THEN
        ANY pay
        WHERE pay : PAYMENT - payment
        THEN payment := payment \/ {pay} ||
             payment_card(pay) := card_value ||
             payment_shop(pay) := shop_value ||
             IF discounts(region(shop_value)) >= amount_value 
             THEN
                   payment_amount(pay) := 1 ||
                   payment_value := pay
               ELSE
                   payment_amount(pay) := amount_value - discounts(region(shop_value)) ||
                   payment_value := pay    
             END
         END
     END;
     
     card_value <-- get_payment_card(payment_value) =
     PRE
         payment_value : payment
     THEN
         card_value := payment_card(payment_value)
     END;
     
     
     shop_value <-- get_payment_shop(payment_value) =
     PRE
         payment_value : payment
     THEN
         shop_value := payment_shop(payment_value)
     END;
     
     amount_value <-- get_payment_amount(payment_value) =
     PRE
         payment_value : payment
     THEN
         amount_value := payment_amount(payment_value)
     END;
     
     set_payment_shop(payment_value, shop_value) = 
     PRE
         payment_value : payment &
         shop_value : shop &
         type(payment_card(payment_value)) = card_acceptance(region(shop_value))
     THEN
         payment_shop(payment_value) := shop_value
     END;
     
     set_payment_card(payment_value, card_value) =
     PRE
         payment_value : payment &
         card_value : cards &
         type(card_value) = card_acceptance(region(payment_shop(payment_value)))
     THEN
         payment_card(payment_value) := card_value
     END;
     
     set_payment_amount(payment_value, amount_value) =
     PRE
         payment_value : payment &
         amount_value : NATURAL
     THEN
         IF discounts(region(payment_shop(payment_value))) >= amount_value 
             THEN
                   payment_amount(payment_value) := 1
               ELSE
                   payment_amount(payment_value) := amount_value - discounts(region(payment_shop(payment_value)))
             END
     END;
     
     cancel_payment(payment_value) =
     PRE
         payment_value : payment
     THEN
         payment := payment - {payment_value} ||
         payment_card := {payment_value} <<| payment_card ||
         payment_shop := {payment_value} <<| payment_shop ||
         payment_amount := {payment_value} <<| payment_amount
     END
     
END
