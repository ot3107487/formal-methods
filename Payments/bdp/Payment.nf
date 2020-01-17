Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Payment))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Payment))==(Machine(Payment));
  Level(Machine(Payment))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Payment)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Payment))==(String)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Payment))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Payment))==(Shop,Card,Person);
  List_Includes(Machine(Payment))==(Card,Shop)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Payment))==(create_cards,get_iban,get_type,get_holder,set_cards_iban,set_cards_type,set_cards_holder,create_person,get_person_name,get_person_age,set_person_name)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Payment))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Payment))==(?);
  Context_List_Variables(Machine(Payment))==(?);
  Abstract_List_Variables(Machine(Payment))==(?);
  Local_List_Variables(Machine(Payment))==(payment_amount,payment_shop,payment_card,payment);
  List_Variables(Machine(Payment))==(payment_amount,payment_shop,payment_card,payment,holder,type,iban,cards,person_age,person_name,person,region,name,shop);
  External_List_Variables(Machine(Payment))==(payment_amount,payment_shop,payment_card,payment,holder,type,iban,cards,person_age,person_name,person,region,name,shop)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Payment))==(?);
  Abstract_List_VisibleVariables(Machine(Payment))==(?);
  External_List_VisibleVariables(Machine(Payment))==(?);
  Expanded_List_VisibleVariables(Machine(Payment))==(?);
  List_VisibleVariables(Machine(Payment))==(?);
  Internal_List_VisibleVariables(Machine(Payment))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Payment))==(btrue);
  Gluing_List_Invariant(Machine(Payment))==(btrue);
  Abstract_List_Invariant(Machine(Payment))==(btrue);
  Expanded_List_Invariant(Machine(Payment))==(cards <: CARDS & iban: cards --> STR & type: cards --> TYPES & holder: cards --> person & !crd.(crd: cards => person_age(holder(crd))>=min_age(type(crd))) & person <: PERSON & person_name: person --> STR & person_age: person --> NATURAL & shop <: SHOP & name: shop --> STR & region: shop --> REGIONS);
  Context_List_Invariant(Machine(Payment))==(btrue);
  List_Invariant(Machine(Payment))==(payment <: PAYMENT & payment_card: payment --> cards & payment_shop: payment --> shop & !pay.(pay: payment => type(payment_card(pay)) = card_acceptance(region(payment_shop(pay)))) & payment_amount: payment --> NATURAL)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Machine(Payment))==(btrue);
  Expanded_List_Assertions(Machine(Payment))==(btrue);
  Context_List_Assertions(Machine(Payment))==(btrue);
  List_Assertions(Machine(Payment))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Payment))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Payment))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Payment))==(person,person_name,person_age:={},{},{};cards,iban,type,holder:={},{},{},{};shop,name,region:={},{},{};payment,payment_card,payment_shop,payment_amount:={},{},{},{});
  Context_List_Initialisation(Machine(Payment))==(skip);
  List_Initialisation(Machine(Payment))==(payment:={} || payment_card:={} || payment_shop:={} || payment_amount:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Payment))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Payment),Machine(Card))==(?);
  List_Instanciated_Parameters(Machine(Payment),Machine(Shop))==(?);
  List_Instanciated_Parameters(Machine(Payment),Machine(String))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Machine(Payment),Machine(Shop))==(btrue);
  List_Context_Constraints(Machine(Payment))==(btrue);
  List_Constraints(Machine(Payment))==(btrue);
  List_Constraints(Machine(Payment),Machine(Card))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Payment))==(create_payment,get_payment_card,get_payment_shop,get_payment_amount,set_payment_shop,set_payment_card,set_payment_amount,cancel_payment,create_cards,get_iban,get_type,get_holder,set_cards_iban,set_cards_type,set_cards_holder,create_person,get_person_name,get_person_age,set_person_name);
  List_Operations(Machine(Payment))==(create_payment,get_payment_card,get_payment_shop,get_payment_amount,set_payment_shop,set_payment_card,set_payment_amount,cancel_payment,create_cards,get_iban,get_type,get_holder,set_cards_iban,set_cards_type,set_cards_holder,create_person,get_person_name,get_person_age,set_person_name)
