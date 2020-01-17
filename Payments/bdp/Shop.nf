Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Shop))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Shop))==(Machine(Shop));
  Level(Machine(Shop))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Shop)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Shop))==(String)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Shop))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Shop))==(?);
  List_Includes(Machine(Shop))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Shop))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Shop))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Shop))==(?);
  Context_List_Variables(Machine(Shop))==(?);
  Abstract_List_Variables(Machine(Shop))==(?);
  Local_List_Variables(Machine(Shop))==(region,name,shop);
  List_Variables(Machine(Shop))==(region,name,shop);
  External_List_Variables(Machine(Shop))==(region,name,shop)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Shop))==(?);
  Abstract_List_VisibleVariables(Machine(Shop))==(?);
  External_List_VisibleVariables(Machine(Shop))==(?);
  Expanded_List_VisibleVariables(Machine(Shop))==(?);
  List_VisibleVariables(Machine(Shop))==(?);
  Internal_List_VisibleVariables(Machine(Shop))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Shop))==(btrue);
  Gluing_List_Invariant(Machine(Shop))==(btrue);
  Expanded_List_Invariant(Machine(Shop))==(btrue);
  Abstract_List_Invariant(Machine(Shop))==(btrue);
  Context_List_Invariant(Machine(Shop))==(btrue);
  List_Invariant(Machine(Shop))==(shop <: SHOP & name: shop --> STR & region: shop --> REGIONS)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Shop))==(btrue);
  Abstract_List_Assertions(Machine(Shop))==(btrue);
  Context_List_Assertions(Machine(Shop))==(btrue);
  List_Assertions(Machine(Shop))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Shop))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Shop))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Shop))==(shop,name,region:={},{},{});
  Context_List_Initialisation(Machine(Shop))==(skip);
  List_Initialisation(Machine(Shop))==(shop:={} || name:={} || region:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Shop))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Shop),Machine(String))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Shop))==(btrue);
  List_Constraints(Machine(Shop))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Shop))==(create_shop,get_shop_name,get_shop_region,set_shop_name,set_shop_region);
  List_Operations(Machine(Shop))==(create_shop,get_shop_name,get_shop_region,set_shop_name,set_shop_region)
