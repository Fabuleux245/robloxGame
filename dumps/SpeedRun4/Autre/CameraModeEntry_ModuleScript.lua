-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:22
-- Luau version 6, Types version 3
-- Time taken: 0.005285 seconds

local UserGameSettings_upvr = UserSettings():GetService("UserGameSettings")
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local any_waitForChildOfClass_result1_upvr = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.CoreUtility).waitForChildOfClass(LocalPlayer_upvr, "PlayerScripts")
local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local Parent = script.Parent.Parent.Parent
local tbl_5_upvr = {
	[Enum.ComputerCameraMovementMode.Classic] = "CoreScripts.InGameMenu.GameSettings.CameraModeClassic";
	[Enum.ComputerCameraMovementMode.Follow] = "CoreScripts.InGameMenu.GameSettings.CameraModeFollow";
	[Enum.ComputerCameraMovementMode.Default] = "CoreScripts.InGameMenu.GameSettings.Default";
	[Enum.ComputerCameraMovementMode.CameraToggle] = "CoreScripts.InGameMenu.GameSettings.CameraModeCameraToggle";
}
local any_extend_result1 = Roact_upvr.PureComponent:extend("CameraModeEntry")
any_extend_result1.validateProps = t.strictInterface({
	LayoutOrder = t.integer;
	canOpen = t.optional(t.boolean);
	canCaptureFocus = t.optional(t.boolean);
	ButtonRef = t.optional(t.union(t.callback, t.table));
})
any_extend_result1.defaultProps = {
	canOpen = true;
}
function any_extend_result1.init(arg1) -- Line 52
	--[[ Upvalues[3]:
		[1]: UserGameSettings_upvr (readonly)
		[2]: any_waitForChildOfClass_result1_upvr (readonly)
		[3]: LocalPlayer_upvr (readonly)
	]]
	local tbl_2 = {
		selectedComputerMode = UserGameSettings_upvr.ComputerCameraMovementMode;
	}
	local var13
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var13 = any_waitForChildOfClass_result1_upvr:GetRegisteredComputerCameraMovementModes()
		return var13
	end
	if not any_waitForChildOfClass_result1_upvr or not INLINED() then
		var13 = {}
	end
	tbl_2.computerOptions = var13
	var13 = LocalPlayer_upvr.DevComputerCameraMode
	tbl_2.developerComputerMode = var13
	arg1:setState(tbl_2)
