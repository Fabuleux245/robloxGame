-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:00
-- Luau version 6, Types version 3
-- Time taken: 0.002169 seconds

local ChromeShared = script:FindFirstAncestor("ChromeShared")
local Constants_upvr = require(ChromeShared.Unibar.Constants)
local ViewportUtil_upvr = require(ChromeShared.Service.ViewportUtil)
local function getConstrainedWindowSize_upvr(arg1, arg2) -- Line 11, Named "getConstrainedWindowSize"
	--[[ Upvalues[2]:
		[1]: ViewportUtil_upvr (readonly)
		[2]: Constants_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_get_result1 = ViewportUtil_upvr.screenSize:get()
	local var5
	if any_get_result1.X >= any_get_result1.Y then
		var5 = false
	else
		var5 = true
	end
	if ViewportUtil_upvr.mobileDevice:get() then
		if var5 then
		elseif not var5 then
		end
	end
	return UDim2.new(0, math.min(arg1, Constants_upvr.MAX_WIDTH_LANDSCAPE), 0, math.min(arg2, Constants_upvr.MAX_HEIGHT_LANDSCAPE))
end
local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
local Signal_upvr = require(game:GetService("CorePackages").Workspace.Packages.AppCommonLib).Signal
function module_2_upvr.new(arg1, arg2, arg3) -- Line 46
	--[[ Upvalues[4]:
		[1]: getConstrainedWindowSize_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: Signal_upvr (readonly)
		[4]: module_2_upvr (readonly)
	]]
	local module = {}
	local var9 = arg1
	if not var9 then
		var9 = Constants_upvr.DEFAULT_WIDTH
	end
	local var10 = arg2
	if not var10 then
		var10 = Constants_upvr.DEFAULT_HEIGHT
	end
	module._state = getConstrainedWindowSize_upvr(var9, var10)
	module._isLarge = arg3 or false
	module._changeSignal = Signal_upvr.new()
	return setmetatable(module, module_2_upvr)
end
function module_2_upvr.connect(arg1, arg2) -- Line 58
	return arg1._changeSignal:connect(arg2)
end
function module_2_upvr.requestSize(arg1, arg2, arg3) -- Line 63
	--[[ Upvalues[1]:
		[1]: getConstrainedWindowSize_upvr (readonly)
	]]
	local getConstrainedWindowSize_upvr_result1 = getConstrainedWindowSize_upvr(arg2, arg3)
	if arg1._state ~= getConstrainedWindowSize_upvr_result1 then
		arg1._state = getConstrainedWindowSize_upvr_result1
		arg1._changeSignal:fire(getConstrainedWindowSize_upvr_result1)
	end
end
function module_2_upvr.toggleIsLarge(arg1) -- Line 72
	local var12 = not arg1._isLarge
	arg1._isLarge = var12
	arg1._changeSignal:fire(var12)
end
function module_2_upvr.get(arg1) -- Line 78
	return arg1._state
end
function module_2_upvr.getIsLarge(arg1) -- Line 82
	return arg1._isLarge
end
function module_2_upvr.updateConstraints(arg1) -- Line 87
	arg1:requestSize(arg1._state.Width.Offset, arg1._state.Height.Offset)
end
return module_2_upvr