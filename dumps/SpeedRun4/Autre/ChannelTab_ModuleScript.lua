-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:03:06
-- Luau version 6, Types version 3
-- Time taken: 0.006998 seconds

local ExpChat = script:FindFirstAncestor("ExpChat")
local Parent = ExpChat.Parent
local tbl_2_upvr = {
	channelName = "";
	isDividerVisible = false;
	isTabCollapsed = false;
	isTabSelected = false;
	onTabSelected = nil;
	setTransparency = nil;
}
local Dictionary_upvr = require(Parent.llama).Dictionary
local React_upvr = require(Parent.React)
local Interactable_upvr = require(Parent.UIBlox).Core.Control.Interactable
local Config_upvr = require(ExpChat.Config)
local Color3_fromRGB_result1_upvr = Color3.fromRGB(255, 255, 255)
local Players_upvr = game:GetService("Players")
local getOtherDisplayNameInWhisperChannel_upvr = require(ExpChat.getOtherDisplayNameInWhisperChannel)
return require(ExpChat.GameLocalization).connect(function(arg1) -- Line 125
	--[[ Upvalues[2]:
		[1]: Players_upvr (readonly)
		[2]: getOtherDisplayNameInWhisperChannel_upvr (readonly)
	]]
	local channelName = arg1.channelName
	if string.find(channelName, "RBXGeneral") then
		channelName = "General"
	elseif string.find(channelName, "RBXSystem") then
		channelName = "System"
	elseif string.find(channelName, "^RBXTeam") then
		channelName = "Team"
	elseif string.find(channelName, "^RBXWhisper") and arg1.textChannel and Players_upvr.LocalPlayer and getOtherDisplayNameInWhisperChannel_upvr(arg1.textChannel, Players_upvr.LocalPlayer) then
		channelName = getOtherDisplayNameInWhisperChannel_upvr(arg1.textChannel, Players_upvr.LocalPlayer)
	end
	return {
		channelName = channelName;
	}
end)(function(arg1) -- Line 48, Named "ChannelTab"
	--[[ Upvalues[6]:
		[1]: Dictionary_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: Interactable_upvr (readonly)
		[5]: Config_upvr (readonly)
		[6]: Color3_fromRGB_result1_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_join_result1_upvr = Dictionary_upvr.join(tbl_2_upvr, arg1)
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(any_join_result1_upvr.channelTabsSettings.BackgroundColor3)
	local module = {
		Size = UDim2.fromScale(1, 1);
	}
	local onStateChanged
	local function INLINED() -- Internal function, doesn't exist in bytecode
		onStateChanged = any_join_result1_upvr.setTransparency(any_join_result1_upvr.channelTabsSettings.BackgroundTransparency)
		return onStateChanged
	end
	if not any_join_result1_upvr.isTabCollapsed or not INLINED() then
		onStateChanged = 1
	end
	module.BackgroundTransparency = onStateChanged
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		onStateChanged = any_useState_result1
		return onStateChanged
	end
	if not any_join_result1_upvr.isTabCollapsed or not INLINED_2() then
		onStateChanged = any_join_result1_upvr.channelTabsSettings.BackgroundColor3
	end
	module.BackgroundColor3 = onStateChanged
	onStateChanged = 0
	module.BorderSizePixel = onStateChanged
	function onStateChanged() -- Line 60
	end
	module.onStateChanged = onStateChanged
	onStateChanged = React_upvr.Event.Activated
	module[onStateChanged] = any_join_result1_upvr.onTabSelected
	onStateChanged = React_upvr.Event.MouseEnter
	module[onStateChanged] = function() -- Line 62
		--[[ Upvalues[2]:
			[1]: any_join_result1_upvr (readonly)
			[2]: any_useState_result2_upvr (readonly)
		]]
		if any_join_result1_upvr.isTabCollapsed then
			any_useState_result2_upvr(any_join_result1_upvr.channelTabsSettings.HoverBackgroundColor3)
		end
	end
	onStateChanged = React_upvr.Event.MouseLeave
	module[onStateChanged] = function() -- Line 67
		--[[ Upvalues[2]:
			[1]: any_join_result1_upvr (readonly)
			[2]: any_useState_result2_upvr (readonly)
		]]
		if any_join_result1_upvr.isTabCollapsed then
			any_useState_result2_upvr(any_join_result1_upvr.channelTabsSettings.BackgroundColor3)
		end
	end
	onStateChanged = {}
	local tbl = {
		Size = UDim2.fromScale(1, 1);
		BackgroundTransparency = 1;
		Text = any_join_result1_upvr.channelName;
		FontFace = any_join_result1_upvr.channelTabsSettings.FontFace;
		TextSize = any_join_result1_upvr.channelTabsSettings.TextSize;
	}
	if not any_join_result1_upvr.isTabSelected or not any_join_result1_upvr.channelTabsSettings.SelectedTabTextColor3 then
	end
	tbl.TextColor3 = any_join_result1_upvr.channelTabsSettings.TextColor3
	tbl.TextTransparency = any_join_result1_upvr.setTransparency(0)
	tbl.TextStrokeColor3 = any_join_result1_upvr.channelTabsSettings.TextStrokeColor3
	tbl.TextStrokeTransparency = any_join_result1_upvr.setTransparency(any_join_result1_upvr.channelTabsSettings.TextStrokeTransparency)
	if not any_join_result1_upvr.isTabCollapsed or not Enum.TextXAlignment.Left then
	end
	tbl.TextXAlignment = Enum.TextXAlignment.Center
	tbl.TextYAlignment = Enum.TextYAlignment.Center
	tbl.TextTruncate = Enum.TextTruncate.AtEnd
	tbl.BorderSizePixel = 0
	local tbl_3 = {}
	local tbl_5 = {}
	if any_join_result1_upvr.isTabCollapsed then
	else
	end
	tbl_5.PaddingLeft = UDim.new(0, 20 + 0)
	tbl_5.PaddingRight = UDim.new(0, 20)
	tbl_3.UIPadding = React_upvr.createElement("UIPadding", tbl_5)
	onStateChanged.TextLabel = React_upvr.createElement("TextLabel", tbl, tbl_3)
	if any_join_result1_upvr.hasUnreadMessages then
	end
	onStateChanged.UnreadDot = React_upvr.createElement("Frame", {
		Size = UDim2.new(0, 8, 0, 8);
		Position = UDim2.new(0, 18, 0.5, 0);
		AnchorPoint = Vector2.new(1, 0.5);
		BackgroundColor3 = Config_upvr.ChannelTabsSettings.UnreadDotColor3;
		BackgroundTransparency = any_join_result1_upvr.setTransparency(0);
		BorderSizePixel = 0;
	}, {
		UICorner = React_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(1, 0);
		});
	})
	local isTabSelected = any_join_result1_upvr.isTabSelected
	if isTabSelected then
		isTabSelected = React_upvr.createElement
		isTabSelected = isTabSelected("Frame", {
			Size = UDim2.new(1, 0, 0, 4);
			Position = UDim2.new(0, 0, 1, -4);
			BackgroundColor3 = Color3_fromRGB_result1_upvr;
			BackgroundTransparency = any_join_result1_upvr.setTransparency(0);
			BorderSizePixel = 0;
		})
	end
	onStateChanged.Highlight = isTabSelected
	if any_join_result1_upvr.isDividerVisible then
		local tbl_4 = {}
		if not any_join_result1_upvr.isTabCollapsed or not Vector2.new(0, 1) then
		end
		tbl_4.AnchorPoint = Vector2.new(0, 0.5)
		if not any_join_result1_upvr.isTabCollapsed or not UDim2.fromScale(0, 1) then
		end
		tbl_4.Position = UDim2.fromScale(1, 0.5)
		if not any_join_result1_upvr.isTabCollapsed or not UDim2.new(1, 0, 0, Config_upvr.ChannelTabsSettings.DividerSize) then
		end
		tbl_4.Size = UDim2.new(0, Config_upvr.ChannelTabsSettings.DividerSize, 0.8, 0)
		tbl_4.BackgroundTransparency = any_join_result1_upvr.setTransparency(Config_upvr.ChannelTabsSettings.DividerTransparency)
		tbl_4.BackgroundColor3 = Config_upvr.ChannelTabsSettings.DividerColor3
		tbl_4.BorderSizePixel = 0
	end
	onStateChanged.Divider = React_upvr.createElement("Frame", tbl_4)
	return React_upvr.createElement(Interactable_upvr, module, onStateChanged)
end)