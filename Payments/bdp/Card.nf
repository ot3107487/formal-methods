Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Card))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Card))==(Machine(Card));
  Level(Machine(Card))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Card)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Card))==(String)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Card))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Card))==(Person);
  List_Includes(Machine(Card))==(Person)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Card))==(create_person,get_person_name,get_person_age,set_person_name)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Card))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Card))==(?);
  Context_List_Variables(Machine(Card))==(?);
  Abstract_List_Variables(Machine(Card))==(?);
  Local_List_Variables(Machine(Card))==(holder,type,iban,cards);
  List_Variables(Machine(Card))==(holder,type,iban,cards,person_age,person_name,person);
  External_List_Variables(Machine(Card))==(holder,type,iban,cards,person_age,person_name,person)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Card))==(?);
  Abstract_List_VisibleVariables(Machine(Card))==(?);
  External_List_VisibleVariables(Machine(Card))==(?);
  Expanded_List_VisibleVariables(Machine(Card))==(?);
  List_VisibleVariables(Machine(Card))==(?);
  Internal_List_VisibleVariables(Machine(Card))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Card))==(btrue);
  Gluing_List_Invariant(Machine(Card))==(btrue);
  Abstract_List_Invariant(Machine(Card))==(btrue);
  Expanded_List_Invariant(Machine(Card))==(person <: PERSON & person_name: person --> STR & person_age: person --> NATURAL);
  Context_List_Invariant(Machine(Card))==(btrue);
  List_Invariant(Machine(Card))==(cards <: CARDS & iban: cards --> STR & type: cards --> TYPES & holder: cards --> person & !crd.(crd: cards => person_age(holder(crd))>=min_age(type(crd))))
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Machine(Card))==(btrue);
  Expanded_List_Assertions(Machine(Card))==(btrue);
  Context_List_Assertions(Machine(Card))==(btrue);
  List_Assertions(Machine(Card))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Card))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Card))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Card))==(person,person_name,person_age:={},{},{};cards,iban,type,holder:={},{},{},{});
  Context_List_Initialisation(Machine(Card))==(skip);
  List_Initialisation(Machine(Card))==(cards:={} || iban:={} || type:={} || holder:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Card))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Card),Machine(Person))==(?);
  List_Instanciated_Parameters(Machine(Card),Machine(String))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Machine(Card),Machine(Person))==(btrue);
  List_Context_Constraints(Machine(Card))==(btrue);
  List_Constraints(Machine(Card))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Card))==(create_cards,get_iban,get_type,get_holder,set_cards_iban,set_cards_type,set_cards_holder,create_person,get_person_name,get_person_age,set_person_name);
  List_Operations(Machine(Card))==(create_cards,get_iban,get_type,get_holder,set_cards_iban,set_cards_type,set_cards_holder,create_person,get_person_name,get_person_age,set_person_name)
