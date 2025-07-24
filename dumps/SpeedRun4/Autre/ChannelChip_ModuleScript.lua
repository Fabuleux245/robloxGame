-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:03:10
-- Luau version 6, Types version 3
-- Time taken: 0.001215 seconds

local ExpChat = script:FindFirstAncestor("ExpChat")
local React_upvr = require(ExpChat.Parent.React)
local Config_upvr = require(ExpChat.Config)
return function(arg1) -- Line 7
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: Config_upvr (readonly)
	]]
	local module = {
		AutomaticSize = Enum.AutomaticSize.XY;
		TextColor3 = Config_upvr.ChatInputBarTextColor3;
		BackgroundTransparency = 1;
		Font = Config_upvr.ChatInputBarFont;
		Text = arg1.targetTextChannelDisplayName or "";
		TextSize = Config_upvr.ChatInputBarTextSize;
		TextWrapped = true;
		TextTransparency = arg1.transparency or 1;
		Size = UDim2.fromScale(0, 1);
	}
	local var6 = not arg1.isChannelBarVisible
	if var6 then
		if arg1.targetTextChannelDisplayName == "" then
			var6 = false
		else
			var6 = true
		end
	end
	module.Visible = var6
	module[React_upvr.Change.AbsoluteSize] = arg1.onAbsoluteSizeChanged
	module[React_upvr.Event.Activated] = arg1.onChannelChipActivated
	return React_upvr.createElement("TextButton", module)
end