END
&
THEORY ListInputX IS
  List_Input(Machine(Shop),create_shop)==(name_value,region_value);
  List_Input(Machine(Shop),get_shop_name)==(shop_value);
  List_Input(Machine(Shop),get_shop_region)==(shop_value);
  List_Input(Machine(Shop),set_shop_name)==(shop_value,name_value);
  List_Input(Machine(Shop),set_shop_region)==(shop_value,region_value)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Shop),create_shop)==(shop_value);
  List_Output(Machine(Shop),get_shop_name)==(name_value);
  List_Output(Machine(Shop),get_shop_region)==(region_value);
  List_Output(Machine(Shop),set_shop_name)==(?);
  List_Output(Machine(Shop),set_shop_region)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Shop),create_shop)==(shop_value <-- create_shop(name_value,region_value));
  List_Header(Machine(Shop),get_shop_name)==(name_value <-- get_shop_name(shop_value));
  List_Header(Machine(Shop),get_shop_region)==(region_value <-- get_shop_region(shop_value));
  List_Header(Machine(Shop),set_shop_name)==(set_shop_name(shop_value,name_value));
  List_Header(Machine(Shop),set_shop_region)==(set_shop_region(shop_value,region_value))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Shop),create_shop)==(name_value: STR & region_value: REGIONS);
  List_Precondition(Machine(Shop),get_shop_name)==(shop_value: shop);
  List_Precondition(Machine(Shop),get_shop_region)==(shop_value: shop);
  List_Precondition(Machine(Shop),set_shop_name)==(shop_value: shop & name_value: STR);
  List_Precondition(Machine(Shop),set_shop_region)==(shop_value: shop & region_value: REGIONS)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Shop),set_shop_region)==(shop_value: shop & region_value: REGIONS | region:=region<+{shop_value|->region_value});
  Expanded_List_Substitution(Machine(Shop),set_shop_name)==(shop_value: shop & name_value: STR | name:=name<+{shop_value|->name_value});
  Expanded_List_Substitution(Machine(Shop),get_shop_region)==(shop_value: shop | region_value:=region(shop_value));
  Expanded_List_Substitution(Machine(Shop),get_shop_name)==(shop_value: shop | name_value:=name(shop_value));
  Expanded_List_Substitution(Machine(Shop),create_shop)==(name_value: STR & region_value: REGIONS | @sh.(sh: SHOP-shop ==> shop,name,region,shop_value:=shop\/{sh},name<+{sh|->name_value},region<+{sh|->region_value},sh));
  List_Substitution(Machine(Shop),create_shop)==(ANY sh WHERE sh: SHOP-shop THEN shop:=shop\/{sh} || name(sh):=name_value || region(sh):=region_value || shop_value:=sh END);
  List_Substitution(Machine(Shop),get_shop_name)==(name_value:=name(shop_value));
  List_Substitution(Machine(Shop),get_shop_region)==(region_value:=region(shop_value));
  List_Substitution(Machine(Shop),set_shop_name)==(name(shop_value):=name_value);
  List_Substitution(Machine(Shop),set_shop_region)==(region(shop_value):=region_value)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Shop))==(?);
  Inherited_List_Constants(Machine(Shop))==(?);
  List_Constants(Machine(Shop))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Shop),SHOP)==(?);
  Context_List_Enumerated(Machine(Shop))==(?);
  Context_List_Defered(Machine(Shop))==(STR);
  Context_List_Sets(Machine(Shop))==(STR);
  List_Valuable_Sets(Machine(Shop))==(SHOP);
  Inherited_List_Enumerated(Machine(Shop))==(?);
  Inherited_List_Defered(Machine(Shop))==(?);
  Inherited_List_Sets(Machine(Shop))==(?);
  List_Enumerated(Machine(Shop))==(REGIONS);
  List_Defered(Machine(Shop))==(SHOP);
  List_Sets(Machine(Shop))==(SHOP,REGIONS);
  Set_Definition(Machine(Shop),REGIONS)==({AFRICA,EUROPE,USA,ASIA})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Shop))==(?);
  Expanded_List_HiddenConstants(Machine(Shop))==(?);
  List_HiddenConstants(Machine(Shop))==(?);
  External_List_HiddenConstants(Machine(Shop))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Shop))==(btrue);
  Context_List_Properties(Machine(Shop))==(STR: FIN(INTEGER) & not(STR = {}));
  Inherited_List_Properties(Machine(Shop))==(btrue);
  List_Properties(Machine(Shop))==(SHOP: FIN(INTEGER) & not(SHOP = {}) & REGIONS: FIN(INTEGER) & not(REGIONS = {}))
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(Shop),Machine(String))==(?);
  Seen_Context_List_Enumerated(Machine(Shop))==(?);
  Seen_Context_List_Invariant(Machine(Shop))==(btrue);
  Seen_Context_List_Assertions(Machine(Shop))==(btrue);
  Seen_Context_List_Properties(Machine(Shop))==(btrue);
  Seen_List_Constraints(Machine(Shop))==(btrue);
  Seen_List_Operations(Machine(Shop),Machine(String))==(?);
  Seen_Expanded_List_Invariant(Machine(Shop),Machine(String))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Shop),create_shop)==(Var(sh) == atype(SHOP,?,?));
  List_ANY_Var(Machine(Shop),get_shop_name)==(?);
  List_ANY_Var(Machine(Shop),get_shop_region)==(?);
  List_ANY_Var(Machine(Shop),set_shop_name)==(?);
  List_ANY_Var(Machine(Shop),set_shop_region)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Shop)) == (SHOP,REGIONS,AFRICA,EUROPE,USA,ASIA | ? | region,name,shop | ? | create_shop,get_shop_name,get_shop_region,set_shop_name,set_shop_region | ? | seen(Machine(String)) | ? | Shop);
  List_Of_HiddenCst_Ids(Machine(Shop)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Shop)) == (?);
  List_Of_VisibleVar_Ids(Machine(Shop)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Shop)) == (?: ?);
  List_Of_Ids(Machine(String)) == (STR | ? | ? | ? | ? | ? | ? | ? | String);
  List_Of_HiddenCst_Ids(Machine(String)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(String)) == (?);
  List_Of_VisibleVar_Ids(Machine(String)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(String)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Shop)) == (Type(SHOP) == Cst(SetOf(atype(SHOP,"[SHOP","]SHOP")));Type(REGIONS) == Cst(SetOf(etype(REGIONS,0,3))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Shop)) == (Type(AFRICA) == Cst(etype(REGIONS,0,3));Type(EUROPE) == Cst(etype(REGIONS,0,3));Type(USA) == Cst(etype(REGIONS,0,3));Type(ASIA) == Cst(etype(REGIONS,0,3)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Shop)) == (Type(region) == Mvl(SetOf(atype(SHOP,?,?)*etype(REGIONS,0,3)));Type(name) == Mvl(SetOf(atype(SHOP,?,?)*atype(STR,"[STR","]STR")));Type(shop) == Mvl(SetOf(atype(SHOP,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Shop)) == (Type(set_shop_region) == Cst(No_type,atype(SHOP,?,?)*etype(REGIONS,?,?));Type(set_shop_name) == Cst(No_type,atype(SHOP,?,?)*atype(STR,?,?));Type(get_shop_region) == Cst(etype(REGIONS,?,?),atype(SHOP,?,?));Type(get_shop_name) == Cst(atype(STR,?,?),atype(SHOP,?,?));Type(create_shop) == Cst(atype(SHOP,?,?),atype(STR,?,?)*etype(REGIONS,?,?)));
  Observers(Machine(Shop)) == (Type(get_shop_region) == Cst(etype(REGIONS,?,?),atype(SHOP,?,?));Type(get_shop_name) == Cst(atype(STR,?,?),atype(SHOP,?,?)))
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
