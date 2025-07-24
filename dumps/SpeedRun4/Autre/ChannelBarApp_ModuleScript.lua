-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:03:04
-- Luau version 6, Types version 3
-- Time taken: 0.002822 seconds

local ExpChat = script:FindFirstAncestor("ExpChat")
local Parent = ExpChat.Parent
local getFFlagExpChatEnableChannelTabsUI_upvr = require(ExpChat.Flags.getFFlagExpChatEnableChannelTabsUI)
local any_extend_result1 = require(Parent.Roact).Component:extend("ChannelBarApp")
local React_upvr = require(Parent.React)
local ChannelBar_upvr = require(script.Parent.UI.ChannelBar)
function any_extend_result1.render(arg1) -- Line 16
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: ChannelBar_upvr (readonly)
	]]
	return React_upvr.createElement(ChannelBar_upvr, {
		channelTabsSettings = arg1.props.channelTabsSettings;
		chatWindowSettings = arg1.props.chatWindowSettings;
		allChannelTabs = arg1.props.allChannelTabs;
		allTextChannels = arg1.props.allTextChannels;
		selectedTabName = arg1.props.selectedTabName;
		onTabSelected = arg1.props.onTabSelected;
		onHovered = arg1.props.onHovered;
		onUnhovered = arg1.props.onUnhovered;
		visible = arg1.props.visible;
		transparencyValue = arg1.props.transparencyValue;
	})
end
local Config_upvr = require(ExpChat.Config)
local TargetTextChannelPropertyChanged_upvr = require(Parent.ExpChatShared).Actions.TargetTextChannelPropertyChanged
return require(Parent.RoactRodux).connect(function(arg1) -- Line 31
	--[[ Upvalues[2]:
		[1]: getFFlagExpChatEnableChannelTabsUI_upvr (readonly)
		[2]: Config_upvr (readonly)
	]]
	local module = {}
	local var11
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var11 = arg1.ChatLayout.ChannelTabsSettings
		return var11
	end
	if not getFFlagExpChatEnableChannelTabsUI_upvr() or not INLINED() then
		var11 = {}
		var11.BackgroundTransparency = Config_upvr.ChannelTabsSettings.BackgroundTransparency
		var11.BackgroundColor3 = Config_upvr.ChannelTabsSettings.BackgroundColor3
		var11.HoverBackgroundColor3 = Config_upvr.ChannelTabsSettings.HoverBackgroundColor3
		var11.FontFace = Config_upvr.ChannelTabsSettings.FontFace
		var11.TextSize = Config_upvr.ChannelTabsSettings.TextSize
		var11.TextColor3 = Config_upvr.ChannelTabsSettings.TextColor3
		var11.SelectedTabTextColor3 = Config_upvr.ChannelTabsSettings.SelectedTabTextColor3
		var11.TextStrokeColor3 = Config_upvr.ChannelTabsSettings.TextStrokeColor3
		var11.TextStrokeTransparency = Config_upvr.ChannelTabsSettings.TextStrokeTransparency
	end
	module.channelTabsSettings = var11
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var11 = arg1.ChannelTabs.allChannelTabs
		return var11
	end
	if not getFFlagExpChatEnableChannelTabsUI_upvr() or not INLINED_2() then
		var11 = {}
	end
	module.allChannelTabs = var11
	local function INLINED_3() -- Internal function, doesn't exist in bytecode
		var11 = arg1.ChannelTabs.selectedTabName
		return var11
	end
	if not getFFlagExpChatEnableChannelTabsUI_upvr() or not INLINED_3() then
		var11 = ""
	end
	module.selectedTabName = var11
	var11 = arg1.TextChannels.allTextChannels
	module.allTextChannels = var11
	return module
end, function(arg1) -- Line 48
	--[[ Upvalues[2]:
		[1]: getFFlagExpChatEnableChannelTabsUI_upvr (readonly)
		[2]: TargetTextChannelPropertyChanged_upvr (readonly)
	]]
	return {
		onTabSelected = function(arg1_2, arg2) -- Line 50, Named "onTabSelected"
			--[[ Upvalues[3]:
				[1]: getFFlagExpChatEnableChannelTabsUI_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: TargetTextChannelPropertyChanged_upvr (copied, readonly)
			]]
			if getFFlagExpChatEnableChannelTabsUI_upvr() then
				arg1(TargetTextChannelPropertyChanged_upvr(arg1_2, arg2))
			end
		end;
	}
end)(any_extend_result1)