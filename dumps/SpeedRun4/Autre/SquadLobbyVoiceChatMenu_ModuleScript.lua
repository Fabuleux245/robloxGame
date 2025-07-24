-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:43:29
-- Luau version 6, Types version 3
-- Time taken: 0.014099 seconds

local Squads = script:FindFirstAncestor("Squads")
local Parent = Squads.Parent
local CrossExperienceVoice = require(Parent.CrossExperienceVoice)
local UIBlox = require(Parent.UIBlox)
local dependencies = require(Squads.dependencies)
local Foundation_upvr = dependencies.Foundation
local React_upvr = dependencies.React
local Images_upvr = UIBlox.App.ImageSet.Images
local useTokens_upvr = Foundation_upvr.Hooks.useTokens
local ContextualSlider_upvr = UIBlox.App.Slider.ContextualSlider
local function var10_upvr(arg1) -- Line 51
	--[[ Upvalues[4]:
		[1]: useTokens_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: Foundation_upvr (readonly)
		[4]: ContextualSlider_upvr (readonly)
	]]
	local useTokens_upvr_result1_2 = useTokens_upvr()
	return React_upvr.createElement(Foundation_upvr.View, {
		Size = UDim2.new(1, 0, 0, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		padding = {
			top = UDim.new(0, useTokens_upvr_result1_2.Padding.Small);
			bottom = UDim.new(0, useTokens_upvr_result1_2.Padding.Small);
		};
		layout = {
			FillDirection = Enum.FillDirection.Vertical;
			SortOrder = Enum.SortOrder.LayoutOrder;
			Padding = UDim.new(0, useTokens_upvr_result1_2.Gap.Small);
		};
		LayoutOrder = arg1.LayoutOrder;
	}, {
		Label = React_upvr.createElement(Foundation_upvr.Text, {
			AutomaticSize = Enum.AutomaticSize.XY;
			fontStyle = useTokens_upvr_result1_2.Typography.LabelMedium;
			textStyle = useTokens_upvr_result1_2.Color.Content.Emphasis;
			TextTruncate = Enum.TextTruncate.AtEnd;
			TextWrapped = false;
			TextXAlignment = Enum.TextXAlignment.Left;
			LayoutOrder = 1;
			Text = arg1.labelText;
		});
		SliderWrapper = React_upvr.createElement(Foundation_upvr.View, {
			Size = UDim2.new(1, 0, 0, 0);
			AutomaticSize = Enum.AutomaticSize.Y;
			LayoutOrder = 2;
		}, {
			Slider = React_upvr.createElement(ContextualSlider_upvr, {
				width = UDim.new(1, 0);
				stepInterval = 0.1;
				min = 0;
				max = 1;
				value = arg1.sliderValue;
				onValueChanged = arg1.onValueChanged;
			});
		});
	})
end
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local component_assets_circle_24_stroke_1_upvr = Images_upvr["component_assets/circle_24_stroke_1"]
local component_assets_circle_16_upvr = Images_upvr["component_assets/circle_16"]
local function var21_upvr(arg1) -- Line 103
	--[[ Upvalues[6]:
		[1]: useTokens_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: Foundation_upvr (readonly)
		[4]: ImageSetLabel_upvr (readonly)
		[5]: component_assets_circle_24_stroke_1_upvr (readonly)
		[6]: component_assets_circle_16_upvr (readonly)
	]]
	local var9_result1_2 = useTokens_upvr()
	local Color3 = var9_result1_2.Color.Content.Emphasis.Color3
	local Transparency = var9_result1_2.Color.Content.Emphasis.Transparency
	local module_4 = {
		Icon = React_upvr.createElement(ImageSetLabel_upvr, {
			Size = UDim2.fromOffset(24, 24);
			BackgroundTransparency = 1;
			Image = arg1.icon;
			ImageColor3 = Color3;
			ImageTransparency = Transparency;
			LayoutOrder = 1;
		});
		Label = React_upvr.createElement(Foundation_upvr.Text, {
			AutomaticSize = Enum.AutomaticSize.XY;
			flexItem = {
				FlexMode = Enum.UIFlexMode.Fill;
			};
			fontStyle = var9_result1_2.Typography.LabelMedium;
			textStyle = var9_result1_2.Color.Content.Emphasis;
			TextTruncate = Enum.TextTruncate.AtEnd;
			TextWrapped = false;
			TextXAlignment = Enum.TextXAlignment.Left;
			LayoutOrder = 2;
			Text = arg1.labelText;
		});
	}
	local tbl_10 = {}
	local tbl_19 = {}
	local isSelected = arg1.isSelected
	if isSelected then
		isSelected = React_upvr.createElement
		isSelected = isSelected(ImageSetLabel_upvr, {
			BackgroundTransparency = 1;
			Image = component_assets_circle_16_upvr;
			Size = UDim2.new(0, 16, 0, 16);
			ImageColor3 = Color3;
			ImageTransparency = Transparency;
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.new(0.5, 0, 0.5, 0);
		})
	end
	tbl_19.SelectedIcon = isSelected
	tbl_10.DefaultIcon = React_upvr.createElement(ImageSetLabel_upvr, {
		BackgroundTransparency = 1;
		Image = component_assets_circle_24_stroke_1_upvr;
		Size = UDim2.new(0, 24, 0, 24);
		ImageColor3 = Color3;
		ImageTransparency = Transparency;
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = UDim2.new(0.5, 0, 0.5, 0);
	}, tbl_19)
	module_4.RadioButtonContainer = React_upvr.createElement(Foundation_upvr.View, {
		Size = UDim2.new(0, 0, 0, 40);
		AutomaticSize = Enum.AutomaticSize.X;
		layout = {
			FillDirection = Enum.FillDirection.Horizontal;
			HorizontalAlignment = Enum.HorizontalAlignment.Right;
			VerticalAlignment = Enum.VerticalAlignment.Center;
		};
		LayoutOrder = 3;
	}, tbl_10)
	return React_upvr.createElement(Foundation_upvr.View, {
		Size = UDim2.new(1, 0, 0, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		padding = Vector2.new(var9_result1_2.Padding.Large, var9_result1_2.Padding.XSmall);
		layout = {
			FillDirection = Enum.FillDirection.Horizontal;
			SortOrder = Enum.SortOrder.LayoutOrder;
			HorizontalAlignment = Enum.HorizontalAlignment.Left;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			Padding = UDim.new(0, var9_result1_2.Gap.Large);
		};
		LayoutOrder = arg1.LayoutOrder;
		onActivated = arg1.onActivated;
	}, module_4)
end
local useLocalUserId_upvr = require(Parent.RobloxAppHooks).useLocalUserId
local useIsVoiceFocused_upvr = CrossExperienceVoice.Hooks.useIsVoiceFocused
local useEnableAudioFocusToggle_upvr = CrossExperienceVoice.Hooks.useEnableAudioFocusToggle
local SquadExternalContractContext_upvr = dependencies.SquadsCore.SquadExternalContractProvider.SquadExternalContractContext
local useSelector_upvr = dependencies.Hooks.useSelector
local PresenceType_upvr = dependencies.RoduxPresence.Enums.PresenceType
local dependencyArray_upvr = dependencies.Hooks.dependencyArray
local useCurrentSquadParentChannelId_upvr = dependencies.SquadsCore.Hooks.useCurrentSquadParentChannelId
local CrossExperienceVoiceManager_upvr = CrossExperienceVoice.CrossExperienceVoiceManager
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("PartyVoiceVolume")
local GameSettings_upvr = UserSettings().GameSettings
local useLocalization_upvr = dependencies.Hooks.useLocalization
return function(arg1) -- Line 177
	--[[ Upvalues[18]:
		[1]: useTokens_upvr (readonly)
		[2]: useLocalUserId_upvr (readonly)
		[3]: useIsVoiceFocused_upvr (readonly)
		[4]: useEnableAudioFocusToggle_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: SquadExternalContractContext_upvr (readonly)
		[7]: useSelector_upvr (readonly)
		[8]: PresenceType_upvr (readonly)
		[9]: dependencyArray_upvr (readonly)
		[10]: useCurrentSquadParentChannelId_upvr (readonly)
		[11]: CrossExperienceVoiceManager_upvr (readonly)
		[12]: game_GetEngineFeature_result1_upvr (readonly)
		[13]: GameSettings_upvr (readonly)
		[14]: useLocalization_upvr (readonly)
		[15]: Foundation_upvr (readonly)
		[16]: var10_upvr (readonly)
		[17]: var21_upvr (readonly)
		[18]: Images_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local useTokens_upvr_result1 = useTokens_upvr()
	local var42_result1_upvr_2 = useLocalUserId_upvr()
	local var43_result1_upvr_2 = useIsVoiceFocused_upvr()
	local useSelector_upvr_result1_upvr_2 = useSelector_upvr(React_upvr.useCallback(function(arg1_5) -- Line 184
		--[[ Upvalues[1]:
			[1]: var42_result1_upvr_2 (readonly)
		]]
		return arg1_5.Squad.Presence.byUserId[tostring(var42_result1_upvr_2)]
	end, {var42_result1_upvr_2}))
	local any_useMemo_result1_upvr_2 = React_upvr.useMemo(function() -- Line 189
		--[[ Upvalues[2]:
			[1]: useSelector_upvr_result1_upvr_2 (readonly)
			[2]: PresenceType_upvr (copied, readonly)
		]]
		local var113 = useSelector_upvr_result1_upvr_2
		if var113 then
			if useSelector_upvr_result1_upvr_2.userPresenceType ~= PresenceType_upvr.InGame then
				var113 = false
			else
				var113 = true
			end
		end
		return var113
	end, dependencyArray_upvr(useSelector_upvr_result1_upvr_2))
	local any_useCallback_result1_upvr_2 = React_upvr.useCallback(function() -- Line 201
		--[[ Upvalues[1]:
			[1]: CrossExperienceVoiceManager_upvr (copied, readonly)
		]]
		CrossExperienceVoiceManager_upvr.default:toggleAudioFocus()
	end, {})
	local var118 = game_GetEngineFeature_result1_upvr
	local var119 = any_useMemo_result1_upvr_2
	if not var119 then
		var119 = not var118
	end
	local var120 = var118 and var119
	local var121 = any_useMemo_result1_upvr_2
	if var121 then
		var121 = useEnableAudioFocusToggle_upvr()
		if not var121 then
			var121 = arg1.forceEnableAudioFocusToggle
		end
	end
	local var122 = React_upvr
	if game_GetEngineFeature_result1_upvr then
		var122 = GameSettings_upvr.PartyVoiceVolume
	else
		var122 = 0
	end
	local any_useState_result1, any_useState_result2_upvr = var122.useState(var122)
	local any_useState_result1_2, any_useState_result2_upvr_3 = React_upvr.useState(GameSettings_upvr.MasterVolume)
	local useLocalization_upvr_result1 = useLocalization_upvr({
		volumeLabelText = "Feature.Squads.Label.Volume";
		partyVolumeLabelText = "Feature.Squads.Label.PartyVolume";
		experienceLabelText = "Feature.Squads.Label.Experience";
		voiceChatsLabelText = "Feature.Squads.Label.VoiceChats";
		partyLabelText = "Feature.Squads.Label.Party";
	})
	if var120 then
		-- KONSTANTWARNING: GOTO [115] #95
	end
	if var118 then
	else
	end
	local module = {}
	local tbl_2 = {}
	local var139 = var120
	if var139 then
		var139 = React_upvr.createElement
		var139 = var139(Foundation_upvr.Text, {
			AutomaticSize = Enum.AutomaticSize.XY;
			fontStyle = useTokens_upvr_result1.Typography.TitleSmall;
			textStyle = useTokens_upvr_result1.Color.Content.Muted;
			TextTruncate = Enum.TextTruncate.AtEnd;
			TextWrapped = false;
			TextXAlignment = Enum.TextXAlignment.Left;
			LayoutOrder = 1;
			padding = Vector2.new(0, useTokens_upvr_result1.Padding.XSmall);
			Text = useLocalization_upvr_result1.volumeLabelText;
		})
	end
	tbl_2.VolumeLabel = var139
	var139 = var118
	local var141 = var139
	if var141 then
		var141 = React_upvr.createElement
		local tbl_21 = {
			LayoutOrder = 2;
			labelText = useLocalization_upvr_result1.partyVolumeLabelText;
			sliderValue = any_useState_result1;
		}
		local function onValueChanged(arg1_6) -- Line 277
			--[[ Upvalues[2]:
				[1]: GameSettings_upvr (copied, readonly)
				[2]: any_useState_result2_upvr (readonly)
			]]
			GameSettings_upvr.PartyVoiceVolume = arg1_6
			any_useState_result2_upvr(arg1_6)
		end
		tbl_21.onValueChanged = onValueChanged
		var141 = var141(var10_upvr, tbl_21)
	end
	tbl_2.PartySliderGroup = var141
	var141 = var119
	local var143 = var141
	if var143 then
		var143 = React_upvr.createElement
		var143 = var143(var10_upvr, {
			LayoutOrder = 3;
			labelText = useLocalization_upvr_result1.volumeLabelText;
			sliderValue = any_useState_result1_2;
			onValueChanged = function(arg1_7) -- Line 286, Named "onValueChanged"
				--[[ Upvalues[2]:
					[1]: GameSettings_upvr (copied, readonly)
					[2]: any_useState_result2_upvr_3 (readonly)
				]]
				GameSettings_upvr.MasterVolume = arg1_7
				any_useState_result2_upvr_3(arg1_7)
			end;
		})
	end
	tbl_2.ExperienceSliderGroup = var143
	module.VolumeSection = React_upvr.createElement(Foundation_upvr.View, {
		Size = UDim2.new(1, 0, 0, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		padding = Vector2.new(useTokens_upvr_result1.Padding.Large, 0);
		layout = {
			FillDirection = Enum.FillDirection.Vertical;
			SortOrder = Enum.SortOrder.LayoutOrder;
		};
		LayoutOrder = 1;
	}, tbl_2)
	local var145 = var121
	if var145 then
		var145 = React_upvr.createElement
		var145 = var145(Foundation_upvr.View, {
			Size = UDim2.new(1, 0, 0, 0);
			AutomaticSize = Enum.AutomaticSize.Y;
			LayoutOrder = 2;
			padding = Vector2.new(0, useTokens_upvr_result1.Padding.Small);
		}, {
			Divider = React_upvr.createElement(Foundation_upvr.View, {
				Size = UDim2.new(1, 0, 0, 1);
				backgroundStyle = useTokens_upvr_result1.Color.Stroke.Default;
			});
		})
	end
	module.Divider = var145
	var145 = var121
	local var149 = var145
	if var149 then
		var149 = React_upvr.createElement
		var149 = var149(Foundation_upvr.View, {
			Size = UDim2.new(1, 0, 0, 0);
			AutomaticSize = Enum.AutomaticSize.Y;
			layout = {
				FillDirection = Enum.FillDirection.Vertical;
				SortOrder = Enum.SortOrder.LayoutOrder;
			};
			LayoutOrder = 3;
		}, {
			VoiceChatLabel = React_upvr.createElement(Foundation_upvr.Text, {
				AutomaticSize = Enum.AutomaticSize.XY;
				fontStyle = useTokens_upvr_result1.Typography.TitleSmall;
				textStyle = useTokens_upvr_result1.Color.Content.Muted;
				TextTruncate = Enum.TextTruncate.AtEnd;
				TextWrapped = false;
				TextXAlignment = Enum.TextXAlignment.Left;
				LayoutOrder = 1;
				padding = Vector2.new(useTokens_upvr_result1.Padding.Large, useTokens_upvr_result1.Padding.XSmall);
				Text = useLocalization_upvr_result1.voiceChatsLabelText;
			});
			PartySelector = React_upvr.createElement(var21_upvr, {
				icon = Images_upvr["icons/menu/platformChatOff"];
				LayoutOrder = 2;
				labelText = React_upvr.useContext(SquadExternalContractContext_upvr).useParentChannelTitleSelector(useCurrentSquadParentChannelId_upvr() or "") or "";
				isSelected = var43_result1_upvr_2;
				onActivated = React_upvr.useCallback(function() -- Line 229
					--[[ Upvalues[2]:
						[1]: var43_result1_upvr_2 (readonly)
						[2]: any_useCallback_result1_upvr_2 (readonly)
					]]
					if not var43_result1_upvr_2 then
						any_useCallback_result1_upvr_2()
					end
				end, {var43_result1_upvr_2, any_useCallback_result1_upvr_2});
			});
			ExperienceSelector = React_upvr.createElement(var21_upvr, {
				icon = Images_upvr["icons/menu/publicChatOff"];
				LayoutOrder = 3;
				labelText = React_upvr.useMemo(function() -- Line 193
					--[[ Upvalues[2]:
						[1]: useSelector_upvr_result1_upvr_2 (readonly)
						[2]: any_useMemo_result1_upvr_2 (readonly)
					]]
					if useSelector_upvr_result1_upvr_2 and any_useMemo_result1_upvr_2 then
						return useSelector_upvr_result1_upvr_2.lastLocation
					end
					return nil
				end, dependencyArray_upvr(useSelector_upvr_result1_upvr_2, any_useMemo_result1_upvr_2)) or "";
				isSelected = not var43_result1_upvr_2;
				onActivated = React_upvr.useCallback(function() -- Line 235
					--[[ Upvalues[2]:
						[1]: var43_result1_upvr_2 (readonly)
						[2]: any_useCallback_result1_upvr_2 (readonly)
					]]
					if var43_result1_upvr_2 then
						any_useCallback_result1_upvr_2()
					end
				end, {var43_result1_upvr_2, any_useCallback_result1_upvr_2});
			});
		})
	end
	module.VoiceChatSection = var149
	return React_upvr.createElement(Foundation_upvr.View, {
		Size = UDim2.new(1, 0, 0, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		padding = Vector2.new(0, useTokens_upvr_result1.Padding.Small);
		cornerRadius = UDim.new(0, useTokens_upvr_result1.Radius.Medium);
		backgroundStyle = useTokens_upvr_result1.Color.Surface.Surface_300;
		layout = {
			FillDirection = Enum.FillDirection.Vertical;
			SortOrder = Enum.SortOrder.LayoutOrder;
		};
	}, module)
end