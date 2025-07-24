-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:26
-- Luau version 6, Types version 3
-- Time taken: 0.003406 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local UserGameSettings_upvr = UserSettings():GetService("UserGameSettings")
local Rendering_upvr = settings().Rendering
local Parent = script.Parent.Parent.Parent
local function _(arg1, arg2, arg3, arg4, arg5) -- Line 30, Named "mapInteger"
	return math.clamp(math.floor(arg4 + (arg1 - arg2) * (arg5 - arg4) / (arg3 - arg2)), arg4, arg5)
end
local any_extend_result1 = Roact_upvr.PureComponent:extend("GraphicsQualityEntry")
any_extend_result1.validateProps = t.strictInterface({
	LayoutOrder = t.integer;
	canCaptureFocus = t.optional(t.boolean);
	isMenuOpen = t.optional(t.boolean);
})
function any_extend_result1.init(arg1) -- Line 41
	--[[ Upvalues[1]:
		[1]: UserGameSettings_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var9
	if UserGameSettings_upvr.SavedQualityLevel ~= Enum.SavedQualitySetting.Automatic then
		var9 = false
	else
		var9 = true
	end
	local tbl = {}
	if var9 then
	else
	end
	tbl.quality = UserGameSettings_upvr.SavedQualityLevel.Value
	tbl.automatic = var9
	arg1:setState(tbl)
	function arg1.onQualityChanged() -- Line 48
		--[[ Upvalues[2]:
			[1]: UserGameSettings_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		local var12 = UserGameSettings_upvr
		local SavedQualityLevel = var12.SavedQualityLevel
		local var14
		if SavedQualityLevel ~= Enum.SavedQualitySetting.Automatic then
			var12 = false
		else
			var12 = true
		end
		local tbl_2 = {}
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var14 = SavedQualityLevel.Value
			return var14
		end
		if var12 or not INLINED() then
			var14 = nil
		end
		tbl_2.quality = var14
		if SavedQualityLevel ~= Enum.SavedQualitySetting.Automatic then
			var14 = false
		else
			var14 = true
		end
		tbl_2.automatic = var14
		arg1:setState(tbl_2)
	end
	if var9 then
		arg1:setAutomaticQualityLevel()
	else
		arg1:setManualQualityLevel(arg1.state.quality)
	end
end
function any_extend_result1.setAutomaticQualityLevel(arg1) -- Line 65
	--[[ Upvalues[2]:
		[1]: UserGameSettings_upvr (readonly)
		[2]: Rendering_upvr (readonly)
	]]
	UserGameSettings_upvr.SavedQualityLevel = Enum.SavedQualitySetting.Automatic
	Rendering_upvr.QualityLevel = 0
end
local var16_upvr = #Enum.SavedQualitySetting:GetEnumItems() - 1
function any_extend_result1.setManualQualityLevel(arg1, arg2) -- Line 70
	--[[ Upvalues[3]:
		[1]: var16_upvr (readonly)
		[2]: Rendering_upvr (readonly)
		[3]: UserGameSettings_upvr (readonly)
	]]
	local var17 = Rendering_upvr:GetMaxQualityLevel() - 1
	UserGameSettings_upvr.SavedQualityLevel = arg2
	Rendering_upvr.QualityLevel = math.clamp(math.floor(1 + (arg2 - 1) * (var17 - 1) / (var16_upvr - 1)), 1, var17)
	return nil
end
local ToggleEntry_upvr = require(script.Parent.ToggleEntry)
local SendAnalytics_upvr = require(Parent.Utility.SendAnalytics)
local Constants_upvr = require(Parent.Resources.Constants)
local SliderEntry_upvr = require(script.Parent.SliderEntry)
local ExternalEventConnection_upvr = require(Parent.Utility.ExternalEventConnection)
local SavedQualityLevel_changed_signal_upvr = UserGameSettings_upvr:GetPropertyChangedSignal("SavedQualityLevel")
function any_extend_result1.render(arg1) -- Line 85
	--[[ Upvalues[7]:
		[1]: Roact_upvr (readonly)
		[2]: ToggleEntry_upvr (readonly)
		[3]: SendAnalytics_upvr (readonly)
		[4]: Constants_upvr (readonly)
		[5]: SliderEntry_upvr (readonly)
		[6]: ExternalEventConnection_upvr (readonly)
		[7]: SavedQualityLevel_changed_signal_upvr (readonly)
	]]
	return Roact_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 0, 156);
		LayoutOrder = arg1.props.LayoutOrder;
	}, {
		Layout = Roact_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
		AutoToggle = Roact_upvr.createElement(ToggleEntry_upvr, {
			LayoutOrder = 1;
			labelKey = "CoreScripts.InGameMenu.GameSettings.AutoGraphicsQuality";
			checked = arg1.state.automatic;
			onToggled = function() -- Line 98, Named "onToggled"
				--[[ Upvalues[3]:
					[1]: arg1 (readonly)
					[2]: SendAnalytics_upvr (copied, readonly)
					[3]: Constants_upvr (copied, readonly)
				]]
				if arg1.state.automatic then
					arg1:setManualQualityLevel(arg1.state.quality)
				else
					arg1:setAutomaticQualityLevel()
				end
				SendAnalytics_upvr(Constants_upvr.AnalyticsSettingsChangeName, nil, {}, true)
			end;
		});
		Slider = Roact_upvr.createElement(SliderEntry_upvr, {
			LayoutOrder = 2;
			labelKey = "CoreScripts.InGameMenu.GameSettings.ManualGraphicsQuality";
			min = 1;
			max = 10;
			stepInterval = 1;
			value = arg1.state.quality;
			disabled = arg1.state.automatic;
			valueChanged = function(arg1_2) -- Line 115, Named "valueChanged"
				--[[ Upvalues[3]:
					[1]: arg1 (readonly)
					[2]: SendAnalytics_upvr (copied, readonly)
					[3]: Constants_upvr (copied, readonly)
				]]
				arg1:setManualQualityLevel(arg1_2)
				SendAnalytics_upvr(Constants_upvr.AnalyticsSettingsChangeName, nil, {}, true)
			end;
			canCaptureFocus = arg1.props.canCaptureFocus;
			isMenuOpen = arg1.props.isMenuOpen;
		});
		QualityListener = Roact_upvr.createElement(ExternalEventConnection_upvr, {
			event = SavedQualityLevel_changed_signal_upvr;
			callback = arg1.onQualityChanged;
		});
	})
end
return any_extend_result1