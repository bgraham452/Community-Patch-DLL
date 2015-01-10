-- Unit and Building Maintenance Modifiers	
	
	UPDATE Defines
	SET Value = '8'
	WHERE Name = 'UNIT_MAINTENANCE_GAME_MULTIPLIER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Defines
	SET Value = '7'
	WHERE Name = 'UNIT_MAINTENANCE_GAME_EXPONENT_DIVISOR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

-- More cost for first GP - push founding date back slightly (give Piety more of an advantage)
	UPDATE Defines
	SET Value = '250'
	WHERE Name = 'RELIGION_MIN_FAITH_FIRST_PROPHET' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

-- Great People more expensive - delta will increase faster as well.

	UPDATE Defines
	SET Value = '1500'
	WHERE Name = 'RELIGION_MIN_FAITH_FIRST_GREAT_PERSON' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Defines
	SET Value = '1000'
	WHERE Name = 'RELIGION_FAITH_DELTA_NEXT_GREAT_PERSON' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );


	-- Unit upgrades more expensive based on era and production needed
	UPDATE Defines
	SET Value = '2'
	WHERE Name = 'UNIT_UPGRADE_COST_PER_PRODUCTION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Defines
	SET Value = '0.2'
	WHERE Name = 'UNIT_UPGRADE_COST_MULTIPLIER_PER_ERA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );