-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:56
-- Luau version 6, Types version 3
-- Time taken: 0.003089 seconds

local ChromeShared = script:FindFirstAncestor("ChromeShared")
local ViewportUtil_upvr = require(ChromeShared.Service.ViewportUtil)
local Constants_upvr = require(ChromeShared.Unibar.Constants)
local function _(arg1) -- Line 13, Named "getConstrainedSlotWidth"
	--[[ Upvalues[2]:
		[1]: ViewportUtil_upvr (readonly)
		[2]: Constants_upvr (readonly)
	]]
	local any_get_result1 = ViewportUtil_upvr.viewport:get()
	local var5
	if any_get_result1.isMobileDevice then
		if any_get_result1.tinyPortrait then
			var5 = Constants_upvr.MOBILE_TINY_PORTRAIT_SLOTS
		elseif any_get_result1.portraitOrientation then
			var5 = Constants_upvr.MOBILE_PORTRAIT_SLOTS
		else
			var5 = Constants_upvr.MOBILE_LANDSCAPE_SLOTS
		end
	else
		var5 = Constants_upvr.NON_MOBILE_SLOTS
	end
	return math.min(var5 - Constants_upvr.TOGGLE_SLOTS, arg1)
end
local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
local Signal_upvr = require(game:GetService("CorePackages").Workspace.Packages.AppCommonLib).Signal
function module_2_upvr.new(arg1) -- Line 42
	--[[ Upvalues[4]:
		[1]: ViewportUtil_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: Signal_upvr (readonly)
		[4]: module_2_upvr (readonly)
	]]
	local module = {}
	local any_get_result1_2 = ViewportUtil_upvr.viewport:get()
	local var10
	if any_get_result1_2.isMobileDevice then
		if any_get_result1_2.tinyPortrait then
			var10 = Constants_upvr.MOBILE_TINY_PORTRAIT_SLOTS
		elseif any_get_result1_2.portraitOrientation then
			var10 = Constants_upvr.MOBILE_PORTRAIT_SLOTS
		else
			var10 = Constants_upvr.MOBILE_LANDSCAPE_SLOTS
		end
	else
		var10 = Constants_upvr.NON_MOBILE_SLOTS
	end
	module._state = math.min(var10 - Constants_upvr.TOGGLE_SLOTS, arg1 or 3)
	module._requestedSlots = arg1
	module._changeSignal = Signal_upvr.new()
	return setmetatable(module, module_2_upvr)
end
function module_2_upvr.connect(arg1, arg2) -- Line 51
	return arg1._changeSignal:connect(arg2)
end
function module_2_upvr.requestSlots(arg1, arg2) -- Line 56
	--[[ Upvalues[2]:
		[1]: ViewportUtil_upvr (readonly)
		[2]: Constants_upvr (readonly)
	]]
	arg1._requestedSlots = arg2
	local any_get_result1_3 = ViewportUtil_upvr.viewport:get()
	local var12
	if any_get_result1_3.isMobileDevice then
		if any_get_result1_3.tinyPortrait then
			var12 = Constants_upvr.MOBILE_TINY_PORTRAIT_SLOTS
		elseif any_get_result1_3.portraitOrientation then
			var12 = Constants_upvr.MOBILE_PORTRAIT_SLOTS
		else
			var12 = Constants_upvr.MOBILE_LANDSCAPE_SLOTS
		end
	else
		var12 = Constants_upvr.NON_MOBILE_SLOTS
	end
	local minimum = math.min(var12 - Constants_upvr.TOGGLE_SLOTS, arg2)
	if arg1._state ~= minimum then
		arg1._state = minimum
		arg1._changeSignal:fire(minimum)
	end
end
function module_2_upvr.get(arg1) -- Line 66
	return arg1._state
end
function module_2_upvr.updateConstraints(arg1) -- Line 71
	arg1:requestSlots(arg1._requestedSlots)
end
return module_2_upvr