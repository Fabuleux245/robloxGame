-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:14
-- Luau version 6, Types version 3
-- Time taken: 0.004924 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.Parent.LuauPolyfill)
local Error_upvr = LuauPolyfill.Error
local Map_upvr = LuauPolyfill.Map
local GraphQLString_upvr = require(Parent.type.scalars).GraphQLString
local definition = require(Parent.type.definition)
local GraphQLList_upvr = definition.GraphQLList
local GraphQLNonNull_upvr = definition.GraphQLNonNull
local GraphQLObjectType = definition.GraphQLObjectType
local starWarsData = require(script.Parent.starWarsData)
local getFriends_upvr = starWarsData.getFriends
local any_new_result1_upvr = definition.GraphQLEnumType.new({
	name = "Episode";
	description = "One of the films in the Star Wars Trilogy";
	values = Map_upvr.new({{"NEW_HOPE", {
		value = 4;
		description = "Released in 1977.";
	}}, {"EMPIRE", {
		value = 5;
		description = "Released in 1980.";
	}}, {"JEDI", {
		value = 6;
		description = "Released in 1983.";
	}}});
})
local tbl_6 = {
	name = "Character";
	description = "A character in the Star Wars Trilogy";
}
local var22_upvw
local function fields() -- Line 127
	--[[ Upvalues[6]:
		[1]: Map_upvr (readonly)
		[2]: GraphQLNonNull_upvr (readonly)
		[3]: GraphQLString_upvr (readonly)
		[4]: GraphQLList_upvr (readonly)
		[5]: var22_upvw (read and write)
		[6]: any_new_result1_upvr (readonly)
	]]
	return Map_upvr.new({{"id", {
		type = GraphQLNonNull_upvr.new(GraphQLString_upvr);
		description = "The id of the character.";
	}}, {"name", {
		type = GraphQLString_upvr;
		description = "The name of the character.";
	}}, {"friends", {
		type = GraphQLList_upvr.new(var22_upvw);
		description = "The friends of the character, or an empty list if they have none.";
	}}, {"appearsIn", {
		type = GraphQLList_upvr.new(any_new_result1_upvr);
		description = "Which movies they appear in.";
	}}, {"secretBackstory", {
		type = GraphQLString_upvr;
		description = "All secrets about their past.";
	}}})
end
tbl_6.fields = fields
local var34_upvw
local var35_upvw
function tbl_6.resolveType(arg1) -- Line 166
	--[[ Upvalues[2]:
		[1]: var34_upvw (read and write)
		[2]: var35_upvw (read and write)
	]]
	if arg1.type == "Human" then
		return var34_upvw.name
	end
	if arg1.type == "Droid" then
		return var35_upvw.name
	end
	assert(false)
end
var22_upvw = definition.GraphQLInterfaceType.new(tbl_6)
local var36_upvw = var22_upvw
local tbl_11 = {
	name = "Human";
	description = "A humanoid creature in the Star Wars universe.";
}
local function fields() -- Line 195
	--[[ Upvalues[8]:
		[1]: Map_upvr (readonly)
		[2]: GraphQLNonNull_upvr (readonly)
		[3]: GraphQLString_upvr (readonly)
		[4]: GraphQLList_upvr (readonly)
		[5]: var36_upvw (read and write)
		[6]: getFriends_upvr (readonly)
		[7]: any_new_result1_upvr (readonly)
		[8]: Error_upvr (readonly)
	]]
	local module_3 = {}
	local tbl_16 = {}
	local tbl_8 = {
		type = GraphQLList_upvr.new(var36_upvw);
		description = "The friends of the human, or an empty list if they have none.";
	}
	local function resolve(arg1) -- Line 216
		--[[ Upvalues[1]:
			[1]: getFriends_upvr (copied, readonly)
		]]
		return getFriends_upvr(arg1)
	end
	tbl_8.resolve = resolve
	tbl_16[1] = "friends"
	tbl_16[2] = tbl_8
	local tbl_2 = {}
	local tbl_10 = {
		type = GraphQLString_upvr;
		description = "Where are they from and how they came to be who they are.";
	}
	local function resolve() -- Line 240
		--[[ Upvalues[1]:
			[1]: Error_upvr (copied, readonly)
		]]
		error(Error_upvr("secretBackstory is secret."))
	end
	tbl_10.resolve = resolve
	tbl_2[1] = "secretBackstory"
	tbl_2[2] = tbl_10
	module_3[1] = {"id", {
		type = GraphQLNonNull_upvr.new(GraphQLString_upvr);
		description = "The id of the human.";
	}}
	module_3[2] = {"name", {
		type = GraphQLString_upvr;
		description = "The name of the human.";
	}}
	module_3[3] = tbl_16
	module_3[4] = {"appearsIn", {
		type = GraphQLList_upvr.new(any_new_result1_upvr);
		description = "Which movies they appear in.";
	}}
	module_3[5] = {"homePlanet", {
		type = GraphQLString_upvr;
		description = "The home planet of the human, or null if unknown.";
	}}
	module_3[6] = tbl_2
	return Map_upvr.new(module_3)
