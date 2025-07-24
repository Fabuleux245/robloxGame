-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:13:19
-- Luau version 6, Types version 3
-- Time taken: 0.001310 seconds

local Parent = script:FindFirstAncestor("InputUi").Parent
local useInputType_upvr = require(Parent.RoactUtils).Hooks.useInputType
local InputTypeConstants_upvr = require(Parent.InputType).InputTypeConstants
local React_upvr = require(Parent.React)
local GetFFlagGamepadAnalytics_upvr = require(Parent.SharedFlags).GetFFlagGamepadAnalytics
local useGamepadConnectedEvent_upvr = require(script.Parent.useGamepadConnectedEvent)
return function(arg1, arg2, arg3, arg4) -- Line 9, Named "useGamepadDisconnectOverlayEffect"
	--[[ Upvalues[5]:
		[1]: useInputType_upvr (readonly)
		[2]: InputTypeConstants_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: GetFFlagGamepadAnalytics_upvr (readonly)
		[5]: useGamepadConnectedEvent_upvr (readonly)
	]]
	local var7_upvr
	if useInputType_upvr() ~= InputTypeConstants_upvr.Gamepad then
		var7_upvr = false
	else
		var7_upvr = true
	end
	local any_useRef_result1_upvr = React_upvr.useRef(false)
	local tbl = {}
	tbl[1] = arg2
	local tbl_2 = {var7_upvr}
	tbl_2[2] = arg1
	useGamepadConnectedEvent_upvr(React_upvr.useCallback(function() -- Line 19
		--[[ Upvalues[5]:
			[1]: any_useRef_result1_upvr (readonly)
			[2]: GetFFlagGamepadAnalytics_upvr (copied, readonly)
			[3]: arg3 (readonly)
			[4]: arg4 (readonly)
			[5]: arg2 (readonly)
		]]
		if any_useRef_result1_upvr.current then
			if GetFFlagGamepadAnalytics_upvr() then
				arg3:sendEventDeferred(arg4 or "", "gamepadConnectionEvent", {
					connectionEvent = "gamepadReconnected";
				})
			end
			any_useRef_result1_upvr.current = false
			arg2()
		end
	end, tbl), React_upvr.useCallback(function() -- Line 32
		--[[ Upvalues[6]:
			[1]: var7_upvr (readonly)
			[2]: any_useRef_result1_upvr (readonly)
			[3]: GetFFlagGamepadAnalytics_upvr (copied, readonly)
			[4]: arg3 (readonly)
			[5]: arg4 (readonly)
			[6]: arg1 (readonly)
		]]
		if not var7_upvr then
		elseif not any_useRef_result1_upvr.current then
			if GetFFlagGamepadAnalytics_upvr() then
				arg3:sendEventDeferred(arg4 or "", "gamepadConnectionEvent", {
					connectionEvent = "gamepadDisconnected";
				})
			end
			any_useRef_result1_upvr.current = true
			arg1()
		end
	end, tbl_2))
end