-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:02:03
-- Luau version 6, Types version 3
-- Time taken: 0.001150 seconds

local RoduxCall = script:FindFirstAncestor("RoduxCall")
local Parent = RoduxCall.Parent
local t = require(Parent.t)
local Enums_upvr = require(RoduxCall.Enums)
local module_upvr = {}
function module_upvr.new(arg1) -- Line 9
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	assert(module_upvr.isValid(arg1))
	module_upvr.__index = module_upvr
	setmetatable(arg1, module_upvr)
	return arg1
end
function module_upvr.mock(arg1) -- Line 21
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local var6 = arg1
	if not var6 then
		var6 = {}
	end
	local var7 = var6
	return module_upvr.new({
		userId = var7.userId or 12345;
		userPresenceType = var7.userPresenceType or "Offline";
		lastLocation = "";
	})
end
local Cryo_upvr = require(Parent.Cryo)
function module_upvr.format(arg1) -- Line 33
	--[[ Upvalues[2]:
		[1]: Cryo_upvr (readonly)
		[2]: Enums_upvr (readonly)
	]]
	return Cryo_upvr.Dictionary.join(arg1, {
		userPresenceType = Enums_upvr.PresenceType[arg1.userPresenceType];
	})
end
module_upvr.isValid = t.strictInterface({
	userId = t.number;
	userPresenceType = function(arg1) -- Line 41, Named "userPresenceType"
		--[[ Upvalues[1]:
			[1]: Enums_upvr (readonly)
		]]
		local var12
		if Enums_upvr.PresenceType[arg1] == nil then
			var12 = false
		else
			var12 = true
		end
		return var12
	end;
	lastLocation = t.string;
})
return module_upvr