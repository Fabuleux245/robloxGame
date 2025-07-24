-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:25
-- Luau version 6, Types version 3
-- Time taken: 0.003823 seconds

local CorePackages = game:GetService("CorePackages")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local Parent = script.Parent.Parent.Parent
local default_upvr = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local any_new_result1_upvr = require(CorePackages.Workspace.Packages.CoreScriptsInitializer).CoreLogger:new(script.Name)
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("DeviceSelectionEntry")
local GetFFlagVoiceChatUILogging_upvr = require(RobloxGui.Modules.Flags.GetFFlagVoiceChatUILogging)
any_extend_result1_upvr.DeviceType = {
	Input = "Input";
	Output = "Output";
}
any_extend_result1_upvr.validateProps = t.strictInterface({
	LayoutOrder = t.integer;
	deviceType = t.string;
	isMenuOpen = t.boolean;
	canOpen = t.optional(t.boolean);
	canCaptureFocus = t.optional(t.boolean);
})
any_extend_result1_upvr.defaultProps = {
	canOpen = true;
}
local SoundService_upvr = game:GetService("SoundService")
function any_extend_result1_upvr.init(arg1) -- Line 41
	--[[ Upvalues[4]:
		[1]: default_upvr (readonly)
		[2]: SoundService_upvr (readonly)
		[3]: GetFFlagVoiceChatUILogging_upvr (readonly)
		[4]: any_new_result1_upvr (readonly)
	]]
	arg1:setState({
		deviceNames = {};
		deviceGuids = {};
		selectedIndex = 0;
		ready = false;
	})
	default_upvr:asyncInit():andThen(function() -- Line 50
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: default_upvr (copied, readonly)
			[3]: SoundService_upvr (copied, readonly)
		]]
		arg1:setState({
			ready = true;
		})
		default_upvr:SetupParticipantListeners()
		if SoundService_upvr.DeviceListChanged then
			SoundService_upvr.DeviceListChanged:Connect(function() -- Line 56
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				if arg1.props.isMenuOpen then
					arg1:pollDevices(arg1.props.deviceType)
				end
			end)
		end
	end):catch(function() -- Line 63
		--[[ Upvalues[2]:
			[1]: GetFFlagVoiceChatUILogging_upvr (copied, readonly)
			[2]: any_new_result1_upvr (copied, readonly)
		]]
		if GetFFlagVoiceChatUILogging_upvr() then
			any_new_result1_upvr:warning("Failed to init VoiceChatServiceManager")
		end
	end)
end
local ThemedTextLabel_upvr = require(Parent.Components.ThemedTextLabel)
local DropDownSelection_upvr = require(Parent.Components.DropDownSelection)
local GetFFlagTruncateDeviceSelection_upvr = require(Parent.Flags.GetFFlagTruncateDeviceSelection)
function any_extend_result1_upvr.render(arg1) -- Line 70
	--[[ Upvalues[6]:
		[1]: Roact_upvr (readonly)
		[2]: ThemedTextLabel_upvr (readonly)
		[3]: any_extend_result1_upvr (readonly)
		[4]: DropDownSelection_upvr (readonly)
		[5]: GetFFlagTruncateDeviceSelection_upvr (readonly)
		[6]: default_upvr (readonly)
	]]
	if not arg1.state.ready or arg1.state.deviceNames == nil or #arg1.state.deviceNames == 0 then
		return nil
	end
	local module = {
		Padding = Roact_upvr.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, 24);
			PaddingRight = UDim.new(0, 24);
		});
	}
	local tbl_2 = {
		fontKey = "Body";
		themeKey = "TextDefault";
		Size = UDim2.new(1, 0, 0, 56);
		Position = UDim2.new(0, 0, 0, 0);
	}
	local vector2 = Vector2.new(0, 0)
	tbl_2.AnchorPoint = vector2
	if arg1.props.deviceType == any_extend_result1_upvr.DeviceType.Input then
		vector2 = "Input Device"
	else
		vector2 = "Output Device"
	end
	tbl_2.Text = vector2
	tbl_2.TextTruncate = Enum.TextTruncate.AtEnd
	tbl_2.TextXAlignment = Enum.TextXAlignment.Left
	module.InputLabel = Roact_upvr.createElement(ThemedTextLabel_upvr, tbl_2)
	module.Dropdown = Roact_upvr.createElement(DropDownSelection_upvr, {
		Size = UDim2.new(1, 0, 0, 44);
		Position = UDim2.new(0, 0, 0, 56);
		truncate = GetFFlagTruncateDeviceSelection_upvr();
		selections = arg1.state.deviceNames;
		selectedIndex = arg1.state.selectedIndex;
		placeHolderText = "";
		enabled = true;
		localize = false;
		selectionParentName = arg1.props.deviceType.."DeviceSelectionEntryDropdown";
		canOpen = arg1.props.canOpen;
		canCaptureFocus = arg1.props.canCaptureFocus;
		selectionChanged = function(arg1_2) -- Line 107, Named "selectionChanged"
			--[[ Upvalues[2]:
				[1]: default_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			default_upvr:SwitchDevice(arg1.props.deviceType, arg1.state.deviceNames[arg1_2], arg1.state.deviceGuids[arg1_2])
			local tbl = {}
			tbl.selectedIndex = arg1_2
			arg1:setState(tbl)
		end;
	})
	return Roact_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, 120);
		BackgroundTransparency = 1;
		LayoutOrder = arg1.props.LayoutOrder;
		ZIndex = 2;
	}, module)
end
function any_extend_result1_upvr.pollDevices(arg1, arg2) -- Line 122
	--[[ Upvalues[3]:
		[1]: default_upvr (readonly)
		[2]: GetFFlagVoiceChatUILogging_upvr (readonly)
		[3]: any_new_result1_upvr (readonly)
	]]
	spawn(function() -- Line 123
		--[[ Upvalues[5]:
			[1]: default_upvr (copied, readonly)
			[2]: arg2 (readonly)
			[3]: arg1 (readonly)
			[4]: GetFFlagVoiceChatUILogging_upvr (copied, readonly)
			[5]: any_new_result1_upvr (copied, readonly)
		]]
		local any_GetDevices_result1, any_GetDevices_result2, any_GetDevices_result3, any_GetDevices_result4 = default_upvr:GetDevices(arg2)
		if any_GetDevices_result1 then
			arg1:setState({
				deviceNames = any_GetDevices_result2;
				deviceGuids = any_GetDevices_result3;
				selectedIndex = any_GetDevices_result4;
			})
		else
			if GetFFlagVoiceChatUILogging_upvr() then
				any_new_result1_upvr:warning("Errors in get {} Device info", arg2)
			end
			arg1:setState({
				deviceNames = {};
				deviceGuids = {};
				selectedIndex = 0;
			})
		end
	end)
end
function any_extend_result1_upvr.willUpdate(arg1, arg2) -- Line 144
	if not arg1.props.isMenuOpen and arg2.isMenuOpen then
		arg1:pollDevices(arg2.deviceType)
	end
end
return any_extend_result1_upvr