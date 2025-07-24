-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:22:17
-- Luau version 6, Types version 3
-- Time taken: 0.001648 seconds

local AvatarExperienceNavigation = script:FindFirstAncestor("AvatarExperienceNavigation")
local Parent = AvatarExperienceNavigation.Parent
local t = require(Parent.t)
local AvatarScreen = require(AvatarExperienceNavigation.Enums.AvatarScreen)
local module_upvr = {}
module_upvr.__index = module_upvr
module_upvr.Interface = t.strictInterface({
	name = t.string;
	key = t.string;
	params = t.table;
})
function module_upvr.new(arg1, arg2, arg3) -- Line 20
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local module = {}
	module.name = arg1
	module.key = arg2
	local var8 = arg3
	if not var8 then
		var8 = {}
	end
	module.params = var8
	setmetatable(module, module_upvr)
	return module
end
module_upvr.EMPTY = module_upvr.new(AvatarScreen.None, AvatarScreen.None)
function module_upvr.__tostring(arg1) -- Line 32
	return string.format("%s(key=%s)", arg1.name, tostring(arg1.key))
end
local tutils_upvr = require(Parent.tutils)
function module_upvr.__eq(arg1, arg2) -- Line 36
	--[[ Upvalues[1]:
		[1]: tutils_upvr (readonly)
	]]
	if rawequal(arg1, arg2) then
		return true
	end
	local var11 = false
	if arg1.key == arg2.key then
		var11 = false
		if arg1.name == arg2.name then
			var11 = tutils_upvr.shallowEqual(arg1.params, arg2.params, nil)
		end
	end
	return var11
end
return module_upvr