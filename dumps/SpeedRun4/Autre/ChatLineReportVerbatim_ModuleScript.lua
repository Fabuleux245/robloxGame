-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:23:20
-- Luau version 6, Types version 3
-- Time taken: 0.001813 seconds

local ChatLineReporting = script:FindFirstAncestor("ChatLineReporting")
local Parent = ChatLineReporting.Parent
local Foundation = require(Parent.Foundation)
local React_upvr = require(Parent.React)
local getMessageText_upvr = require(ChatLineReporting.Common.getMessageText)
local View_upvr = Foundation.View
local Constants_upvr = require(ChatLineReporting.Common.Constants)
local Text_upvr = Foundation.Text
return function(arg1) -- Line 36, Named "ChatLineReportVerbatim"
	--[[ Upvalues[5]:
		[1]: React_upvr (readonly)
		[2]: getMessageText_upvr (readonly)
		[3]: View_upvr (readonly)
		[4]: Constants_upvr (readonly)
		[5]: Text_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2 = React_upvr.useState(nil)
	local var11 = any_useState_result1 or arg1.selectedMessage.prefixText or ""
	local userId = arg1.selectedMessage.userId
	if userId and userId.data then
		local names = userId.data.userProfiles[1].names
		any_useState_result2(string.gsub(var11, names.displayName, names.combinedName))
	end
	return React_upvr.createElement(View_upvr, {
		Size = UDim2.new(1, 0, 0, Constants_upvr.SelectableChatLineHeight);
		tag = "radius-medium padding-left-medium padding-right-medium stroke-neutral stroke-standard";
	}, {
		messageFrame = React_upvr.createElement(View_upvr, {
			tag = "auto-xy position-center-left anchor-center-left";
		}, {
			messageText = React_upvr.createElement(Text_upvr, {
				Text = `{var11} {getMessageText_upvr(arg1.selectedMessage.useTranslation, arg1.selectedMessage.translation, arg1.selectedMessage.text)}`;
				TextTruncate = Enum.TextTruncate.SplitWord;
				TextScaled = false;
				TextXAlignment = Enum.TextXAlignment.Left;
				RichText = true;
				tag = "auto-xy content-muted";
			});
		});
	})
end