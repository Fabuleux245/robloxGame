-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:03:48
-- Luau version 6, Types version 3
-- Time taken: 0.002366 seconds

local RoduxPresence = script:FindFirstAncestor("RoduxPresence")
local Parent = RoduxPresence.Parent
local t = require(Parent.t)
local Enums_upvr = require(RoduxPresence.Enums)
local module_upvr = {}
function module_upvr.new(arg1) -- Line 10
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	assert(module_upvr.isValid(arg1))
	module_upvr.__index = module_upvr
	setmetatable(arg1, module_upvr)
	return arg1
end
function module_upvr.mock(arg1) -- Line 22
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local var6 = arg1
	if not var6 then
		var6 = {}
	end
	local var7 = var6
	return module_upvr.new({
		gameId = var7.gameId or "Game-OoooOO-Id";
		invisibleModeExpiry = var7.invisibleModeExpiry or "2061-01-01T00:00:00Z";
		lastLocation = var7.lastLocation or "LastLocation";
		lastOnline = var7.lastOnline or "LastOnline-OOOoOO";
		placeId = var7.placeId or 123;
		rootPlaceId = var7.rootPlaceId or 234;
		universeId = var7.universeId or 345;
		userId = var7.userId or 456;
		userPresenceType = var7.userPresenceType or 0;
	})
end
local Cryo_upvr = require(Parent.Cryo)
function module_upvr.format(arg1) -- Line 40
	--[[ Upvalues[2]:
		[1]: Cryo_upvr (readonly)
		[2]: Enums_upvr (readonly)
	]]
	return Cryo_upvr.Dictionary.join(arg1, {
		userPresenceType = Enums_upvr.PresenceType.fromRawValue(arg1.userPresenceType);
	})
end
module_upvr.isValid = t.interface({
	gameId = t.optional(t.string);
	invisibleModeExpiry = t.optional(t.string);
	lastLocation = t.string;
	lastOnline = t.string;
	placeId = t.optional(t.union(t.numberPositive, t.string));
	rootPlaceId = t.optional(t.union(t.numberPositive, t.string));
	universeId = t.optional(t.union(t.numberPositive, t.string));
	userId = t.union(t.numberPositive, t.string);
	userPresenceType = function(arg1) -- Line 55, Named "userPresenceType"
		--[[ Upvalues[1]:
			[1]: Enums_upvr (readonly)
		]]
		local var12
		if Enums_upvr.PresenceType.fromRawValue(arg1) == nil then
			var12 = false
		else
			var12 = true
		end
		return var12
	end;
})
return module_upvr