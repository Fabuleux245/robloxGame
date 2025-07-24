-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:22:14
-- Luau version 6, Types version 3
-- Time taken: 0.003383 seconds

local t = require(script:FindFirstAncestor("AvatarExperienceNavigation").Parent.t)
local RouteInfo_upvr = require(script.Parent.RouteInfo)
local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
module_2_upvr.maxPreviousCount = 2
module_2_upvr.Interface = t.strictInterface({
	current = RouteInfo_upvr.Interface;
	previousPages = t.optional(t.array(RouteInfo_upvr.Interface));
	opaque = RouteInfo_upvr.Interface;
	isVisible = t.boolean;
	isOverlayVisible = t.boolean;
})
function module_2_upvr.new(arg1) -- Line 40
	--[[ Upvalues[2]:
		[1]: RouteInfo_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	local module = {}
	local current = arg1.current
	if not current then
		current = RouteInfo_upvr.EMPTY
	end
	module.current = current
	current = arg1.previousPages
	local var7 = current
	if not var7 then
		var7 = {}
	end
	module.previousPages = var7
	var7 = arg1.opaque
	local var8 = var7
	if not var8 then
		var8 = RouteInfo_upvr.EMPTY
	end
	module.opaque = var8
	module.isVisible = arg1.isVisible or false
	module.isOverlayVisible = arg1.isOverlayVisible or false
	setmetatable(module, module_2_upvr)
	return module
end
function module_2_upvr.__tostring(arg1) -- Line 52
	local current_2 = arg1.current
	local opaque = arg1.opaque
	local var11
	if arg1.isVisible then
		var11 = "Visible"
	else
		var11 = "Not Visible"
	end
	if arg1.isOverlayVisible then
		var11 = " *Overlay"
	else
		var11 = ""
	end
	var11 = ", "
	local var12 = "AvatarRoute["..var11..var11..var11..tostring(current_2)
	var11 = opaque.name
	if current_2.name ~= var11 then
		var11 = ", opaque: "
		var12 = var12..var11..tostring(opaque)
	end
	var11 = ']'
	return var12..var11
end
function module_2_upvr.__eq(arg1, arg2) -- Line 67
	if not arg1 or not arg2 then
		return false
	end
	if rawequal(arg1, arg2) then
		return true
	end
	local var15 = false
	if arg1.isVisible == arg2.isVisible then
		var15 = false
		if arg1.isOverlayVisible == arg2.isOverlayVisible then
			var15 = false
			if arg1.current == arg2.current then
				if arg1.opaque ~= arg2.opaque then
					var15 = false
				else
					var15 = true
				end
			end
		end
	end
	return var15
end
return module_2_upvr