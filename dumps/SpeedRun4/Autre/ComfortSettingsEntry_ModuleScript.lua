-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:24
-- Luau version 6, Types version 3
-- Time taken: 0.003234 seconds

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
	Description = "CoreScripts.InGameMenu.GameSettings.ComfortSettingsDescription";
	["Enum.VRComfortSetting.Comfort"] = "CoreScripts.InGameMenu.GameSettings.ComfortSettingComfort";
	["Enum.VRComfortSetting.Normal"] = "CoreScripts.InGameMenu.GameSettings.ComfortSettingNormal";
	["Enum.VRComfortSetting.Expert"] = "CoreScripts.InGameMenu.GameSettings.ComfortSettingExpert";
	["Enum.VRComfortSetting.Custom"] = "CoreScripts.InGameMenu.GameSettings.ComfortSettingCustom";
}
local Enum_VRComfortSetting_GetEnumItems_result1_upvr = Enum.VRComfortSetting:GetEnumItems()
local function _(arg1) -- Line 40, Named "getComfortSettingIndex"
	--[[ Upvalues[2]:
		[1]: LuauPolyfill_upvr (readonly)
		[2]: Enum_VRComfortSetting_GetEnumItems_result1_upvr (readonly)
	]]
	return LuauPolyfill_upvr.Array.indexOf(Enum_VRComfortSetting_GetEnumItems_result1_upvr, arg1)
end
local function _(arg1) -- Line 44, Named "setComfortSettingByIndex"
	--[[ Upvalues[4]:
		[1]: Enum_VRComfortSetting_GetEnumItems_result1_upvr (readonly)
		[2]: GameSettings_upvr (readonly)
		[3]: SendAnalytics_upvr (readonly)
		[4]: Constants_upvr (readonly)
	]]
	local var12 = Enum_VRComfortSetting_GetEnumItems_result1_upvr[arg1]
	GameSettings_upvr.VRComfortSetting = var12
	SendAnalytics_upvr(Constants_upvr.AnalyticsSettingsChangeName, Constants_upvr.AnalyticsSettingsVRComfortSettingChangeName, {
		mode = tostring(var12);
	})
end
local any_extend_result1 = Roact_upvr.PureComponent:extend("ComfortSettingsEntry")
any_extend_result1.validateProps = t.strictInterface({
	LayoutOrder = t.optional(t.integer);
})
function any_extend_result1.init(arg1) -- Line 57
	--[[ Upvalues[3]:
		[1]: GameSettings_upvr (readonly)
		[2]: LuauPolyfill_upvr (readonly)
		[3]: Enum_VRComfortSetting_GetEnumItems_result1_upvr (readonly)
	]]
	arg1:setState({
		selectedMode = LuauPolyfill_upvr.Array.indexOf(Enum_VRComfortSetting_GetEnumItems_result1_upvr, GameSettings_upvr.VRComfortSetting);
	})
