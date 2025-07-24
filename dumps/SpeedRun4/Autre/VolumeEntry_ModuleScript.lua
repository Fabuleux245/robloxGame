-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:30
-- Luau version 6, Types version 3
-- Time taken: 0.001761 seconds

local CoreGui = game:GetService("CoreGui")
local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local UserGameSettings_upvr = UserSettings():GetService("UserGameSettings")
local Parent = script.Parent.Parent.Parent
if CoreGui.RobloxGui:FindFirstChild("Sounds") == nil then
	local Folder = Instance.new("Folder")
	Folder.Name = "Sounds"
	Folder.Parent = CoreGui.RobloxGui
end
local Sound_upvr = Instance.new("Sound", CoreGui.RobloxGui.Sounds)
Sound_upvr.Name = "VolumeChangeSound"
Sound_upvr.Volume = 1
Sound_upvr.SoundId = "rbxasset://sounds/uuhhh.mp3"
local any_extend_result1 = Roact_upvr.PureComponent:extend("VolumeEntry")
any_extend_result1.validateProps = t.strictInterface({
	LayoutOrder = t.integer;
	canCaptureFocus = t.optional(t.boolean);
	isMenuOpen = t.optional(t.boolean);
	buttonRef = t.optional(t.table);
})
function any_extend_result1.init(arg1) -- Line 39
	--[[ Upvalues[1]:
		[1]: UserGameSettings_upvr (readonly)
	]]
	function arg1.onVolumeChanged() -- Line 40
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: UserGameSettings_upvr (copied, readonly)
		]]
		arg1:setState({
			volume = math.floor(UserGameSettings_upvr.MasterVolume * 10 + 0.5);
		})
	end
	arg1.onVolumeChanged()
end
local SliderEntry_upvr = require(script.Parent.SliderEntry)
local SendAnalytics_upvr = require(Parent.Utility.SendAnalytics)
local Constants_upvr = require(Parent.Resources.Constants)
local ExternalEventConnection_upvr = require(Parent.Utility.ExternalEventConnection)
local MasterVolume_changed_signal_upvr = UserGameSettings_upvr:GetPropertyChangedSignal("MasterVolume")
function any_extend_result1.render(arg1) -- Line 49
	--[[ Upvalues[8]:
		[1]: Roact_upvr (readonly)
		[2]: SliderEntry_upvr (readonly)
		[3]: UserGameSettings_upvr (readonly)
		[4]: Sound_upvr (readonly)
		[5]: SendAnalytics_upvr (readonly)
		[6]: Constants_upvr (readonly)
		[7]: ExternalEventConnection_upvr (readonly)
		[8]: MasterVolume_changed_signal_upvr (readonly)
	]]
	return Roact_upvr.createFragment({
		VolumeSlider = Roact_upvr.createElement(SliderEntry_upvr, {
			labelKey = "CoreScripts.InGameMenu.GameSettings.Volume";
			LayoutOrder = arg1.props.LayoutOrder;
			min = 0;
			max = 10;
			stepInterval = 1;
			value = arg1.state.volume;
			valueChanged = function(arg1_2) -- Line 58, Named "valueChanged"
				--[[ Upvalues[4]:
					[1]: UserGameSettings_upvr (copied, readonly)
					[2]: Sound_upvr (copied, readonly)
					[3]: SendAnalytics_upvr (copied, readonly)
					[4]: Constants_upvr (copied, readonly)
				]]
				UserGameSettings_upvr.MasterVolume = arg1_2 / 10
				Sound_upvr:Play()
				SendAnalytics_upvr(Constants_upvr.AnalyticsSettingsChangeName, nil, {}, true)
			end;
			canCaptureFocus = arg1.props.canCaptureFocus;
			isMenuOpen = arg1.props.isMenuOpen;
			buttonRef = arg1.props.buttonRef;
		});
		VolumeListener = Roact_upvr.createElement(ExternalEventConnection_upvr, {
			event = MasterVolume_changed_signal_upvr;
			callback = arg1.onVolumeChanged;
		});
	})
end
return any_extend_result1