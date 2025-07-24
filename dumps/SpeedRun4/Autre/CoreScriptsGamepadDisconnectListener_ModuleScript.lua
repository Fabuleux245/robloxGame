-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:53
-- Luau version 6, Types version 3
-- Time taken: 0.001825 seconds

local CorePackages = game:GetService("CorePackages")
local InputUi = require(CorePackages.Workspace.Packages.InputUi)
local React_upvr = require(CorePackages.Packages.React)
local GetFFlagGamepadAnalytics_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagGamepadAnalytics
local useGamepadDisconnectOverlayEffect_upvr = InputUi.Gamepad.useGamepadDisconnectOverlayEffect
local any_new_result1_upvr = require(CorePackages.Workspace.Packages.Analytics).AnalyticsReporters.EventIngest.new(game:GetService("EventIngestService"))
local InGameMenuConstants_upvr = require(game:GetService("CoreGui").RobloxGui.Modules.InGameMenuConstants)
local GamepadDisconnectedModal_upvr = InputUi.Gamepad.GamepadDisconnectedModal
return function() -- Line 16, Named "CoreScriptsGamepadDisconnectListener"
	--[[ Upvalues[6]:
		[1]: React_upvr (readonly)
		[2]: GetFFlagGamepadAnalytics_upvr (readonly)
		[3]: useGamepadDisconnectOverlayEffect_upvr (readonly)
		[4]: any_new_result1_upvr (readonly)
		[5]: InGameMenuConstants_upvr (readonly)
		[6]: GamepadDisconnectedModal_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(false)
	local function var11() -- Line 18
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr (readonly)
		]]
		any_useState_result2_upvr(false)
	end
	local tbl_2 = {any_useState_result2_upvr}
	local function var13() -- Line 21
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr (readonly)
		]]
		any_useState_result2_upvr(true)
	end
	local tbl = {any_useState_result2_upvr}
	if GetFFlagGamepadAnalytics_upvr() then
		useGamepadDisconnectOverlayEffect_upvr(React_upvr.useCallback(var13, tbl), React_upvr.useCallback(var11, tbl_2), any_new_result1_upvr, "InExperience")
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		useGamepadDisconnectOverlayEffect_upvr(React_upvr.useCallback(var13, tbl), React_upvr.useCallback(var11, tbl_2))
	end
	if any_useState_result1 then
		return React_upvr.createElement("ScreenGui", {
			DisplayOrder = InGameMenuConstants_upvr.DisplayOrder.HeadsetDisconnectedDialog;
			IgnoreGuiInset = true;
			OnTopOfCoreBlur = true;
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
		}, {
			GamepadDisconnectedModal = React_upvr.createElement(GamepadDisconnectedModal_upvr);
		})
	end
	return nil
end