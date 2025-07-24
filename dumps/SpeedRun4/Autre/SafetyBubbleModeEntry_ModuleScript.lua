-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:27
-- Luau version 6, Types version 3
-- Time taken: 0.003743 seconds

local CorePackages = game:GetService("CorePackages")
local GameSettings_upvr = UserSettings().GameSettings
local LuauPolyfill_upvr = require(CorePackages.Packages.LuauPolyfill)
local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = InGameMenuDependencies.t
local Parent = script.Parent.Parent.Parent
local SendAnalytics_upvr = require(Parent.Utility.SendAnalytics)
local Constants_upvr = require(Parent.Resources.Constants)
local module_upvr = {
	Title = "CoreScripts.InGameMenu.GameSettings.SafetyBubbleModeTitle";
	Description = "CoreScripts.InGameMenu.GameSettings.SafetyBubbleModeDescription";
	["Enum.VRSafetyBubbleMode.NoOne"] = "CoreScripts.InGameMenu.GameSettings.SafetyBubbleModeNoOne";
	["Enum.VRSafetyBubbleMode.OnlyFriends"] = "CoreScripts.InGameMenu.GameSettings.SafetyBubbleModeOnlyFriends";
	["Enum.VRSafetyBubbleMode.Anyone"] = "CoreScripts.InGameMenu.GameSettings.SafetyBubbleModeAnyone";
}
local Enum_VRSafetyBubbleMode_GetEnumItems_result1_upvr = Enum.VRSafetyBubbleMode:GetEnumItems()
local function _(arg1) -- Line 36, Named "getSafetyBubbleModeIndex"
	--[[ Upvalues[2]:
		[1]: LuauPolyfill_upvr (readonly)
		[2]: Enum_VRSafetyBubbleMode_GetEnumItems_result1_upvr (readonly)
	]]
	return LuauPolyfill_upvr.Array.indexOf(Enum_VRSafetyBubbleMode_GetEnumItems_result1_upvr, arg1)
end
local function _(arg1) -- Line 40, Named "setSafetyBubbleModeByIndex"
	--[[ Upvalues[4]:
		[1]: Enum_VRSafetyBubbleMode_GetEnumItems_result1_upvr (readonly)
		[2]: GameSettings_upvr (readonly)
		[3]: SendAnalytics_upvr (readonly)
		[4]: Constants_upvr (readonly)
	]]
	local var12 = Enum_VRSafetyBubbleMode_GetEnumItems_result1_upvr[arg1]
	GameSettings_upvr.VRSafetyBubbleMode = var12
	SendAnalytics_upvr(Constants_upvr.AnalyticsSettingsChangeName, Constants_upvr.AnalyticsSettingsSafetyBubbleModeChangeName, {
		mode = tostring(var12);
	})
end
local any_extend_result1 = Roact_upvr.PureComponent:extend("SafetyBubbleModeEntry")
any_extend_result1.validateProps = t.strictInterface({
	LayoutOrder = t.optional(t.integer);
})
function any_extend_result1.init(arg1) -- Line 53
	--[[ Upvalues[3]:
		[1]: GameSettings_upvr (readonly)
		[2]: LuauPolyfill_upvr (readonly)
		[3]: Enum_VRSafetyBubbleMode_GetEnumItems_result1_upvr (readonly)
	]]
	arg1:setState({
		selectedMode = LuauPolyfill_upvr.Array.indexOf(Enum_VRSafetyBubbleMode_GetEnumItems_result1_upvr, GameSettings_upvr.VRSafetyBubbleMode);
	})
