-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:31
-- Luau version 6, Types version 3
-- Time taken: 0.005049 seconds

local Parent = script.Parent.Parent
local Pages_upvr = require(Parent.Components.Pages)
local SetCurrentPage_upvr = require(Parent.Actions.SetCurrentPage)
local Constants_upvr = require(Parent.Resources.Constants)
local OpenSystemMenu_upvr = require(Parent.Thunks.OpenSystemMenu)
local CloseMenu_upvr = require(Parent.Thunks.CloseMenu)
local ContextActionService_upvr = game:GetService("ContextActionService")
local DevConsoleMaster_upvr = require(game:GetService("CoreGui").RobloxGui.Modules.DevConsoleMaster)
local UserInputService_upvr = game:GetService("UserInputService")
local UserGameSettings_upvr = UserSettings():GetService("UserGameSettings")
local SetRespawning_upvr = require(Parent.Actions.SetRespawning)
local NavigateBack_upvr = require(Parent.Actions.NavigateBack)
local SetCurrentZone_upvr = require(Parent.Actions.SetCurrentZone)
return function(arg1) -- Line 31, Named "bindMenuActions"
	--[[ Upvalues[12]:
		[1]: Pages_upvr (readonly)
		[2]: SetCurrentPage_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: OpenSystemMenu_upvr (readonly)
		[5]: CloseMenu_upvr (readonly)
		[6]: ContextActionService_upvr (readonly)
		[7]: DevConsoleMaster_upvr (readonly)
		[8]: UserInputService_upvr (readonly)
		[9]: UserGameSettings_upvr (readonly)
		[10]: SetRespawning_upvr (readonly)
		[11]: NavigateBack_upvr (readonly)
		[12]: SetCurrentZone_upvr (readonly)
	]]
	ContextActionService_upvr:BindCoreAction("ToggleInGameMenu", function(arg1_2, arg2, arg3) -- Line 32, Named "toggleMenuFunc"
		--[[ Upvalues[6]:
			[1]: arg1 (readonly)
			[2]: Pages_upvr (copied, readonly)
			[3]: SetCurrentPage_upvr (copied, readonly)
			[4]: Constants_upvr (copied, readonly)
			[5]: OpenSystemMenu_upvr (copied, readonly)
			[6]: CloseMenu_upvr (copied, readonly)
		]]
		if arg2 ~= Enum.UserInputState.Begin then
		else
			local any_getState_result1_4 = arg1:getState()
			local var15 = Pages_upvr.pagesByKey[any_getState_result1_4.menuPage]
			if var15 and var15.isModal then
				arg1:dispatch(SetCurrentPage_upvr(Constants_upvr.defaultPageKey))
				return
			end
			if any_getState_result1_4.isMenuOpen then
				if any_getState_result1_4.menuPage == Constants_upvr.InitalPageKey then
					arg1:dispatch(OpenSystemMenu_upvr(Constants_upvr.AnalyticsMenuOpenTypes.Keyboard))
				else
					arg1:dispatch(CloseMenu_upvr)
				end
			end
			arg1:dispatch(OpenSystemMenu_upvr(Constants_upvr.AnalyticsMenuOpenTypes.Keyboard))
		end
	end, false, Enum.KeyCode.Escape)
	ContextActionService_upvr:BindCoreAction("ToggleDeveloperConsole", function(arg1_3, arg2) -- Line 59
		--[[ Upvalues[1]:
			[1]: DevConsoleMaster_upvr (copied, readonly)
		]]
		if arg1_3 ~= "ToggleDeveloperConsole" then
		else
			if arg2 ~= Enum.UserInputState.Begin then return end
			DevConsoleMaster_upvr:ToggleVisibility()
		end
	end, false, Enum.KeyCode.F9)
	ContextActionService_upvr:BindCoreAction("TogglePerformanceStats", function(arg1_4, arg2) -- Line 71
		--[[ Upvalues[2]:
			[1]: UserInputService_upvr (copied, readonly)
			[2]: UserGameSettings_upvr (copied, readonly)
		]]
		if not UserInputService_upvr:IsKeyDown(Enum.KeyCode.LeftControl) and not UserInputService_upvr:IsKeyDown(Enum.KeyCode.RightControl) then
			return Enum.ContextActionResult.Pass
		end
		if arg1_4 ~= "TogglePerformanceStats" then
		else
			if arg2 ~= Enum.UserInputState.Begin then return end
			UserGameSettings_upvr.PerformanceStatsVisible = not UserGameSettings_upvr.PerformanceStatsVisible
		end
	end, false, Enum.KeyCode.F7)
	ContextActionService_upvr:BindCoreAction("LeaveGame", function(arg1_5, arg2, arg3) -- Line 90, Named "leaveGameFunc"
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: Pages_upvr (copied, readonly)
			[3]: SetCurrentPage_upvr (copied, readonly)
			[4]: Constants_upvr (copied, readonly)
		]]
		local any_getState_result1_3 = arg1:getState()
		if arg2 ~= Enum.UserInputState.Begin or not any_getState_result1_3.isMenuOpen then
			return Enum.ContextActionResult.Pass
		end
		if Pages_upvr.pagesByKey[any_getState_result1_3.menuPage].isModal then
			return Enum.ContextActionResult.Pass
		end
		arg1:dispatch(SetCurrentPage_upvr(Constants_upvr.LeaveGamePromptPageKey))
		return Enum.ContextActionResult.Sink
	end, false, Enum.KeyCode.L, Enum.KeyCode.ButtonX)
	ContextActionService_upvr:BindCoreAction("ResetCharacter", function(arg1_6, arg2, arg3) -- Line 107, Named "resetCharacterFunc"
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: Pages_upvr (copied, readonly)
			[3]: Constants_upvr (copied, readonly)
			[4]: SetRespawning_upvr (copied, readonly)
		]]
		local any_getState_result1_5 = arg1:getState()
		if arg2 ~= Enum.UserInputState.Begin or not any_getState_result1_5.isMenuOpen then
			return Enum.ContextActionResult.Pass
		end
		if not any_getState_result1_5.respawn.enabled then
			return Enum.ContextActionResult.Pass
		end
		if Pages_upvr.pagesByKey[any_getState_result1_5.menuPage].isModal then
			return Enum.ContextActionResult.Pass
		end
		if any_getState_result1_5.menuPage == Constants_upvr.InitalPageKey then
			return Enum.ContextActionResult.Pass
		end
		arg1:dispatch(SetRespawning_upvr(true))
		return Enum.ContextActionResult.Sink
	end, false, Enum.KeyCode.R, Enum.KeyCode.ButtonY)
	ContextActionService_upvr:BindCoreAction("NavigateBack", function(arg1_7, arg2, arg3) -- Line 132, Named "navigateBackFunc"
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: Pages_upvr (copied, readonly)
			[3]: DevConsoleMaster_upvr (copied, readonly)
			[4]: CloseMenu_upvr (copied, readonly)
			[5]: NavigateBack_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 19 start (CF ANALYSIS FAILED)
		local any_getState_result1_7 = arg1:getState()
		if arg2 ~= Enum.UserInputState.End or not any_getState_result1_7.isMenuOpen and not DevConsoleMaster_upvr:GetVisibility() then
			return Enum.ContextActionResult.Pass
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if DevConsoleMaster_upvr:GetVisibility() then
			DevConsoleMaster_upvr:SetVisibility(false)
			-- KONSTANTWARNING: GOTO [53] #39
		end
		-- KONSTANTERROR: [0] 1. Error Block 19 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [34] 25. Error Block 16 start (CF ANALYSIS FAILED)
		if Pages_upvr.pagesByKey[any_getState_result1_7.menuPage].parentPage == nil and not any_getState_result1_7.respawn.dialogOpen then
			arg1:dispatch(CloseMenu_upvr)
		else
			arg1:dispatch(NavigateBack_upvr())
		end
		-- KONSTANTERROR: [34] 25. Error Block 16 end (CF ANALYSIS FAILED)
	end, false, Enum.KeyCode.ButtonB)
	local function _() -- Line 159, Named "canBumperSwitch"
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local any_getState_result1_2 = arg1:getState()
		local var28 = false
		if any_getState_result1_2.menuPage ~= "Controls" then
			var28 = any_getState_result1_2.isMenuOpen
			if var28 then
				var28 = not any_getState_result1_2.respawn.dialogOpen
				if var28 then
					var28 = not any_getState_result1_2.report.dialogOpen
					if var28 then
						var28 = not any_getState_result1_2.report.reportSentOpen
					end
				end
			end
		end
		return var28
	end
	ContextActionService_upvr:BindCoreAction("LeftBumperSwitchToZone0", function(arg1_8, arg2, arg3) -- Line 169
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: SetCurrentZone_upvr (copied, readonly)
		]]
		if arg2 == Enum.UserInputState.Begin then
			local any_getState_result1_11 = arg1:getState()
			local var33 = false
			if any_getState_result1_11.menuPage ~= "Controls" then
				var33 = any_getState_result1_11.isMenuOpen
				if var33 then
					var33 = not any_getState_result1_11.respawn.dialogOpen
					if var33 then
						var33 = not any_getState_result1_11.report.dialogOpen
						if var33 then
							var33 = not any_getState_result1_11.report.reportSentOpen
						end
					end
				end
			end
			if var33 then
				arg1:dispatch(SetCurrentZone_upvr(0))
				return Enum.ContextActionResult.Sink
			end
		end
		return Enum.ContextActionResult.Pass
	end, false, Enum.KeyCode.ButtonL1)
	ContextActionService_upvr:BindCoreAction("RightBumperSwitchToZone1", function(arg1_9, arg2, arg3) -- Line 179
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: SetCurrentZone_upvr (copied, readonly)
		]]
		if arg2 == Enum.UserInputState.Begin then
			local any_getState_result1 = arg1:getState()
			local var36 = false
			if any_getState_result1.menuPage ~= "Controls" then
				var36 = any_getState_result1.isMenuOpen
				if var36 then
					var36 = not any_getState_result1.respawn.dialogOpen
					if var36 then
						var36 = not any_getState_result1.report.dialogOpen
						if var36 then
							var36 = not any_getState_result1.report.reportSentOpen
						end
					end
				end
			end
			if var36 then
				arg1:dispatch(SetCurrentZone_upvr(1))
				return Enum.ContextActionResult.Sink
			end
		end
		return Enum.ContextActionResult.Pass
	end, false, Enum.KeyCode.ButtonR1)
end