END
&
THEORY ListInputX IS
  List_Input(Machine(Payment),set_person_name)==(person_value,name_value);
  List_Input(Machine(Payment),get_person_age)==(person_value);
  List_Input(Machine(Payment),get_person_name)==(person_value);
  List_Input(Machine(Payment),create_person)==(name_value,age_value);
  List_Input(Machine(Payment),set_cards_holder)==(cards_value,holder_value);
  List_Input(Machine(Payment),set_cards_type)==(cards_value,type_value);
  List_Input(Machine(Payment),set_cards_iban)==(cards_value,iban_value);
  List_Input(Machine(Payment),get_holder)==(cards_value);
  List_Input(Machine(Payment),get_type)==(cards_value);
  List_Input(Machine(Payment),get_iban)==(cards_value);
  List_Input(Machine(Payment),create_cards)==(iban_value,type_value,holder_value);
  List_Input(Machine(Payment),create_payment)==(card_value,shop_value,amount_value);
  List_Input(Machine(Payment),get_payment_card)==(payment_value);
  List_Input(Machine(Payment),get_payment_shop)==(payment_value);
  List_Input(Machine(Payment),get_payment_amount)==(payment_value);
  List_Input(Machine(Payment),set_payment_shop)==(payment_value,shop_value);
  List_Input(Machine(Payment),set_payment_card)==(payment_value,card_value);
  List_Input(Machine(Payment),set_payment_amount)==(payment_value,amount_value);
  List_Input(Machine(Payment),cancel_payment)==(payment_value)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Payment),set_person_name)==(?);
  List_Output(Machine(Payment),get_person_age)==(age_value);
  List_Output(Machine(Payment),get_person_name)==(name_value);
  List_Output(Machine(Payment),create_person)==(person_value);
  List_Output(Machine(Payment),set_cards_holder)==(?);
  List_Output(Machine(Payment),set_cards_type)==(?);
  List_Output(Machine(Payment),set_cards_iban)==(?);
  List_Output(Machine(Payment),get_holder)==(holder_value);
  List_Output(Machine(Payment),get_type)==(type_value);
  List_Output(Machine(Payment),get_iban)==(iban_value);
  List_Output(Machine(Payment),create_cards)==(cards_value);
  List_Output(Machine(Payment),create_payment)==(payment_value);
  List_Output(Machine(Payment),get_payment_card)==(card_value);
  List_Output(Machine(Payment),get_payment_shop)==(shop_value);
  List_Output(Machine(Payment),get_payment_amount)==(amount_value);
  List_Output(Machine(Payment),set_payment_shop)==(?);
  List_Output(Machine(Payment),set_payment_card)==(?);
  List_Output(Machine(Payment),set_payment_amount)==(?);
  List_Output(Machine(Payment),cancel_payment)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Payment),set_person_name)==(set_person_name(person_value,name_value));
  List_Header(Machine(Payment),get_person_age)==(age_value <-- get_person_age(person_value));
  List_Header(Machine(Payment),get_person_name)==(name_value <-- get_person_name(person_value));
  List_Header(Machine(Payment),create_person)==(person_value <-- create_person(name_value,age_value));
  List_Header(Machine(Payment),set_cards_holder)==(set_cards_holder(cards_value,holder_value));
  List_Header(Machine(Payment),set_cards_type)==(set_cards_type(cards_value,type_value));
  List_Header(Machine(Payment),set_cards_iban)==(set_cards_iban(cards_value,iban_value));
  List_Header(Machine(Payment),get_holder)==(holder_value <-- get_holder(cards_value));
  List_Header(Machine(Payment),get_type)==(type_value <-- get_type(cards_value));
  List_Header(Machine(Payment),get_iban)==(iban_value <-- get_iban(cards_value));
  List_Header(Machine(Payment),create_cards)==(cards_value <-- create_cards(iban_value,type_value,holder_value));
  List_Header(Machine(Payment),create_payment)==(payment_value <-- create_payment(card_value,shop_value,amount_value));
  List_Header(Machine(Payment),get_payment_card)==(card_value <-- get_payment_card(payment_value));
  List_Header(Machine(Payment),get_payment_shop)==(shop_value <-- get_payment_shop(payment_value));
  List_Header(Machine(Payment),get_payment_amount)==(amount_value <-- get_payment_amount(payment_value));
  List_Header(Machine(Payment),set_payment_shop)==(set_payment_shop(payment_value,shop_value));
  List_Header(Machine(Payment),set_payment_card)==(set_payment_card(payment_value,card_value));
  List_Header(Machine(Payment),set_payment_amount)==(set_payment_amount(payment_value,amount_value));
  List_Header(Machine(Payment),cancel_payment)==(cancel_payment(payment_value))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Machine(Payment),set_person_name)==(person_value: person & name_value: STR);
  List_Precondition(Machine(Payment),set_person_name)==(person_value: person & name_value: STR);
  Own_Precondition(Machine(Payment),get_person_age)==(person_value: person);
  List_Precondition(Machine(Payment),get_person_age)==(person_value: person);
  Own_Precondition(Machine(Payment),get_person_name)==(person_value: person);
  List_Precondition(Machine(Payment),get_person_name)==(person_value: person);
  Own_Precondition(Machine(Payment),create_person)==(name_value: STR & age_value: NATURAL);
  List_Precondition(Machine(Payment),create_person)==(name_value: STR & age_value: NATURAL);
  Own_Precondition(Machine(Payment),set_cards_holder)==(cards_value: cards & holder_value: person & person_age(holder_value)>=min_age(type(cards_value)));
  List_Precondition(Machine(Payment),set_cards_holder)==(cards_value: cards & holder_value: person & person_age(holder_value)>=min_age(type(cards_value)));
  Own_Precondition(Machine(Payment),set_cards_type)==(cards_value: cards & type_value: TYPES & person_age(holder(cards_value))>=min_age(type_value));
  List_Precondition(Machine(Payment),set_cards_type)==(cards_value: cards & type_value: TYPES & person_age(holder(cards_value))>=min_age(type_value));
  Own_Precondition(Machine(Payment),set_cards_iban)==(cards_value: cards & iban_value: STR);
  List_Precondition(Machine(Payment),set_cards_iban)==(cards_value: cards & iban_value: STR);
  Own_Precondition(Machine(Payment),get_holder)==(cards_value: cards);
  List_Precondition(Machine(Payment),get_holder)==(cards_value: cards);
  Own_Precondition(Machine(Payment),get_type)==(cards_value: cards);
  List_Precondition(Machine(Payment),get_type)==(cards_value: cards);
  Own_Precondition(Machine(Payment),get_iban)==(cards_value: cards);
  List_Precondition(Machine(Payment),get_iban)==(cards_value: cards);
  Own_Precondition(Machine(Payment),create_cards)==(iban_value: STR & type_value: TYPES & holder_value: person & person_age(holder_value)>=min_age(type_value));
  List_Precondition(Machine(Payment),create_cards)==(iban_value: STR & type_value: TYPES & holder_value: person & person_age(holder_value)>=min_age(type_value));
  List_Precondition(Machine(Payment),create_payment)==(card_value: cards & shop_value: shop & amount_value: NATURAL & type(card_value) = card_acceptance(region(shop_value)));
  List_Precondition(Machine(Payment),get_payment_card)==(payment_value: payment);
  List_Precondition(Machine(Payment),get_payment_shop)==(payment_value: payment);
  List_Precondition(Machine(Payment),get_payment_amount)==(payment_value: payment);
  List_Precondition(Machine(Payment),set_payment_shop)==(payment_value: payment & shop_value: shop & type(payment_card(payment_value)) = card_acceptance(region(shop_value)));
  List_Precondition(Machine(Payment),set_payment_card)==(payment_value: payment & card_value: cards & type(card_value) = card_acceptance(region(payment_shop(payment_value))));
  List_Precondition(Machine(Payment),set_payment_amount)==(payment_value: payment & amount_value: NATURAL);
  List_Precondition(Machine(Payment),cancel_payment)==(payment_value: payment)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Payment),cancel_payment)==(payment_value: payment | payment,payment_card,payment_shop,payment_amount:=payment-{payment_value},{payment_value}<<|payment_card,{payment_value}<<|payment_shop,{payment_value}<<|payment_amount);
  Expanded_List_Substitution(Machine(Payment),set_payment_amount)==(payment_value: payment & amount_value: NATURAL | discounts(region(payment_shop(payment_value)))>=amount_value ==> payment_amount:=payment_amount<+{payment_value|->1} [] not(discounts(region(payment_shop(payment_value)))>=amount_value) ==> payment_amount:=payment_amount<+{payment_value|->amount_value-discounts(region(payment_shop(payment_value)))});
  Expanded_List_Substitution(Machine(Payment),set_payment_card)==(payment_value: payment & card_value: cards & type(card_value) = card_acceptance(region(payment_shop(payment_value))) | payment_card:=payment_card<+{payment_value|->card_value});
  Expanded_List_Substitution(Machine(Payment),set_payment_shop)==(payment_value: payment & shop_value: shop & type(payment_card(payment_value)) = card_acceptance(region(shop_value)) | payment_shop:=payment_shop<+{payment_value|->shop_value});
  Expanded_List_Substitution(Machine(Payment),get_payment_amount)==(payment_value: payment | amount_value:=payment_amount(payment_value));
  Expanded_List_Substitution(Machine(Payment),get_payment_shop)==(payment_value: payment | shop_value:=payment_shop(payment_value));
  Expanded_List_Substitution(Machine(Payment),get_payment_card)==(payment_value: payment | card_value:=payment_card(payment_value));
  Expanded_List_Substitution(Machine(Payment),create_payment)==(card_value: cards & shop_value: shop & amount_value: NATURAL & type(card_value) = card_acceptance(region(shop_value)) | @pay.(pay: PAYMENT-payment ==> (payment,payment_card,payment_shop:=payment\/{pay},payment_card<+{pay|->card_value},payment_shop<+{pay|->shop_value} || (discounts(region(shop_value))>=amount_value ==> payment_amount,payment_value:=payment_amount<+{pay|->1},pay [] not(discounts(region(shop_value))>=amount_value) ==> payment_amount,payment_value:=payment_amount<+{pay|->amount_value-discounts(region(shop_value))},pay))));
  List_Substitution(Machine(Payment),set_person_name)==(person_name(person_value):=name_value);
  Expanded_List_Substitution(Machine(Payment),set_person_name)==(person_value: person & name_value: STR | person_name:=person_name<+{person_value|->name_value});
  List_Substitution(Machine(Payment),get_person_age)==(age_value:=person_age(person_value));
  Expanded_List_Substitution(Machine(Payment),get_person_age)==(person_value: person | age_value:=person_age(person_value));
  List_Substitution(Machine(Payment),get_person_name)==(name_value:=person_name(person_value));
  Expanded_List_Substitution(Machine(Payment),get_person_name)==(person_value: person | name_value:=person_name(person_value));
  List_Substitution(Machine(Payment),create_person)==(ANY pers WHERE pers: PERSON-person THEN person:=person\/{pers} || person_name(pers):=name_value || person_age(pers):=age_value || person_value:=pers END);
  Expanded_List_Substitution(Machine(Payment),create_person)==(name_value: STR & age_value: NATURAL | @pers.(pers: PERSON-person ==> person,person_name,person_age,person_value:=person\/{pers},person_name<+{pers|->name_value},person_age<+{pers|->age_value},pers));
  List_Substitution(Machine(Payment),set_cards_holder)==(holder(cards_value):=holder_value);
  Expanded_List_Substitution(Machine(Payment),set_cards_holder)==(cards_value: cards & holder_value: person & person_age(holder_value)>=min_age(type(cards_value)) | holder:=holder<+{cards_value|->holder_value});
  List_Substitution(Machine(Payment),set_cards_type)==(type(cards_value):=type_value);
  Expanded_List_Substitution(Machine(Payment),set_cards_type)==(cards_value: cards & type_value: TYPES & person_age(holder(cards_value))>=min_age(type_value) | type:=type<+{cards_value|->type_value});
  List_Substitution(Machine(Payment),set_cards_iban)==(iban(cards_value):=iban_value);
  Expanded_List_Substitution(Machine(Payment),set_cards_iban)==(cards_value: cards & iban_value: STR | iban:=iban<+{cards_value|->iban_value});
  List_Substitution(Machine(Payment),get_holder)==(holder_value:=holder(cards_value));
  Expanded_List_Substitution(Machine(Payment),get_holder)==(cards_value: cards | holder_value:=holder(cards_value));
  List_Substitution(Machine(Payment),get_type)==(type_value:=type(cards_value));
  Expanded_List_Substitution(Machine(Payment),get_type)==(cards_value: cards | type_value:=type(cards_value));
  List_Substitution(Machine(Payment),get_iban)==(iban_value:=iban(cards_value));
  Expanded_List_Substitution(Machine(Payment),get_iban)==(cards_value: cards | iban_value:=iban(cards_value));
  List_Substitution(Machine(Payment),create_cards)==(ANY crd WHERE crd: CARDS-cards THEN cards:=cards\/{crd} || iban(crd):=iban_value || type(crd):=type_value || holder(crd):=holder_value || cards_value:=crd END);
  Expanded_List_Substitution(Machine(Payment),create_cards)==(iban_value: STR & type_value: TYPES & holder_value: person & person_age(holder_value)>=min_age(type_value) | @crd.(crd: CARDS-cards ==> cards,iban,type,holder,cards_value:=cards\/{crd},iban<+{crd|->iban_value},type<+{crd|->type_value},holder<+{crd|->holder_value},crd));
  List_Substitution(Machine(Payment),create_payment)==(ANY pay WHERE pay: PAYMENT-payment THEN payment:=payment\/{pay} || payment_card(pay):=card_value || payment_shop(pay):=shop_value || IF discounts(region(shop_value))>=amount_value THEN payment_amount(pay):=1 || payment_value:=pay ELSE payment_amount(pay):=amount_value-discounts(region(shop_value)) || payment_value:=pay END END);
  List_Substitution(Machine(Payment),get_payment_card)==(card_value:=payment_card(payment_value));
  List_Substitution(Machine(Payment),get_payment_shop)==(shop_value:=payment_shop(payment_value));
  List_Substitution(Machine(Payment),get_payment_amount)==(amount_value:=payment_amount(payment_value));
  List_Substitution(Machine(Payment),set_payment_shop)==(payment_shop(payment_value):=shop_value);
  List_Substitution(Machine(Payment),set_payment_card)==(payment_card(payment_value):=card_value);
  List_Substitution(Machine(Payment),set_payment_amount)==(IF discounts(region(payment_shop(payment_value)))>=amount_value THEN payment_amount(payment_value):=1 ELSE payment_amount(payment_value):=amount_value-discounts(region(payment_shop(payment_value))) END);
  List_Substitution(Machine(Payment),cancel_payment)==(payment:=payment-{payment_value} || payment_card:={payment_value}<<|payment_card || payment_shop:={payment_value}<<|payment_shop || payment_amount:={payment_value}<<|payment_amount)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Payment))==(min_age,card_acceptance,discounts);
  Inherited_List_Constants(Machine(Payment))==(min_age);
  List_Constants(Machine(Payment))==(card_acceptance,discounts)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Payment),REGIONS)==({AFRICA,EUROPE,USA,ASIA});
  Context_List_Enumerated(Machine(Payment))==(?);
  Context_List_Defered(Machine(Payment))==(STR);
  Context_List_Sets(Machine(Payment))==(STR);
  List_Valuable_Sets(Machine(Payment))==(PERSON,CARDS,SHOP,PAYMENT);
  Inherited_List_Enumerated(Machine(Payment))==(TYPES,REGIONS);
  Inherited_List_Defered(Machine(Payment))==(CARDS,PERSON,SHOP);
  Inherited_List_Sets(Machine(Payment))==(CARDS,TYPES,PERSON,SHOP,REGIONS);
  List_Enumerated(Machine(Payment))==(?);
  List_Defered(Machine(Payment))==(PAYMENT);
  List_Sets(Machine(Payment))==(PAYMENT);
  Set_Definition(Machine(Payment),SHOP)==(?);
  Set_Definition(Machine(Payment),TYPES)==({VISA,VIRTUAL});
  Set_Definition(Machine(Payment),PERSON)==(?);
  Set_Definition(Machine(Payment),CARDS)==(?);
  Set_Definition(Machine(Payment),PAYMENT)==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Payment))==(?);
  Expanded_List_HiddenConstants(Machine(Payment))==(?);
  List_HiddenConstants(Machine(Payment))==(?);
  External_List_HiddenConstants(Machine(Payment))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Payment))==(btrue);
  Context_List_Properties(Machine(Payment))==(STR: FIN(INTEGER) & not(STR = {}));
  Inherited_List_Properties(Machine(Payment))==(min_age: TYPES --> NATURAL & min_age = {VISA|->22,VIRTUAL|->14} & CARDS: FIN(INTEGER) & not(CARDS = {}) & TYPES: FIN(INTEGER) & not(TYPES = {}) & PERSON: FIN(INTEGER) & not(PERSON = {}) & SHOP: FIN(INTEGER) & not(SHOP = {}) & REGIONS: FIN(INTEGER) & not(REGIONS = {}));
  List_Properties(Machine(Payment))==(card_acceptance: REGIONS --> TYPES & card_acceptance = {USA|->VISA,EUROPE|->VIRTUAL} & discounts: REGIONS --> NATURAL & discounts = {EUROPE|->20,USA|->0} & PAYMENT: FIN(INTEGER) & not(PAYMENT = {}))
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(Payment),Machine(String))==(?);
  Seen_Context_List_Enumerated(Machine(Payment))==(?);
  Seen_Context_List_Invariant(Machine(Payment))==(btrue);
  Seen_Context_List_Assertions(Machine(Payment))==(btrue);
  Seen_Context_List_Properties(Machine(Payment))==(btrue);
  Seen_List_Constraints(Machine(Payment))==(btrue);
  Seen_List_Operations(Machine(Payment),Machine(String))==(?);
  Seen_Expanded_List_Invariant(Machine(Payment),Machine(String))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Payment),set_person_name)==(?);
  List_ANY_Var(Machine(Payment),get_person_age)==(?);
  List_ANY_Var(Machine(Payment),get_person_name)==(?);
  List_ANY_Var(Machine(Payment),create_person)==(Var(pers) == atype(PERSON,?,?));
  List_ANY_Var(Machine(Payment),set_cards_holder)==(?);
  List_ANY_Var(Machine(Payment),set_cards_type)==(?);
  List_ANY_Var(Machine(Payment),set_cards_iban)==(?);
  List_ANY_Var(Machine(Payment),get_holder)==(?);
  List_ANY_Var(Machine(Payment),get_type)==(?);
  List_ANY_Var(Machine(Payment),get_iban)==(?);
  List_ANY_Var(Machine(Payment),create_cards)==(Var(crd) == atype(CARDS,?,?));
  List_ANY_Var(Machine(Payment),create_payment)==(Var(pay) == atype(PAYMENT,?,?));
  List_ANY_Var(Machine(Payment),get_payment_card)==(?);
  List_ANY_Var(Machine(Payment),get_payment_shop)==(?);
  List_ANY_Var(Machine(Payment),get_payment_amount)==(?);
  List_ANY_Var(Machine(Payment),set_payment_shop)==(?);
  List_ANY_Var(Machine(Payment),set_payment_card)==(?);
  List_ANY_Var(Machine(Payment),set_payment_amount)==(?);
  List_ANY_Var(Machine(Payment),cancel_payment)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Payment)) == (card_acceptance,discounts,PAYMENT | SHOP,REGIONS,AFRICA,EUROPE,USA,ASIA,min_age,CARDS,TYPES,VISA,VIRTUAL,PERSON | payment_amount,payment_shop,payment_card,payment | V,region,name,shop,holder,type,iban,cards,V,person_age,person_name,person | create_payment,get_payment_card,get_payment_shop,get_payment_amount,set_payment_shop,set_payment_card,set_payment_amount,cancel_payment | create_cards,get_iban,get_type,get_holder,set_cards_iban,set_cards_type,set_cards_holder,create_person,get_person_name,get_person_age,set_person_name | seen(Machine(String)),included(Machine(Card)),included(Machine(Shop)) | ? | Payment);
  List_Of_HiddenCst_Ids(Machine(Payment)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Payment)) == (card_acceptance,discounts,min_age);
  List_Of_VisibleVar_Ids(Machine(Payment)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Payment)) == (seen(Machine(String)): (STR | ? | ? | ? | ? | ? | ? | ? | ?));
  List_Of_Ids(Machine(Shop)) == (SHOP,REGIONS,AFRICA,EUROPE,USA,ASIA | ? | region,name,shop | ? | create_shop,get_shop_name,get_shop_region,set_shop_name,set_shop_region | ? | seen(Machine(String)) | ? | Shop);
  List_Of_HiddenCst_Ids(Machine(Shop)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Shop)) == (?);
  List_Of_VisibleVar_Ids(Machine(Shop)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Shop)) == (?: ?);
  List_Of_Ids(Machine(String)) == (STR | ? | ? | ? | ? | ? | ? | ? | String);
  List_Of_HiddenCst_Ids(Machine(String)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(String)) == (?);
  List_Of_VisibleVar_Ids(Machine(String)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(String)) == (?: ?);
  List_Of_Ids(Machine(Card)) == (min_age,CARDS,TYPES,VISA,VIRTUAL | PERSON | holder,type,iban,cards | V,person_age,person_name,person | create_cards,get_iban,get_type,get_holder,set_cards_iban,set_cards_type,set_cards_holder | create_person,get_person_name,get_person_age,set_person_name | seen(Machine(String)),included(Machine(Person)) | ? | Card);
  List_Of_HiddenCst_Ids(Machine(Card)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Card)) == (min_age);
  List_Of_VisibleVar_Ids(Machine(Card)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Card)) == (seen(Machine(String)): (STR | ? | ? | ? | ? | ? | ? | ? | ?));
  List_Of_Ids(Machine(Person)) == (PERSON | ? | person_age,person_name,person | ? | create_person,get_person_name,get_person_age,set_person_name | ? | seen(Machine(String)) | ? | Person);
  List_Of_HiddenCst_Ids(Machine(Person)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Person)) == (?);
  List_Of_VisibleVar_Ids(Machine(Person)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Person)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Payment)) == (Type(TYPES) == Cst(SetOf(etype(TYPES,0,1)));Type(CARDS) == Cst(SetOf(atype(CARDS,"[CARDS","]CARDS")));Type(PERSON) == Cst(SetOf(atype(PERSON,"[PERSON","]PERSON")));Type(REGIONS) == Cst(SetOf(etype(REGIONS,0,3)));Type(SHOP) == Cst(SetOf(atype(SHOP,"[SHOP","]SHOP")));Type(PAYMENT) == Cst(SetOf(atype(PAYMENT,"[PAYMENT","]PAYMENT"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Payment)) == (Type(min_age) == Cst(SetOf(etype(TYPES,0,1)*btype(INTEGER,?,?)));Type(VIRTUAL) == Cst(etype(TYPES,0,1));Type(VISA) == Cst(etype(TYPES,0,1));Type(ASIA) == Cst(etype(REGIONS,0,3));Type(USA) == Cst(etype(REGIONS,0,3));Type(EUROPE) == Cst(etype(REGIONS,0,3));Type(AFRICA) == Cst(etype(REGIONS,0,3));Type(card_acceptance) == Cst(SetOf(etype(REGIONS,0,3)*etype(TYPES,0,1)));Type(discounts) == Cst(SetOf(etype(REGIONS,0,3)*btype(INTEGER,?,?))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Payment)) == (Type(cards) == Mvl(SetOf(atype(CARDS,?,?)));Type(iban) == Mvl(SetOf(atype(CARDS,?,?)*atype(STR,"[STR","]STR")));Type(type) == Mvl(SetOf(atype(CARDS,?,?)*etype(TYPES,0,1)));Type(holder) == Mvl(SetOf(atype(CARDS,?,?)*atype(PERSON,?,?)));Type(person_age) == Mvl(SetOf(atype(PERSON,?,?)*btype(INTEGER,?,?)));Type(person_name) == Mvl(SetOf(atype(PERSON,?,?)*atype(STR,"[STR","]STR")));Type(person) == Mvl(SetOf(atype(PERSON,?,?)));Type(shop) == Mvl(SetOf(atype(SHOP,?,?)));Type(name) == Mvl(SetOf(atype(SHOP,?,?)*atype(STR,"[STR","]STR")));Type(region) == Mvl(SetOf(atype(SHOP,?,?)*etype(REGIONS,0,3)));Type(payment_amount) == Mvl(SetOf(atype(PAYMENT,?,?)*btype(INTEGER,?,?)));Type(payment_shop) == Mvl(SetOf(atype(PAYMENT,?,?)*atype(SHOP,?,?)));Type(payment_card) == Mvl(SetOf(atype(PAYMENT,?,?)*atype(CARDS,?,?)));Type(payment) == Mvl(SetOf(atype(PAYMENT,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Payment)) == (Type(create_cards) == Cst(atype(CARDS,?,?),atype(STR,?,?)*etype(TYPES,?,?)*atype(PERSON,?,?));Type(get_iban) == Cst(atype(STR,?,?),atype(CARDS,?,?));Type(get_type) == Cst(etype(TYPES,?,?),atype(CARDS,?,?));Type(get_holder) == Cst(atype(PERSON,?,?),atype(CARDS,?,?));Type(set_cards_iban) == Cst(No_type,atype(CARDS,?,?)*atype(STR,?,?));Type(set_cards_type) == Cst(No_type,atype(CARDS,?,?)*etype(TYPES,?,?));Type(set_cards_holder) == Cst(No_type,atype(CARDS,?,?)*atype(PERSON,?,?));Type(create_person) == Cst(atype(PERSON,?,?),atype(STR,?,?)*btype(INTEGER,?,?));Type(get_person_name) == Cst(atype(STR,?,?),atype(PERSON,?,?));Type(get_person_age) == Cst(btype(INTEGER,?,?),atype(PERSON,?,?));Type(set_person_name) == Cst(No_type,atype(PERSON,?,?)*atype(STR,?,?));Type(cancel_payment) == Cst(No_type,atype(PAYMENT,?,?));Type(set_payment_amount) == Cst(No_type,atype(PAYMENT,?,?)*btype(INTEGER,?,?));Type(set_payment_card) == Cst(No_type,atype(PAYMENT,?,?)*atype(CARDS,?,?));Type(set_payment_shop) == Cst(No_type,atype(PAYMENT,?,?)*atype(SHOP,?,?));Type(get_payment_amount) == Cst(btype(INTEGER,?,?),atype(PAYMENT,?,?));Type(get_payment_shop) == Cst(atype(SHOP,?,?),atype(PAYMENT,?,?));Type(get_payment_card) == Cst(atype(CARDS,?,?),atype(PAYMENT,?,?));Type(create_payment) == Cst(atype(PAYMENT,?,?),atype(CARDS,?,?)*atype(SHOP,?,?)*btype(INTEGER,?,?)));
  Observers(Machine(Payment)) == (Type(get_iban) == Cst(atype(STR,?,?),atype(CARDS,?,?));Type(get_type) == Cst(etype(TYPES,?,?),atype(CARDS,?,?));Type(get_holder) == Cst(atype(PERSON,?,?),atype(CARDS,?,?));Type(get_person_name) == Cst(atype(STR,?,?),atype(PERSON,?,?));Type(get_person_age) == Cst(btype(INTEGER,?,?),atype(PERSON,?,?));Type(get_payment_amount) == Cst(btype(INTEGER,?,?),atype(PAYMENT,?,?));Type(get_payment_shop) == Cst(atype(SHOP,?,?),atype(PAYMENT,?,?));Type(get_payment_card) == Cst(atype(CARDS,?,?),atype(PAYMENT,?,?)))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
