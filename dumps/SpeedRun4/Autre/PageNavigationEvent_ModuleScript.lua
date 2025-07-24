-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:11
-- Luau version 6, Types version 3
-- Time taken: 0.001227 seconds

local invariant_upvr = require(script.Parent.invariant)
local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
function module_2_upvr.new(arg1, arg2) -- Line 6
	--[[ Upvalues[2]:
		[1]: invariant_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	local var3
	if type(arg1) ~= "string" then
		var3 = false
	else
		var3 = true
	end
	invariant_upvr(var3, "pageName should be string")
	if typeof(arg2) ~= "userdata" then
		var3 = false
	else
		var3 = true
	end
	invariant_upvr(var3, "event should be RoactNavigation.Event")
	local module = {}
	module.event = arg2
	module.pageName = arg1
	var3 = setmetatable
	var3(module, module_2_upvr)
	return module
end
function module_2_upvr.isPageNavigationEvent(arg1) -- Line 19
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local var5
	if getmetatable(arg1).__index ~= module_2_upvr then
		var5 = false
	else
		var5 = true
	end
	return var5
end
function module_2_upvr.__tostring(arg1) -- Line 23
	return string.format("%-15s - %s", tostring(arg1.event), arg1.pageName)
end
function module_2_upvr.equalTo(arg1, arg2) -- Line 27
	--[[ Upvalues[2]:
		[1]: invariant_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	invariant_upvr(module_2_upvr.isPageNavigationEvent(arg2), "should be PageNavigationEvent")
	local var7 = false
	if arg1.pageName == arg2.pageName then
		if arg1.event ~= arg2.event then
			var7 = false
		else
			var7 = true
		end
	end
	return var7
end
return module_2_upvr