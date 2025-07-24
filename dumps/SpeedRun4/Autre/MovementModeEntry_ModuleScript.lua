-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:27
-- Luau version 6, Types version 3
-- Time taken: 0.008254 seconds

local UserGameSettings_upvr = UserSettings():GetService("UserGameSettings")
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local any_waitForChildOfClass_result1_upvr = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.CoreUtility).waitForChildOfClass(LocalPlayer_upvr, "PlayerScripts")
local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local Parent = script.Parent.Parent.Parent
local tbl_7_upvr = {
	[Enum.ComputerMovementMode.KeyboardMouse] = "CoreScripts.InGameMenu.GameSettings.ComputerMoveModeKeyboardMouse";
	[Enum.ComputerMovementMode.ClickToMove] = "CoreScripts.InGameMenu.GameSettings.ComputerMoveModeClickToMove";
	[Enum.ComputerMovementMode.Default] = "CoreScripts.InGameMenu.GameSettings.Default";
}
local tbl_4_upvr = {
	[Enum.DevComputerMovementMode.KeyboardMouse] = "CoreScripts.InGameMenu.GameSettings.ComputerMoveModeKeyboardMouse";
	[Enum.DevComputerMovementMode.ClickToMove] = "CoreScripts.InGameMenu.GameSettings.ComputerMoveModeClickToMove";
}
local any_extend_result1 = Roact_upvr.PureComponent:extend("MovementModeEntry")
any_extend_result1.validateProps = t.strictInterface({
	LayoutOrder = t.integer;
	canOpen = t.optional(t.boolean);
	canCaptureFocus = t.optional(t.boolean);
})
any_extend_result1.defaultProps = {
	canOpen = true;
}
function any_extend_result1.init(arg1) -- Line 55
	--[[ Upvalues[3]:
		[1]: UserGameSettings_upvr (readonly)
		[2]: any_waitForChildOfClass_result1_upvr (readonly)
		[3]: LocalPlayer_upvr (readonly)
	]]
	local tbl_2 = {
		selectedComputerMode = UserGameSettings_upvr.ComputerMovementMode;
	}
	local var14
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var14 = any_waitForChildOfClass_result1_upvr:GetRegisteredComputerMovementModes()
		return var14
	end
	if not any_waitForChildOfClass_result1_upvr or not INLINED() then
		var14 = {}
	end
	tbl_2.computerOptions = var14
	var14 = LocalPlayer_upvr.DevComputerMovementMode
	tbl_2.developerComputerMode = var14
	arg1:setState(tbl_2)
