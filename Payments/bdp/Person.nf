Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Person))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Person))==(Machine(Person));
  Level(Machine(Person))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Person)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Person))==(String)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Person))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Person))==(?);
  List_Includes(Machine(Person))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Person))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Person))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Person))==(?);
  Context_List_Variables(Machine(Person))==(?);
  Abstract_List_Variables(Machine(Person))==(?);
  Local_List_Variables(Machine(Person))==(person_age,person_name,person);
  List_Variables(Machine(Person))==(person_age,person_name,person);
  External_List_Variables(Machine(Person))==(person_age,person_name,person)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Person))==(?);
  Abstract_List_VisibleVariables(Machine(Person))==(?);
  External_List_VisibleVariables(Machine(Person))==(?);
  Expanded_List_VisibleVariables(Machine(Person))==(?);
  List_VisibleVariables(Machine(Person))==(?);
  Internal_List_VisibleVariables(Machine(Person))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Person))==(btrue);
  Gluing_List_Invariant(Machine(Person))==(btrue);
  Expanded_List_Invariant(Machine(Person))==(btrue);
  Abstract_List_Invariant(Machine(Person))==(btrue);
  Context_List_Invariant(Machine(Person))==(btrue);
  List_Invariant(Machine(Person))==(person <: PERSON & person_name: person --> STR & person_age: person --> NATURAL)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Person))==(btrue);
  Abstract_List_Assertions(Machine(Person))==(btrue);
  Context_List_Assertions(Machine(Person))==(btrue);
  List_Assertions(Machine(Person))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Person))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Person))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Person))==(person,person_name,person_age:={},{},{});
  Context_List_Initialisation(Machine(Person))==(skip);
  List_Initialisation(Machine(Person))==(person:={} || person_name:={} || person_age:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Person))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Person),Machine(String))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Person))==(btrue);
  List_Constraints(Machine(Person))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Person))==(create_person,get_person_name,get_person_age,set_person_name);
  List_Operations(Machine(Person))==(create_person,get_person_name,get_person_age,set_person_name)
END
&
THEORY ListInputX IS
  List_Input(Machine(Person),create_person)==(name_value,age_value);
  List_Input(Machine(Person),get_person_name)==(person_value);
  List_Input(Machine(Person),get_person_age)==(person_value);
  List_Input(Machine(Person),set_person_name)==(person_value,name_value)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Person),create_person)==(person_value);
  List_Output(Machine(Person),get_person_name)==(name_value);
  List_Output(Machine(Person),get_person_age)==(age_value);
  List_Output(Machine(Person),set_person_name)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Person),create_person)==(person_value <-- create_person(name_value,age_value));
  List_Header(Machine(Person),get_person_name)==(name_value <-- get_person_name(person_value));
  List_Header(Machine(Person),get_person_age)==(age_value <-- get_person_age(person_value));
  List_Header(Machine(Person),set_person_name)==(set_person_name(person_value,name_value))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Person),create_person)==(name_value: STR & age_value: NATURAL);
  List_Precondition(Machine(Person),get_person_name)==(person_value: person);
  List_Precondition(Machine(Person),get_person_age)==(person_value: person);
  List_Precondition(Machine(Person),set_person_name)==(person_value: person & name_value: STR)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Person),set_person_name)==(person_value: person & name_value: STR | person_name:=person_name<+{person_value|->name_value});
  Expanded_List_Substitution(Machine(Person),get_person_age)==(person_value: person | age_value:=person_age(person_value));
  Expanded_List_Substitution(Machine(Person),get_person_name)==(person_value: person | name_value:=person_name(person_value));
  Expanded_List_Substitution(Machine(Person),create_person)==(name_value: STR & age_value: NATURAL | @pers.(pers: PERSON-person ==> person,person_name,person_age,person_value:=person\/{pers},person_name<+{pers|->name_value},person_age<+{pers|->age_value},pers));
  List_Substitution(Machine(Person),create_person)==(ANY pers WHERE pers: PERSON-person THEN person:=person\/{pers} || person_name(pers):=name_value || person_age(pers):=age_value || person_value:=pers END);
  List_Substitution(Machine(Person),get_person_name)==(name_value:=person_name(person_value));
  List_Substitution(Machine(Person),get_person_age)==(age_value:=person_age(person_value));
  List_Substitution(Machine(Person),set_person_name)==(person_name(person_value):=name_value)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Person))==(?);
  Inherited_List_Constants(Machine(Person))==(?);
  List_Constants(Machine(Person))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Person),PERSON)==(?);
  Context_List_Enumerated(Machine(Person))==(?);
  Context_List_Defered(Machine(Person))==(STR);
  Context_List_Sets(Machine(Person))==(STR);
  List_Valuable_Sets(Machine(Person))==(PERSON);
  Inherited_List_Enumerated(Machine(Person))==(?);
  Inherited_List_Defered(Machine(Person))==(?);
  Inherited_List_Sets(Machine(Person))==(?);
  List_Enumerated(Machine(Person))==(?);
  List_Defered(Machine(Person))==(PERSON);
  List_Sets(Machine(Person))==(PERSON)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Person))==(?);
  Expanded_List_HiddenConstants(Machine(Person))==(?);
  List_HiddenConstants(Machine(Person))==(?);
  External_List_HiddenConstants(Machine(Person))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Person))==(btrue);
  Context_List_Properties(Machine(Person))==(STR: FIN(INTEGER) & not(STR = {}));
  Inherited_List_Properties(Machine(Person))==(btrue);
  List_Properties(Machine(Person))==(PERSON: FIN(INTEGER) & not(PERSON = {}))
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(Person),Machine(String))==(?);
  Seen_Context_List_Enumerated(Machine(Person))==(?);
  Seen_Context_List_Invariant(Machine(Person))==(btrue);
  Seen_Context_List_Assertions(Machine(Person))==(btrue);
  Seen_Context_List_Properties(Machine(Person))==(btrue);
  Seen_List_Constraints(Machine(Person))==(btrue);
  Seen_List_Operations(Machine(Person),Machine(String))==(?);
  Seen_Expanded_List_Invariant(Machine(Person),Machine(String))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Person),create_person)==(Var(pers) == atype(PERSON,?,?));
  List_ANY_Var(Machine(Person),get_person_name)==(?);
  List_ANY_Var(Machine(Person),get_person_age)==(?);
  List_ANY_Var(Machine(Person),set_person_name)==(?)
END
&
THEORY ListOfIdsX IS
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
  Sets(Machine(Person)) == (Type(PERSON) == Cst(SetOf(atype(PERSON,"[PERSON","]PERSON"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Person)) == (Type(person_age) == Mvl(SetOf(atype(PERSON,?,?)*btype(INTEGER,?,?)));Type(person_name) == Mvl(SetOf(atype(PERSON,?,?)*atype(STR,"[STR","]STR")));Type(person) == Mvl(SetOf(atype(PERSON,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Person)) == (Type(set_person_name) == Cst(No_type,atype(PERSON,?,?)*atype(STR,?,?));Type(get_person_age) == Cst(btype(INTEGER,?,?),atype(PERSON,?,?));Type(get_person_name) == Cst(atype(STR,?,?),atype(PERSON,?,?));Type(create_person) == Cst(atype(PERSON,?,?),atype(STR,?,?)*btype(INTEGER,?,?)));
  Observers(Machine(Person)) == (Type(get_person_age) == Cst(btype(INTEGER,?,?),atype(PERSON,?,?));Type(get_person_name) == Cst(atype(STR,?,?),atype(PERSON,?,?)))
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