end
local withLocalization_upvr = require(Parent.Localization.withLocalization)
local ExternalEventConnection_upvr = require(Parent.Utility.ExternalEventConnection)
local VRSafetyBubbleMode_changed_signal_upvr = GameSettings_upvr:GetPropertyChangedSignal("VRSafetyBubbleMode")
local InputLabel_upvr = require(script.Parent.InputLabel)
local ThemedTextLabel_upvr = require(Parent.Components.ThemedTextLabel)
local RadioButtonList_upvr = InGameMenuDependencies.UIBlox.App.InputButton.RadioButtonList
local var23_upvr = require(Parent.Flags.FFlagFixSafetyBubbleWidth)()
function any_extend_result1.render(arg1) -- Line 59
	--[[ Upvalues[14]:
		[1]: withLocalization_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: ExternalEventConnection_upvr (readonly)
		[5]: VRSafetyBubbleMode_changed_signal_upvr (readonly)
		[6]: GameSettings_upvr (readonly)
		[7]: LuauPolyfill_upvr (readonly)
		[8]: Enum_VRSafetyBubbleMode_GetEnumItems_result1_upvr (readonly)
		[9]: InputLabel_upvr (readonly)
		[10]: ThemedTextLabel_upvr (readonly)
		[11]: RadioButtonList_upvr (readonly)
		[12]: SendAnalytics_upvr (readonly)
		[13]: Constants_upvr (readonly)
		[14]: var23_upvr (readonly)
	]]
	return withLocalization_upvr(module_upvr)(function(arg1_2) -- Line 60
		--[[ Upvalues[14]:
			[1]: Roact_upvr (copied, readonly)
			[2]: ExternalEventConnection_upvr (copied, readonly)
			[3]: VRSafetyBubbleMode_changed_signal_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: GameSettings_upvr (copied, readonly)
			[6]: LuauPolyfill_upvr (copied, readonly)
			[7]: Enum_VRSafetyBubbleMode_GetEnumItems_result1_upvr (copied, readonly)
			[8]: InputLabel_upvr (copied, readonly)
			[9]: module_upvr (copied, readonly)
			[10]: ThemedTextLabel_upvr (copied, readonly)
			[11]: RadioButtonList_upvr (copied, readonly)
			[12]: SendAnalytics_upvr (copied, readonly)
			[13]: Constants_upvr (copied, readonly)
			[14]: var23_upvr (copied, readonly)
		]]
		local module = {
			VRSafetyBubbleModeListener = Roact_upvr.createElement(ExternalEventConnection_upvr, {
				event = VRSafetyBubbleMode_changed_signal_upvr;
				callback = function() -- Line 64, Named "callback"
					--[[ Upvalues[4]:
						[1]: arg1 (copied, readonly)
						[2]: GameSettings_upvr (copied, readonly)
						[3]: LuauPolyfill_upvr (copied, readonly)
						[4]: Enum_VRSafetyBubbleMode_GetEnumItems_result1_upvr (copied, readonly)
					]]
					arg1:setState({
						selectedMode = LuauPolyfill_upvr.Array.indexOf(Enum_VRSafetyBubbleMode_GetEnumItems_result1_upvr, GameSettings_upvr.VRSafetyBubbleMode);
					})
				end;
			});
		}
		local tbl = {
			Padding = Roact_upvr.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, 24);
				PaddingRight = UDim.new(0, 24);
				PaddingBottom = UDim.new(0, 15);
				PaddingTop = UDim.new(0, 15);
			});
			ListLayout = Roact_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical;
				HorizontalAlignment = Enum.HorizontalAlignment.Left;
				SortOrder = Enum.SortOrder.LayoutOrder;
				Padding = UDim.new(0, 20);
			});
			InputLabel = Roact_upvr.createElement(InputLabel_upvr, {
				localizationKey = module_upvr.Title;
				Size = UDim2.new(1, 0, 0, 0);
				Position = UDim2.new(0, 0, 0, 0);
				AnchorPoint = Vector2.new(0, 0);
				LayoutOrder = 1;
			});
			InputDescription = Roact_upvr.createElement(ThemedTextLabel_upvr, {
				themeKey = "TextDefault";
				fontKey = "CaptionHeader";
				Text = arg1_2.Description;
				Size = UDim2.new(0.9, 0, 0, 0);
				AutomaticSize = Enum.AutomaticSize.Y;
				TextWrapped = true;
				LayoutOrder = 2;
				TextXAlignment = Enum.TextXAlignment.Left;
			});
		}
		local tbl_2 = {
			layoutOrder = 3;
			radioButtons = LuauPolyfill_upvr.Array.map(Enum_VRSafetyBubbleMode_GetEnumItems_result1_upvr, function(arg1_3, arg2) -- Line 108
				--[[ Upvalues[1]:
					[1]: arg1_2 (readonly)
				]]
				return {
					label = arg1_2[tostring(arg1_3)];
				}
			end);
			onActivated = function(arg1_4) -- Line 113, Named "onActivated"
				--[[ Upvalues[4]:
					[1]: Enum_VRSafetyBubbleMode_GetEnumItems_result1_upvr (copied, readonly)
					[2]: GameSettings_upvr (copied, readonly)
					[3]: SendAnalytics_upvr (copied, readonly)
					[4]: Constants_upvr (copied, readonly)
				]]
				local var37 = Enum_VRSafetyBubbleMode_GetEnumItems_result1_upvr[arg1_4]
				GameSettings_upvr.VRSafetyBubbleMode = var37
				SendAnalytics_upvr(Constants_upvr.AnalyticsSettingsChangeName, Constants_upvr.AnalyticsSettingsSafetyBubbleModeChangeName, {
					mode = tostring(var37);
				})
			end;
			currentValue = arg1.state.selectedMode;
			automaticSize = true;
		}
		local udim = UDim.new(0, 20)
		tbl_2.padding = udim
		if var23_upvr then
			udim = UDim2.new(1, 0, 0, 20)
		else
			udim = UDim2.new(0, 0, 0, 20)
		end
		tbl_2.elementSize = udim
		tbl.RadioList = Roact_upvr.createElement(RadioButtonList_upvr, tbl_2)
		module.SafetyBubbleModeEntrySelector = Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 0);
			AutomaticSize = Enum.AutomaticSize.Y;
			BackgroundTransparency = 1;
			LayoutOrder = arg1.props.LayoutOrder;
			ZIndex = 2;
		}, tbl)
		return Roact_upvr.createFragment(module)
	end)
end
return any_extend_result1