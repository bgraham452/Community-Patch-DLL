-- Compatibility for E&D

INSERT INTO UnitPromotions
			(Type, 											Description, 												Help, 													CannotBeChosen, 		Sound, 				PortraitIndex, 	IconAtlas, 			PediaType, 			PediaEntry)
VALUES		('PROMOTION_DECISIONS_FRANCEARMEE', 			'TXT_KEY_PROMOTION_DECISIONS_FRANCEARMEE_DESC', 			'TXT_KEY_PROMOTION_DECISIONS_FRANCEARMEE_HELP',			1, 						'AS2D_IF_LEVELUP', 	59, 			'ABILITY_ATLAS', 	'PEDIA_ATTRIBUTES', 'TXT_KEY_PROMOTION_DECISIONS_FRANCEARMEE_DESC'),
			('PROMOTION_DECISIONS_OTTOMANGUNPOWDER', 		'TXT_KEY_PROMOTION_DECISIONS_OTTOMANGUNPOWDER_DESC', 		'TXT_KEY_PROMOTION_DECISIONS_OTTOMANGUNPOWDER_HELP',	1, 						'AS2D_IF_LEVELUP', 	59, 			'ABILITY_ATLAS', 	'PEDIA_ATTRIBUTES', 'TXT_KEY_PROMOTION_DECISIONS_OTTOMANGUNPOWDER_DESC'),
			('PROMOTION_DECISIONS_MOROCCOBLACKGUAR', 		'TXT_KEY_PROMOTION_DECISIONS_MOROCCOBLACKGUAR_DESC', 		'TXT_KEY_PROMOTION_DECISIONS_MOROCCOBLACKGUAR_HELP',	1, 						'AS2D_IF_LEVELUP', 	59, 			'ABILITY_ATLAS', 	'PEDIA_ATTRIBUTES', 'TXT_KEY_PROMOTION_DECISIONS_MOROCCOBLACKGUAR_DESC'),
			('PROMOTION_DECISIONS_GREECEPHALANX', 			'TXT_KEY_PROMOTION_DECISIONS_GREECEPHALANX_DESC', 			'TXT_KEY_PROMOTION_DECISIONS_GREECEPHALANX_HELP',		1, 						'AS2D_IF_LEVELUP', 	59, 			'ABILITY_ATLAS', 	'PEDIA_ATTRIBUTES', 'TXT_KEY_PROMOTION_DECISIONS_GREECEPHALANX_DESC'),			
			('PROMOTION_DECISIONS_HUNSRECURVEBOW', 			'TXT_KEY_PROMOTION_DECISIONS_HUNSRECURVEBOW_DESC', 			'TXT_KEY_PROMOTION_DECISIONS_HUNSRECURVEBOW_HELP',		1, 						'AS2D_IF_LEVELUP', 	59, 			'ABILITY_ATLAS', 	'PEDIA_ATTRIBUTES', 'TXT_KEY_PROMOTION_DECISIONS_HUNSRECURVEBOW_DESC');			

INSERT INTO Building_ResourcePerEra 	
			(BuildingType, 									ResourceType,			Quantity, 	InitialQuantity)
VALUES		('BUILDING_DOGE_PALACE', 							'RESOURCE_MAGISTRATES',	0, 			2);
--			
UPDATE UnitPromotions
	SET GreatGeneralModifier = 25
	WHERE Type = 'PROMOTION_DECISIONS_FRANCEARMEE';
	
UPDATE UnitPromotions
	SET CityAttack = 50
	WHERE Type = 'PROMOTION_DECISIONS_OTTOMANGUNPOWDER';
	
UPDATE UnitPromotions
	SET FriendlyLandsModifier = 25
	WHERE Type = 'PROMOTION_DECISIONS_MOROCCOBLACKGUAR';
	
UPDATE UnitPromotions
	SET AdjacentMod = 25
	WHERE Type = 'PROMOTION_DECISIONS_GREECEPHALANX';
	
