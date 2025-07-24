-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:03:18
-- Luau version 6, Types version 3
-- Time taken: 0.001901 seconds

local t = require(script:FindFirstAncestor("RoduxGames").Parent.t)
local CreatorModel_upvr = require(script.Parent.CreatorModel)
local module_upvr = {}
function module_upvr.new(arg1) -- Line 18
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	assert(module_upvr.isValid(arg1))
	module_upvr.__index = module_upvr
	setmetatable(arg1, module_upvr)
	return arg1
end
function module_upvr.mock(arg1) -- Line 30
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: CreatorModel_upvr (readonly)
	]]
	local var4 = arg1
	if not var4 then
		var4 = {}
	end
	local var5 = var4
	return module_upvr.new({
		experienceId = var5.experienceId or "experienceId";
		name = var5.name or "name";
		description = var5.description or "description";
		price = var5.price or 666;
		rootPlaceId = var5.rootPlaceId or "rootPlaceId";
		creator = CreatorModel_upvr.mock(var5.creator);
		maxPlayers = var5.maxPlayers or 6;
		playing = var5.playing or 1000;
	})
end
function module_upvr.format(arg1) -- Line 47
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: CreatorModel_upvr (readonly)
	]]
	return module_upvr.new({
		experienceId = tostring(arg1.id);
		name = arg1.name;
		description = arg1.description or "";
		price = arg1.price or 0;
		rootPlaceId = tostring(arg1.rootPlaceId);
		creator = CreatorModel_upvr.format(arg1.creator);
		maxPlayers = arg1.maxPlayers;
		playing = arg1.playing;
	})
end
module_upvr.isValid = t.strictInterface({
	experienceId = t.string;
	name = t.string;
	description = t.string;
	price = t.number;
	rootPlaceId = t.string;
	creator = CreatorModel_upvr.isValid;
	maxPlayers = t.number;
	playing = t.number;
})
return module_upvr