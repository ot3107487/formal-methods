MACHINE
    Shop
SEES
    String
SETS
    SHOP; REGIONS = {AFRICA, EUROPE, USA, ASIA}
VARIABLES
    shop, name, region
INVARIANT
    shop <: SHOP &
    name : shop --> STR &
    region : shop --> REGIONS
INITIALISATION
    shop := {} ||
    name := {} ||
    region := {}
OPERATIONS
    shop_value <-- create_shop(name_value, region_value) =
    PRE
        name_value : STR &
        region_value : REGIONS
    THEN
        ANY sh WHERE sh : SHOP - shop
        THEN
            shop := shop \/ {sh} ||
             name(sh) := name_value ||
             region(sh) := region_value ||
             shop_value := sh
         END
     END;
     
     name_value <-- get_shop_name(shop_value) =
     PRE
         shop_value : shop
     THEN
         name_value := name(shop_value)
     END;
     
     region_value <-- get_shop_region(shop_value) =
     PRE
         shop_value : shop
     THEN
         region_value := region(shop_value)
     END;
     
     set_shop_name(shop_value, name_value) =
     PRE
         shop_value : shop &
         name_value : STR
     THEN
         name(shop_value) := name_value
     END;
     
     set_shop_region(shop_value, region_value) =
     PRE
         shop_value : shop &
         region_value : REGIONS
     THEN
         region(shop_value):=region_value
     END
END