end
local ExternalEventConnection_upvr = require(Parent.Utility.ExternalEventConnection)
local ComputerMovementMode_changed_signal_upvr = UserGameSettings_upvr:GetPropertyChangedSignal("ComputerMovementMode")
local DevComputerMovementMode_changed_signal_upvr = LocalPlayer_upvr:GetPropertyChangedSignal("DevComputerMovementMode")
local InputLabel_upvr = require(script.Parent.InputLabel)
local withLocalization_upvr = require(Parent.Localization.withLocalization)
local DropDownSelection_upvr = require(Parent.Components.DropDownSelection)
local SendAnalytics_upvr = require(Parent.Utility.SendAnalytics)
local Constants_upvr = require(Parent.Resources.Constants)
local DeveloperLockLabel_upvr = require(script.Parent.DeveloperLockLabel)
function any_extend_result1.render(arg1) -- Line 63
	--[[ Upvalues[15]:
		[1]: Roact_upvr (readonly)
		[2]: ExternalEventConnection_upvr (readonly)
		[3]: ComputerMovementMode_changed_signal_upvr (readonly)
		[4]: UserGameSettings_upvr (readonly)
		[5]: any_waitForChildOfClass_result1_upvr (readonly)
		[6]: DevComputerMovementMode_changed_signal_upvr (readonly)
		[7]: LocalPlayer_upvr (readonly)
		[8]: tbl_7_upvr (readonly)
		[9]: InputLabel_upvr (readonly)
		[10]: withLocalization_upvr (readonly)
		[11]: tbl_4_upvr (readonly)
		[12]: DropDownSelection_upvr (readonly)
		[13]: SendAnalytics_upvr (readonly)
		[14]: Constants_upvr (readonly)
		[15]: DeveloperLockLabel_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module = {}
	local tbl_3 = {
		event = ComputerMovementMode_changed_signal_upvr;
	}
	local function callback() -- Line 69
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: UserGameSettings_upvr (copied, readonly)
		]]
		arg1:setState({
			selectedComputerMode = UserGameSettings_upvr.ComputerMovementMode;
		})
	end
	tbl_3.callback = callback
	module.ComputerMovementModeListener = Roact_upvr.createElement(ExternalEventConnection_upvr, tbl_3)
	local var35
	if any_waitForChildOfClass_result1_upvr then
		local tbl_5 = {
			event = any_waitForChildOfClass_result1_upvr.ComputerMovementModeRegistered;
		}
		local function callback() -- Line 77
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: any_waitForChildOfClass_result1_upvr (copied, readonly)
			]]
			arg1:setState({
				computerOptions = any_waitForChildOfClass_result1_upvr:GetRegisteredComputerMovementModes();
			})
		end
		tbl_5.callback = callback
	end
	module.ComputerMovementModeRegisteredListener = Roact_upvr.createElement(ExternalEventConnection_upvr, tbl_5)
	module.DevComputerMovementMode = Roact_upvr.createElement(ExternalEventConnection_upvr, {
		event = DevComputerMovementMode_changed_signal_upvr;
		callback = function() -- Line 85, Named "callback"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: LocalPlayer_upvr (copied, readonly)
			]]
			arg1:setState({
				developerComputerMode = LocalPlayer_upvr.DevComputerMovementMode;
			})
		end;
	})
	if #arg1.state.computerOptions == 0 then
		return Roact_upvr.createFragment(module)
	end
	if arg1.state.developerComputerMode == Enum.DevComputerMovementMode.UserChoice then
		local _ = false
		-- KONSTANTWARNING: Skipped task `defvar` above
	else
	end
	local tbl_6_upvr = {}
	if not true then
		for i_upvw, v in ipairs(arg1.state.computerOptions) do
			var35 = tbl_7_upvr
			tbl_6_upvr[i_upvw] = var35[v]
			if tbl_6_upvr[i_upvw] == nil then
				var35 = false
			else
				var35 = true
			end
			assert(var35, "Movement mode "..v.Name.." has no localization key")
			if arg1.state.selectedComputerMode.Value == v.Value then
			end
		end
	end
	local tbl_8 = {}
	;({}).PaddingLeft = UDim.new(0, 24)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	;({}).PaddingRight = UDim.new(0, 24)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_8.Padding = Roact_upvr.createElement("UIPadding", {})
	;({}).localizationKey = "CoreScripts.InGameMenu.GameSettings.MovementMode"
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	;({}).Size = UDim2.new(1, 0, 0, 56)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	;({}).Position = UDim2.new(0, 0, 0, 0)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	;({}).AnchorPoint = Vector2.new(0, 0)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_8.InputLabel = Roact_upvr.createElement(InputLabel_upvr, {})
	local tbl = {}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if not true or not tbl_4_upvr[arg1.state.developerComputerMode] then
	end
	tbl.placeholder = nil
	local var49_upvr = true
	tbl_8.Dropdown = withLocalization_upvr(tbl)(function(arg1_2) -- Line 130
		--[[ Upvalues[9]:
			[1]: Roact_upvr (copied, readonly)
			[2]: DropDownSelection_upvr (copied, readonly)
			[3]: tbl_6_upvr (readonly)
			[4]: i_upvw (read and write)
			[5]: var49_upvr (readonly)
			[6]: arg1 (readonly)
			[7]: UserGameSettings_upvr (copied, readonly)
			[8]: SendAnalytics_upvr (copied, readonly)
			[9]: Constants_upvr (copied, readonly)
		]]
		return Roact_upvr.createElement(DropDownSelection_upvr, {
			Size = UDim2.new(1, 0, 0, 44);
			Position = UDim2.new(0, 0, 0, 56);
			selections = tbl_6_upvr;
			selectedIndex = i_upvw;
			placeHolderText = arg1_2.placeholder;
			enabled = not var49_upvr;
			localize = true;
			selectionParentName = "MovementModeEntryDropdown";
			canOpen = arg1.props.canOpen;
			canCaptureFocus = arg1.props.canCaptureFocus;
			selectionChanged = function(arg1_3) -- Line 142, Named "selectionChanged"
				--[[ Upvalues[4]:
					[1]: UserGameSettings_upvr (copied, readonly)
					[2]: arg1 (copied, readonly)
					[3]: SendAnalytics_upvr (copied, readonly)
					[4]: Constants_upvr (copied, readonly)
				]]
				UserGameSettings_upvr.ComputerMovementMode = arg1.state.computerOptions[arg1_3]
				SendAnalytics_upvr(Constants_upvr.AnalyticsSettingsChangeName, nil, {}, true)
			end;
		})
	end)
	local var51 = var49_upvr
	if var51 then
		var51 = Roact_upvr.createElement
		;({}).AnchorPoint = Vector2.new(0, 1)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({}).Position = UDim2.new(0, 0, 1, 0)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({}).Size = UDim2.new(1, -72, 0.25, 0)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var51 = var51(DeveloperLockLabel_upvr, {})
	end
	tbl_8.LockedLabel = var51
	module.MovementModeEntrySelector = Roact_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, 120);
		BackgroundTransparency = 1;
		LayoutOrder = arg1.props.LayoutOrder;
		ZIndex = 2;
	}, tbl_8)
	return Roact_upvr.createFragment(module)
end
return any_extend_result1