end
local withLocalization_upvr = require(Parent.Localization.withLocalization)
local ExternalEventConnection_upvr = require(Parent.Utility.ExternalEventConnection)
local VRComfortSetting_changed_signal_upvr = GameSettings_upvr:GetPropertyChangedSignal("VRComfortSetting")
local ThemedTextLabel_upvr = require(Parent.Components.ThemedTextLabel)
local SegmentedControl_upvr = InGameMenuDependencies.UIBlox.App.Control.SegmentedControl
function any_extend_result1.render(arg1) -- Line 63
	--[[ Upvalues[12]:
		[1]: withLocalization_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: ExternalEventConnection_upvr (readonly)
		[5]: VRComfortSetting_changed_signal_upvr (readonly)
		[6]: GameSettings_upvr (readonly)
		[7]: LuauPolyfill_upvr (readonly)
		[8]: Enum_VRComfortSetting_GetEnumItems_result1_upvr (readonly)
		[9]: ThemedTextLabel_upvr (readonly)
		[10]: SegmentedControl_upvr (readonly)
		[11]: SendAnalytics_upvr (readonly)
		[12]: Constants_upvr (readonly)
	]]
	return withLocalization_upvr(module_upvr)(function(arg1_2) -- Line 64
		--[[ Upvalues[11]:
			[1]: Roact_upvr (copied, readonly)
			[2]: ExternalEventConnection_upvr (copied, readonly)
			[3]: VRComfortSetting_changed_signal_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: GameSettings_upvr (copied, readonly)
			[6]: LuauPolyfill_upvr (copied, readonly)
			[7]: Enum_VRComfortSetting_GetEnumItems_result1_upvr (copied, readonly)
			[8]: ThemedTextLabel_upvr (copied, readonly)
			[9]: SegmentedControl_upvr (copied, readonly)
			[10]: SendAnalytics_upvr (copied, readonly)
			[11]: Constants_upvr (copied, readonly)
		]]
		return Roact_upvr.createFragment({
			VRComfortSettingListener = Roact_upvr.createElement(ExternalEventConnection_upvr, {
				event = VRComfortSetting_changed_signal_upvr;
				callback = function() -- Line 68, Named "callback"
					--[[ Upvalues[4]:
						[1]: arg1 (copied, readonly)
						[2]: GameSettings_upvr (copied, readonly)
						[3]: LuauPolyfill_upvr (copied, readonly)
						[4]: Enum_VRComfortSetting_GetEnumItems_result1_upvr (copied, readonly)
					]]
					arg1:setState({
						selectedMode = LuauPolyfill_upvr.Array.indexOf(Enum_VRComfortSetting_GetEnumItems_result1_upvr, GameSettings_upvr.VRComfortSetting);
					})
				end;
			});
			ComfortSettingEntrySelector = Roact_upvr.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 0);
				AutomaticSize = Enum.AutomaticSize.Y;
				BackgroundTransparency = 1;
				LayoutOrder = arg1.props.LayoutOrder;
				ZIndex = 2;
			}, {
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
				InputDescription = Roact_upvr.createElement(ThemedTextLabel_upvr, {
					themeKey = "TextDefault";
					fontKey = "CaptionHeader";
					Text = arg1_2.Description;
					Size = UDim2.new(0.9, 0, 0, 0);
					AutomaticSize = Enum.AutomaticSize.Y;
					TextWrapped = true;
					LayoutOrder = 1;
					TextXAlignment = Enum.TextXAlignment.Left;
				});
				Frame = Roact_upvr.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, 0);
					AutomaticSize = Enum.AutomaticSize.Y;
					BackgroundTransparency = 1;
					LayoutOrder = 2;
				}, {
					SegmentedControl = Roact_upvr.createElement(SegmentedControl_upvr, {
						width = UDim.new(1, 0);
						selectedTabIndex = arg1.state.selectedMode;
						onTabActivated = function(arg1_3) -- Line 113, Named "onTabActivated"
							--[[ Upvalues[4]:
								[1]: Enum_VRComfortSetting_GetEnumItems_result1_upvr (copied, readonly)
								[2]: GameSettings_upvr (copied, readonly)
								[3]: SendAnalytics_upvr (copied, readonly)
								[4]: Constants_upvr (copied, readonly)
							]]
							local var34 = Enum_VRComfortSetting_GetEnumItems_result1_upvr[arg1_3]
							GameSettings_upvr.VRComfortSetting = var34
							SendAnalytics_upvr(Constants_upvr.AnalyticsSettingsChangeName, Constants_upvr.AnalyticsSettingsVRComfortSettingChangeName, {
								mode = tostring(var34);
							})
						end;
						tabs = LuauPolyfill_upvr.Array.map(Enum_VRComfortSetting_GetEnumItems_result1_upvr, function(arg1_4, arg2) -- Line 116
							--[[ Upvalues[1]:
								[1]: arg1_2 (readonly)
							]]
							return {
								tabName = arg1_2[tostring(arg1_4)];
							}
						end);
					});
				});
			});
		})
	end)
end
return any_extend_result1