END
&
THEORY ListInputX IS
  List_Input(Machine(Card),set_person_name)==(person_value,name_value);
  List_Input(Machine(Card),get_person_age)==(person_value);
  List_Input(Machine(Card),get_person_name)==(person_value);
  List_Input(Machine(Card),create_person)==(name_value,age_value);
  List_Input(Machine(Card),create_cards)==(iban_value,type_value,holder_value);
  List_Input(Machine(Card),get_iban)==(cards_value);
  List_Input(Machine(Card),get_type)==(cards_value);
  List_Input(Machine(Card),get_holder)==(cards_value);
  List_Input(Machine(Card),set_cards_iban)==(cards_value,iban_value);
  List_Input(Machine(Card),set_cards_type)==(cards_value,type_value);
  List_Input(Machine(Card),set_cards_holder)==(cards_value,holder_value)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Card),set_person_name)==(?);
  List_Output(Machine(Card),get_person_age)==(age_value);
  List_Output(Machine(Card),get_person_name)==(name_value);
  List_Output(Machine(Card),create_person)==(person_value);
  List_Output(Machine(Card),create_cards)==(cards_value);
  List_Output(Machine(Card),get_iban)==(iban_value);
  List_Output(Machine(Card),get_type)==(type_value);
  List_Output(Machine(Card),get_holder)==(holder_value);
  List_Output(Machine(Card),set_cards_iban)==(?);
  List_Output(Machine(Card),set_cards_type)==(?);
  List_Output(Machine(Card),set_cards_holder)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Card),set_person_name)==(set_person_name(person_value,name_value));
  List_Header(Machine(Card),get_person_age)==(age_value <-- get_person_age(person_value));
  List_Header(Machine(Card),get_person_name)==(name_value <-- get_person_name(person_value));
  List_Header(Machine(Card),create_person)==(person_value <-- create_person(name_value,age_value));
  List_Header(Machine(Card),create_cards)==(cards_value <-- create_cards(iban_value,type_value,holder_value));
  List_Header(Machine(Card),get_iban)==(iban_value <-- get_iban(cards_value));
  List_Header(Machine(Card),get_type)==(type_value <-- get_type(cards_value));
  List_Header(Machine(Card),get_holder)==(holder_value <-- get_holder(cards_value));
  List_Header(Machine(Card),set_cards_iban)==(set_cards_iban(cards_value,iban_value));
  List_Header(Machine(Card),set_cards_type)==(set_cards_type(cards_value,type_value));
  List_Header(Machine(Card),set_cards_holder)==(set_cards_holder(cards_value,holder_value))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Machine(Card),set_person_name)==(person_value: person & name_value: STR);
  List_Precondition(Machine(Card),set_person_name)==(person_value: person & name_value: STR);
  Own_Precondition(Machine(Card),get_person_age)==(person_value: person);
  List_Precondition(Machine(Card),get_person_age)==(person_value: person);
  Own_Precondition(Machine(Card),get_person_name)==(person_value: person);
  List_Precondition(Machine(Card),get_person_name)==(person_value: person);
  Own_Precondition(Machine(Card),create_person)==(name_value: STR & age_value: NATURAL);
  List_Precondition(Machine(Card),create_person)==(name_value: STR & age_value: NATURAL);
  List_Precondition(Machine(Card),create_cards)==(iban_value: STR & type_value: TYPES & holder_value: person & person_age(holder_value)>=min_age(type_value));
  List_Precondition(Machine(Card),get_iban)==(cards_value: cards);
  List_Precondition(Machine(Card),get_type)==(cards_value: cards);
  List_Precondition(Machine(Card),get_holder)==(cards_value: cards);
  List_Precondition(Machine(Card),set_cards_iban)==(cards_value: cards & iban_value: STR);
  List_Precondition(Machine(Card),set_cards_type)==(cards_value: cards & type_value: TYPES & person_age(holder(cards_value))>=min_age(type_value));
  List_Precondition(Machine(Card),set_cards_holder)==(cards_value: cards & holder_value: person & person_age(holder_value)>=min_age(type(cards_value)))
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Card),set_cards_holder)==(cards_value: cards & holder_value: person & person_age(holder_value)>=min_age(type(cards_value)) | holder:=holder<+{cards_value|->holder_value});
  Expanded_List_Substitution(Machine(Card),set_cards_type)==(cards_value: cards & type_value: TYPES & person_age(holder(cards_value))>=min_age(type_value) | type:=type<+{cards_value|->type_value});
  Expanded_List_Substitution(Machine(Card),set_cards_iban)==(cards_value: cards & iban_value: STR | iban:=iban<+{cards_value|->iban_value});
  Expanded_List_Substitution(Machine(Card),get_holder)==(cards_value: cards | holder_value:=holder(cards_value));
  Expanded_List_Substitution(Machine(Card),get_type)==(cards_value: cards | type_value:=type(cards_value));
  Expanded_List_Substitution(Machine(Card),get_iban)==(cards_value: cards | iban_value:=iban(cards_value));
  Expanded_List_Substitution(Machine(Card),create_cards)==(iban_value: STR & type_value: TYPES & holder_value: person & person_age(holder_value)>=min_age(type_value) | @crd.(crd: CARDS-cards ==> cards,iban,type,holder,cards_value:=cards\/{crd},iban<+{crd|->iban_value},type<+{crd|->type_value},holder<+{crd|->holder_value},crd));
  List_Substitution(Machine(Card),set_person_name)==(person_name(person_value):=name_value);
  Expanded_List_Substitution(Machine(Card),set_person_name)==(person_value: person & name_value: STR | person_name:=person_name<+{person_value|->name_value});
  List_Substitution(Machine(Card),get_person_age)==(age_value:=person_age(person_value));
  Expanded_List_Substitution(Machine(Card),get_person_age)==(person_value: person | age_value:=person_age(person_value));
  List_Substitution(Machine(Card),get_person_name)==(name_value:=person_name(person_value));
  Expanded_List_Substitution(Machine(Card),get_person_name)==(person_value: person | name_value:=person_name(person_value));
  List_Substitution(Machine(Card),create_person)==(ANY pers WHERE pers: PERSON-person THEN person:=person\/{pers} || person_name(pers):=name_value || person_age(pers):=age_value || person_value:=pers END);
  Expanded_List_Substitution(Machine(Card),create_person)==(name_value: STR & age_value: NATURAL | @pers.(pers: PERSON-person ==> person,person_name,person_age,person_value:=person\/{pers},person_name<+{pers|->name_value},person_age<+{pers|->age_value},pers));
  List_Substitution(Machine(Card),create_cards)==(ANY crd WHERE crd: CARDS-cards THEN cards:=cards\/{crd} || iban(crd):=iban_value || type(crd):=type_value || holder(crd):=holder_value || cards_value:=crd END);
  List_Substitution(Machine(Card),get_iban)==(iban_value:=iban(cards_value));
  List_Substitution(Machine(Card),get_type)==(type_value:=type(cards_value));
  List_Substitution(Machine(Card),get_holder)==(holder_value:=holder(cards_value));
  List_Substitution(Machine(Card),set_cards_iban)==(iban(cards_value):=iban_value);
  List_Substitution(Machine(Card),set_cards_type)==(type(cards_value):=type_value);
  List_Substitution(Machine(Card),set_cards_holder)==(holder(cards_value):=holder_value)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Card))==(min_age);
  Inherited_List_Constants(Machine(Card))==(?);
  List_Constants(Machine(Card))==(min_age)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Card),PERSON)==(?);
  Context_List_Enumerated(Machine(Card))==(?);
  Context_List_Defered(Machine(Card))==(STR);
  Context_List_Sets(Machine(Card))==(STR);
  List_Valuable_Sets(Machine(Card))==(PERSON,CARDS);
  Inherited_List_Enumerated(Machine(Card))==(?);
  Inherited_List_Defered(Machine(Card))==(PERSON);
  Inherited_List_Sets(Machine(Card))==(PERSON);
  List_Enumerated(Machine(Card))==(TYPES);
  List_Defered(Machine(Card))==(CARDS);
  List_Sets(Machine(Card))==(CARDS,TYPES);
  Set_Definition(Machine(Card),CARDS)==(?);
  Set_Definition(Machine(Card),TYPES)==({VISA,VIRTUAL})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Card))==(?);
  Expanded_List_HiddenConstants(Machine(Card))==(?);
  List_HiddenConstants(Machine(Card))==(?);
  External_List_HiddenConstants(Machine(Card))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Card))==(btrue);
  Context_List_Properties(Machine(Card))==(STR: FIN(INTEGER) & not(STR = {}));
  Inherited_List_Properties(Machine(Card))==(PERSON: FIN(INTEGER) & not(PERSON = {}));
  List_Properties(Machine(Card))==(min_age: TYPES --> NATURAL & min_age = {VISA|->22,VIRTUAL|->14} & CARDS: FIN(INTEGER) & not(CARDS = {}) & TYPES: FIN(INTEGER) & not(TYPES = {}))
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(Card),Machine(String))==(?);
  Seen_Context_List_Enumerated(Machine(Card))==(?);
  Seen_Context_List_Invariant(Machine(Card))==(btrue);
  Seen_Context_List_Assertions(Machine(Card))==(btrue);
  Seen_Context_List_Properties(Machine(Card))==(btrue);
  Seen_List_Constraints(Machine(Card))==(btrue);
  Seen_List_Operations(Machine(Card),Machine(String))==(?);
  Seen_Expanded_List_Invariant(Machine(Card),Machine(String))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Card),set_person_name)==(?);
  List_ANY_Var(Machine(Card),get_person_age)==(?);
  List_ANY_Var(Machine(Card),get_person_name)==(?);
  List_ANY_Var(Machine(Card),create_person)==(Var(pers) == atype(PERSON,?,?));
  List_ANY_Var(Machine(Card),create_cards)==(Var(crd) == atype(CARDS,?,?));
  List_ANY_Var(Machine(Card),get_iban)==(?);
  List_ANY_Var(Machine(Card),get_type)==(?);
  List_ANY_Var(Machine(Card),get_holder)==(?);
  List_ANY_Var(Machine(Card),set_cards_iban)==(?);
  List_ANY_Var(Machine(Card),set_cards_type)==(?);
  List_ANY_Var(Machine(Card),set_cards_holder)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Card)) == (min_age,CARDS,TYPES,VISA,VIRTUAL | PERSON | holder,type,iban,cards | V,person_age,person_name,person | create_cards,get_iban,get_type,get_holder,set_cards_iban,set_cards_type,set_cards_holder | create_person,get_person_name,get_person_age,set_person_name | seen(Machine(String)),included(Machine(Person)) | ? | Card);
  List_Of_HiddenCst_Ids(Machine(Card)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Card)) == (min_age);
  List_Of_VisibleVar_Ids(Machine(Card)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Card)) == (seen(Machine(String)): (STR | ? | ? | ? | ? | ? | ? | ? | ?));
  List_Of_Ids(Machine(Person)) == (PERSON | ? | person_age,person_name,person | ? | create_person,get_person_name,get_person_age,set_person_name | ? | seen(Machine(String)) | ? | Person);
  List_Of_HiddenCst_Ids(Machine(Person)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Person)) == (?);
  List_Of_VisibleVar_Ids(Machine(Person)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Person)) == (?: ?);
  List_Of_Ids(Machine(String)) == (STR | ? | ? | ? | ? | ? | ? | ? | String);
  List_Of_HiddenCst_Ids(Machine(String)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(String)) == (?);
  List_Of_VisibleVar_Ids(Machine(String)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(String)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Card)) == (Type(PERSON) == Cst(SetOf(atype(PERSON,"[PERSON","]PERSON")));Type(CARDS) == Cst(SetOf(atype(CARDS,"[CARDS","]CARDS")));Type(TYPES) == Cst(SetOf(etype(TYPES,0,1))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Card)) == (Type(VISA) == Cst(etype(TYPES,0,1));Type(VIRTUAL) == Cst(etype(TYPES,0,1));Type(min_age) == Cst(SetOf(etype(TYPES,0,1)*btype(INTEGER,?,?))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Card)) == (Type(person) == Mvl(SetOf(atype(PERSON,?,?)));Type(person_name) == Mvl(SetOf(atype(PERSON,?,?)*atype(STR,"[STR","]STR")));Type(person_age) == Mvl(SetOf(atype(PERSON,?,?)*btype(INTEGER,?,?)));Type(holder) == Mvl(SetOf(atype(CARDS,?,?)*atype(PERSON,?,?)));Type(type) == Mvl(SetOf(atype(CARDS,?,?)*etype(TYPES,0,1)));Type(iban) == Mvl(SetOf(atype(CARDS,?,?)*atype(STR,"[STR","]STR")));Type(cards) == Mvl(SetOf(atype(CARDS,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Card)) == (Type(create_person) == Cst(atype(PERSON,?,?),atype(STR,?,?)*btype(INTEGER,?,?));Type(get_person_name) == Cst(atype(STR,?,?),atype(PERSON,?,?));Type(get_person_age) == Cst(btype(INTEGER,?,?),atype(PERSON,?,?));Type(set_person_name) == Cst(No_type,atype(PERSON,?,?)*atype(STR,?,?));Type(set_cards_holder) == Cst(No_type,atype(CARDS,?,?)*atype(PERSON,?,?));Type(set_cards_type) == Cst(No_type,atype(CARDS,?,?)*etype(TYPES,?,?));Type(set_cards_iban) == Cst(No_type,atype(CARDS,?,?)*atype(STR,?,?));Type(get_holder) == Cst(atype(PERSON,?,?),atype(CARDS,?,?));Type(get_type) == Cst(etype(TYPES,?,?),atype(CARDS,?,?));Type(get_iban) == Cst(atype(STR,?,?),atype(CARDS,?,?));Type(create_cards) == Cst(atype(CARDS,?,?),atype(STR,?,?)*etype(TYPES,?,?)*atype(PERSON,?,?)));
  Observers(Machine(Card)) == (Type(get_person_name) == Cst(atype(STR,?,?),atype(PERSON,?,?));Type(get_person_age) == Cst(btype(INTEGER,?,?),atype(PERSON,?,?));Type(get_holder) == Cst(atype(PERSON,?,?),atype(CARDS,?,?));Type(get_type) == Cst(etype(TYPES,?,?),atype(CARDS,?,?));Type(get_iban) == Cst(atype(STR,?,?),atype(CARDS,?,?)))
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