end
local ExternalEventConnection_upvr = require(Parent.Utility.ExternalEventConnection)
local ComputerCameraMovementMode_changed_signal_upvr = UserGameSettings_upvr:GetPropertyChangedSignal("ComputerCameraMovementMode")
local DevComputerMovementMode_changed_signal_upvr = LocalPlayer_upvr:GetPropertyChangedSignal("DevComputerMovementMode")
local InputLabel_upvr = require(script.Parent.InputLabel)
local withLocalization_upvr = require(Parent.Localization.withLocalization)
local DropDownSelection_upvr = require(Parent.Components.DropDownSelection)
local SendAnalytics_upvr = require(Parent.Utility.SendAnalytics)
local Constants_upvr = require(Parent.Resources.Constants)
local DeveloperLockLabel_upvr = require(script.Parent.DeveloperLockLabel)
function any_extend_result1.render(arg1) -- Line 60
	--[[ Upvalues[14]:
		[1]: Roact_upvr (readonly)
		[2]: ExternalEventConnection_upvr (readonly)
		[3]: ComputerCameraMovementMode_changed_signal_upvr (readonly)
		[4]: UserGameSettings_upvr (readonly)
		[5]: any_waitForChildOfClass_result1_upvr (readonly)
		[6]: DevComputerMovementMode_changed_signal_upvr (readonly)
		[7]: LocalPlayer_upvr (readonly)
		[8]: tbl_5_upvr (readonly)
		[9]: InputLabel_upvr (readonly)
		[10]: withLocalization_upvr (readonly)
		[11]: DropDownSelection_upvr (readonly)
		[12]: SendAnalytics_upvr (readonly)
		[13]: Constants_upvr (readonly)
		[14]: DeveloperLockLabel_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module = {}
	local tbl_7 = {
		event = ComputerCameraMovementMode_changed_signal_upvr;
	}
	local function callback() -- Line 66
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: UserGameSettings_upvr (copied, readonly)
		]]
		arg1:setState({
			selectedComputerMode = UserGameSettings_upvr.ComputerCameraMovementMode;
		})
	end
	tbl_7.callback = callback
	module.ComputerCameraMovementModeListener = Roact_upvr.createElement(ExternalEventConnection_upvr, tbl_7)
	local var34
	if any_waitForChildOfClass_result1_upvr then
		local tbl = {
			event = any_waitForChildOfClass_result1_upvr.ComputerCameraMovementModeRegistered;
		}
		local function callback() -- Line 75
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: any_waitForChildOfClass_result1_upvr (copied, readonly)
			]]
			arg1:setState({
				computerOptions = any_waitForChildOfClass_result1_upvr:GetRegisteredComputerCameraMovementModes();
			})
		end
		tbl.callback = callback
	end
	module.ComputerCameraMovementModeRegisteredListener = Roact_upvr.createElement(ExternalEventConnection_upvr, tbl)
	module.LocalPlayerComputerMovementMode = Roact_upvr.createElement(ExternalEventConnection_upvr, {
		event = DevComputerMovementMode_changed_signal_upvr;
		callback = function() -- Line 83, Named "callback"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: LocalPlayer_upvr (copied, readonly)
			]]
			arg1:setState({
				developerComputerMode = LocalPlayer_upvr.DevComputerCameraMode;
			})
		end;
	})
	if #arg1.state.computerOptions == 0 then
		return Roact_upvr.createFragment(module)
	end
	if arg1.state.developerComputerMode == Enum.DevComputerCameraMovementMode.UserChoice then
		local _ = false
		-- KONSTANTWARNING: Skipped task `defvar` above
	else
	end
	local tbl_4_upvr = {}
	if not true then
		for i_upvw, v in ipairs(arg1.state.computerOptions) do
			var34 = tbl_5_upvr
			tbl_4_upvr[i_upvw] = var34[v]
			if tbl_4_upvr[i_upvw] == nil then
				var34 = false
			else
				var34 = true
			end
			assert(var34, "Camera movement mode "..v.Name.." has no localization key")
			if arg1.state.selectedComputerMode.Value == v.Value then
			end
		end
	end
	local tbl_3 = {}
	;({}).PaddingLeft = UDim.new(0, 24)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	;({}).PaddingRight = UDim.new(0, 24)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_3.Padding = Roact_upvr.createElement("UIPadding", {})
	;({}).localizationKey = "CoreScripts.InGameMenu.GameSettings.CameraMode"
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	;({}).Size = UDim2.new(1, 0, 0, 56)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	;({}).Position = UDim2.new(0, 0, 0, 0)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	;({}).AnchorPoint = Vector2.new(0, 0)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_3.InputLabel = Roact_upvr.createElement(InputLabel_upvr, {})
	local tbl_6 = {}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if not true or not tbl_5_upvr[arg1.state.developerComputerMode] then
	end
	tbl_6.placeholder = nil
	local var48_upvr = true
	tbl_3.Dropdown = withLocalization_upvr(tbl_6)(function(arg1_2) -- Line 128
		--[[ Upvalues[9]:
			[1]: Roact_upvr (copied, readonly)
			[2]: DropDownSelection_upvr (copied, readonly)
			[3]: tbl_4_upvr (readonly)
			[4]: i_upvw (read and write)
			[5]: arg1 (readonly)
			[6]: var48_upvr (readonly)
			[7]: UserGameSettings_upvr (copied, readonly)
			[8]: SendAnalytics_upvr (copied, readonly)
			[9]: Constants_upvr (copied, readonly)
		]]
		return Roact_upvr.createElement(DropDownSelection_upvr, {
			Size = UDim2.new(1, 0, 0, 44);
			Position = UDim2.new(0, 0, 0, 56);
			selections = tbl_4_upvr;
			selectedIndex = i_upvw;
			placeHolderText = arg1.state.developerComputerMode.Name;
			enabled = not var48_upvr;
			localize = true;
			selectionChanged = function(arg1_3) -- Line 137, Named "selectionChanged"
				--[[ Upvalues[4]:
					[1]: UserGameSettings_upvr (copied, readonly)
					[2]: arg1 (copied, readonly)
					[3]: SendAnalytics_upvr (copied, readonly)
					[4]: Constants_upvr (copied, readonly)
				]]
				UserGameSettings_upvr.ComputerCameraMovementMode = arg1.state.computerOptions[arg1_3]
				SendAnalytics_upvr(Constants_upvr.AnalyticsSettingsChangeName, nil, {}, true)
			end;
			selectionParentName = "cameraModeDropdown";
			canOpen = arg1.props.canOpen;
			canCaptureFocus = arg1.props.canCaptureFocus;
			ButtonRef = arg1.props.ButtonRef;
		})
	end)
	local var50 = var48_upvr
	if var50 then
		var50 = Roact_upvr.createElement
		;({}).AnchorPoint = Vector2.new(0, 1)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({}).Position = UDim2.new(0, 0, 1, 0)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({}).Size = UDim2.new(1, -72, 0.25, 0)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var50 = var50(DeveloperLockLabel_upvr, {})
	end
	tbl_3.LockedLabel = var50
	module.CameraModeEntrySelector = Roact_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, 120);
		BackgroundTransparency = 1;
		LayoutOrder = arg1.props.LayoutOrder;
		ZIndex = 2;
	}, tbl_3)
	return Roact_upvr.createFragment(module)
end
return any_extend_result1