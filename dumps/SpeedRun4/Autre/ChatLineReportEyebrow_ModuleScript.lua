-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:23:16
-- Luau version 6, Types version 3
-- Time taken: 0.001775 seconds

local ChatLineReporting = script:FindFirstAncestor("ChatLineReporting")
local Parent = ChatLineReporting.Parent
local Constants_upvr = require(ChatLineReporting.Common.Constants)
local Foundation = require(Parent.Foundation)
local function _(arg1, arg2) -- Line 19, Named "getEyebrowText"
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	if string.match(arg1, Constants_upvr.ChannelTypes.Whisper) then
		return arg2.localizedText.ChatEyebrowSentPrivately
	end
	return arg2.localizedText.ChatEyebrowSentInAnotherChat
end
local React_upvr = require(Parent.React)
local View_upvr = Foundation.View
local InputLabel_upvr = Foundation.InputLabel
local InputLabelSize_upvr = Foundation.Enums.InputLabelSize
return function(arg1) -- Line 27, Named "ChatLineReportEyebrow"
	--[[ Upvalues[5]:
		[1]: Constants_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: View_upvr (readonly)
		[4]: InputLabel_upvr (readonly)
		[5]: InputLabelSize_upvr (readonly)
	]]
	local var9
	if arg1.message.textChannel.Name ~= Constants_upvr.ChannelTypes.General then
		local module = {}
		local tbl = {}
		if string.match(arg1.message.textChannel.Name, Constants_upvr.ChannelTypes.Whisper) then
			var9 = arg1.localizedText.ChatEyebrowSentPrivately
		else
			var9 = arg1.localizedText.ChatEyebrowSentInAnotherChat
		end
		tbl.Text = var9
		var9 = true
		tbl.RichText = var9
		var9 = InputLabelSize_upvr.Small
		tbl.size = var9
		module.eyebrowLabel = React_upvr.createElement(InputLabel_upvr, tbl)
		return React_upvr.createElement(View_upvr, {
			tag = "auto-xy bg-shift-200 padding-left-xsmall padding-right-xsmall radius-small";
			LayoutOrder = 1;
		}, module)
	end
	return nil
end