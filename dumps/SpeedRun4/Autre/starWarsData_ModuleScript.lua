-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:14
-- Luau version 6, Types version 3
-- Time taken: 0.002886 seconds

local Parent = script.Parent.Parent.Parent
local module_upvr_2 = {
	type = "Human";
	id = "1000";
	name = "Luke Skywalker";
	friends = {"1002", "1003", "2000", "2001"};
	appearsIn = {4, 5, 6};
	homePlanet = "Tatooine";
}
local tbl_3 = {
	type = "Human";
	id = "1001";
	name = "Darth Vader";
	friends = {"1004"};
	appearsIn = {4, 5, 6};
	homePlanet = "Tatooine";
}
local tbl_4 = {
	type = "Human";
	id = "1002";
	name = "Han Solo";
	friends = {"1000", "1003", "2001"};
	appearsIn = {4, 5, 6};
}
local tbl = {
	type = "Human";
	id = "1003";
	name = "Leia Organa";
	friends = {"1000", "1002", "2000", "2001"};
	appearsIn = {4, 5, 6};
	homePlanet = "Alderaan";
}
local tbl_2 = {
	type = "Human";
	id = "1004";
	name = "Wilhuff Tarkin";
	friends = {"1001"};
	appearsIn = {4};
}
local module_upvr = {
	[module_upvr_2.id] = module_upvr_2;
	[tbl_3.id] = tbl_3;
	[tbl_4.id] = tbl_4;
	[tbl.id] = tbl;
	[tbl_2.id] = tbl_2;
}
local tbl_5 = {
	type = "Droid";
	id = "2000";
	name = "C-3PO";
	friends = {"1000", "1002", "1003", "2001"};
	appearsIn = {4, 5, 6};
	primaryFunction = "Protocol";
}
local module_upvr_3 = {
	type = "Droid";
	id = "2001";
	name = "R2-D2";
	friends = {"1000", "1002", "1003"};
	appearsIn = {4, 5, 6};
	primaryFunction = "Astromech";
}
local module_upvr_4 = {
	[tbl_5.id] = tbl_5;
	[module_upvr_3.id] = module_upvr_3;
}
local Promise_upvr = require(Parent.Promise)
local function getCharacter_upvr(arg1) -- Line 135, Named "getCharacter"
	--[[ Upvalues[3]:
		[1]: Promise_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: module_upvr_4 (readonly)
	]]
	local var26 = module_upvr[arg1]
	if not var26 then
		var26 = module_upvr_4[arg1]
	end
	return Promise_upvr.resolve(var26)
end
local Array_upvr = require(Parent.LuauPolyfill).Array
return {
	getHuman = function(arg1) -- Line 165, Named "getHuman"
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		return module_upvr[arg1]
	end;
	getCharacter = getCharacter_upvr;
	getDroid = function(arg1) -- Line 172, Named "getDroid"
		--[[ Upvalues[1]:
			[1]: module_upvr_4 (readonly)
		]]
		return module_upvr_4[arg1]
	end;
	getFriends = function(arg1) -- Line 143, Named "getFriends"
		--[[ Upvalues[2]:
			[1]: Array_upvr (readonly)
			[2]: getCharacter_upvr (readonly)
		]]
		return Array_upvr.map(arg1.friends, function(arg1_2) -- Line 145
			--[[ Upvalues[1]:
				[1]: getCharacter_upvr (copied, readonly)
			]]
			return getCharacter_upvr(arg1_2)
		end)
	end;
	getHero = function(arg1) -- Line 153, Named "getHero"
		--[[ Upvalues[2]:
			[1]: module_upvr_2 (readonly)
			[2]: module_upvr_3 (readonly)
		]]
		if arg1 == 5 then
			return module_upvr_2
		end
		return module_upvr_3
	end;
}