UPDATE UnitPromotions
	SET RangedAttackModifier = 20
	WHERE Type = 'PROMOTION_DECISIONS_HUNSRECURVEBOW';

Update Building_YieldModifiers
SET Yield = '10'
WHERE BuildingType = 'BUILDING_DECISIONS_WEIGHTSFORMAL';

Update Building_YieldModifiers
SET Yield = '10'
WHERE BuildingType = 'BUILDING_DECISIONS_PUBLICTRANSPORT';

Update Buildings
SET Happiness = '1'
WHERE Type = 'BUILDING_DECISIONS_CODEOFLAWS';

UPDATE Language_en_US
SET Text = 'Have you ever tried converting perches to pikes, and realized along the way that you lost a number? Headaches? Sleepless nights? Not anymore! Our bureaucracy offers to formalize the weights and measures system.[NEWLINE][NEWLINE]Requirement/Restrictions:[NEWLINE][ICON_BULLET]Must have researched Mathematics[NEWLINE][ICON_BULLET]May only be enacted once per game[NEWLINE]Costs:[NEWLINE][ICON_BULLET]{1_Gold} [ICON_GOLD] Gold[NEWLINE][ICON_BULLET]1 [ICON_MAGISTRATES] Magistrates[NEWLINE]Rewards:[NEWLINE][ICON_BULLET]+10% [ICON_GOLD] Gold in all cities'
WHERE Tag = 'TXT_KEY_DECISIONS_WEIGHTSFORMAL_DESC' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

UPDATE Language_en_US
SET Text = 'Have you ever tried converting perches to pikes, and realized along the way that you lost a number? Headaches? Sleepless nights? Not anymore! Our bureaucracy offers to formalize the weights and measures system.[NEWLINE][NEWLINE]Rewards:[NEWLINE][ICON_BULLET]+10% [ICON_GOLD] Gold in all cities'
WHERE Tag = 'TXT_KEY_DECISIONS_WEIGHTSFORMAL_ENACTED_DESC' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

UPDATE Language_en_US
SET Text = 'The Comanche emerged as a distinct group shortly before 1700, when they broke off from the Shoshone people living along the upper Platte River in Wyoming. In 1680 the Comanche acquired horses from the Pueblo Indians after the Pueblo Revolt. They separated from the Shoshone after this, as the horses allowed them greater mobility in their search for better hunting grounds.[NEWLINE][NEWLINE]Requirement/Restrictions:[NEWLINE][ICON_BULLET]Player must be Shoshone[NEWLINE][ICON_BULLET]May not be enacted before the Industrial era[NEWLINE][ICON_BULLET]May only be enacted once per game[NEWLINE]Costs:[NEWLINE][ICON_BULLET]2 [ICON_MAGISTRATES] Magistrates[NEWLINE]Rewards:[NEWLINE][ICON_BULLET]{1_Reward} [ICON_CULTURE] Culture[NEWLINE][ICON_BULLET]5 [ICON_RES_HORSE] Horses[NEWLINE][ICON_BULLET]3 Cavalry appear near the Capital'
WHERE Tag = 'TXT_KEY_DECISIONS_SHOSHONECOMANCHE_DESC' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

UPDATE Language_en_US
SET Text = 'The Comanche emerged as a distinct group shortly before 1700, when they broke off from the Shoshone people living along the upper Platte River in Wyoming. In 1680 the Comanche acquired horses from the Pueblo Indians after the Pueblo Revolt. They separated from the Shoshone after this, as the horses allowed them greater mobility in their search for better hunting grounds.[NEWLINE][NEWLINE]Rewards:[NEWLINE][ICON_BULLET]{1_Reward} [ICON_CULTURE] Culture[NEWLINE][ICON_BULLET]5 [ICON_RES_HORSE] Horses[NEWLINE][ICON_BULLET]3 Cavalry appear near the Capital'
WHERE Tag = 'TXT_KEY_DECISIONS_SHOSHONECOMANCHE_DESC' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