end
tbl_11.fields = fields
tbl_11.interfaces = {var36_upvw}
var34_upvw = GraphQLObjectType.new(tbl_11)
local var52_upvw = var34_upvw
local tbl_7 = {
	name = "Droid";
	description = "A mechanical creature in the Star Wars universe.";
}
local function fields() -- Line 266
	--[[ Upvalues[8]:
		[1]: Map_upvr (readonly)
		[2]: GraphQLNonNull_upvr (readonly)
		[3]: GraphQLString_upvr (readonly)
		[4]: GraphQLList_upvr (readonly)
		[5]: var36_upvw (read and write)
		[6]: getFriends_upvr (readonly)
		[7]: any_new_result1_upvr (readonly)
		[8]: Error_upvr (readonly)
	]]
	local module = {}
	local tbl_4 = {}
	local tbl_3 = {
		type = GraphQLList_upvr.new(var36_upvw);
		description = "The friends of the droid, or an empty list if they have none.";
	}
	local function resolve(arg1) -- Line 287
		--[[ Upvalues[1]:
			[1]: getFriends_upvr (copied, readonly)
		]]
		return getFriends_upvr(arg1)
	end
	tbl_3.resolve = resolve
	tbl_4[1] = "friends"
	tbl_4[2] = tbl_3
	local tbl = {}
	local tbl_15 = {
		type = GraphQLString_upvr;
		description = "Construction date and the name of the designer.";
	}
	local function resolve() -- Line 304
		--[[ Upvalues[1]:
			[1]: Error_upvr (copied, readonly)
		]]
		error(Error_upvr("secretBackstory is secret."))
	end
	tbl_15.resolve = resolve
	tbl[1] = "secretBackstory"
	tbl[2] = tbl_15
	module[1] = {"id", {
		type = GraphQLNonNull_upvr.new(GraphQLString_upvr);
		description = "The id of the droid.";
	}}
	module[2] = {"name", {
		type = GraphQLString_upvr;
		description = "The name of the droid.";
	}}
	module[3] = tbl_4
	module[4] = {"appearsIn", {
		type = GraphQLList_upvr.new(any_new_result1_upvr);
		description = "Which movies they appear in.";
	}}
	module[5] = tbl
	module[6] = {"primaryFunction", {
		type = GraphQLString_upvr;
		description = "The primary function of the droid.";
	}}
	return Map_upvr.new(module)
end
tbl_7.fields = fields
tbl_7.interfaces = {var36_upvw}
var35_upvw = GraphQLObjectType.new(tbl_7)
local var68_upvw = var35_upvw
local tbl_14 = {
	name = "Query";
}
local getHero_upvr = starWarsData.getHero
local getHuman_upvr = starWarsData.getHuman
local getDroid_upvr = starWarsData.getDroid
function tbl_14.fields() -- Line 337
	--[[ Upvalues[10]:
		[1]: Map_upvr (readonly)
		[2]: var36_upvw (read and write)
		[3]: any_new_result1_upvr (readonly)
		[4]: getHero_upvr (readonly)
		[5]: var52_upvw (read and write)
		[6]: GraphQLNonNull_upvr (readonly)
		[7]: GraphQLString_upvr (readonly)
		[8]: getHuman_upvr (readonly)
		[9]: var68_upvw (read and write)
		[10]: getDroid_upvr (readonly)
	]]
	local module_2 = {}
	local tbl_12 = {}
	local tbl_18 = {
		type = var36_upvw;
		args = {
			episode = {
				description = "If omitted, returns the hero of the whole saga. If provided, returns the hero of that particular episode.";
				type = any_new_result1_upvr;
			};
		};
	}
	local function resolve(arg1, arg2) -- Line 349
		--[[ Upvalues[1]:
			[1]: getHero_upvr (copied, readonly)
		]]
		return getHero_upvr(arg2.episode)
	end
	tbl_18.resolve = resolve
	tbl_12[1] = "hero"
	tbl_12[2] = tbl_18
	local tbl_17 = {}
	local tbl_5 = {
		type = var52_upvw;
		args = {
			id = {
				description = "id of the human";
				type = GraphQLNonNull_upvr.new(GraphQLString_upvr);
			};
		};
	}
	local function resolve(arg1, arg2) -- Line 364
		--[[ Upvalues[1]:
			[1]: getHuman_upvr (copied, readonly)
		]]
		return getHuman_upvr(arg2.id)
	end
	tbl_5.resolve = resolve
	tbl_17[1] = "human"
	tbl_17[2] = tbl_5
	local tbl_13 = {}
	local tbl_9 = {
		type = var68_upvw;
		args = {
			id = {
				description = "id of the droid";
				type = GraphQLNonNull_upvr.new(GraphQLString_upvr);
			};
		};
	}
	function tbl_9.resolve(arg1, arg2) -- Line 379
		--[[ Upvalues[1]:
			[1]: getDroid_upvr (copied, readonly)
		]]
		return getDroid_upvr(arg2.id)
	end
	tbl_13[1] = "droid"
	tbl_13[2] = tbl_9
	module_2[1] = tbl_12
	module_2[2] = tbl_17
	module_2[3] = tbl_13
	return Map_upvr.new(module_2)
end
return {
	StarWarsSchema = require(Parent.type.schema).GraphQLSchema.new({
		query = GraphQLObjectType.new(tbl_14);
		types = {var52_upvw, var68_upvw};
	});
}