-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:23:19
-- Luau version 6, Types version 3
-- Time taken: 0.001716 seconds

local ChatLineReporting = script:FindFirstAncestor("ChatLineReporting")
local Parent = ChatLineReporting.Parent
local Foundation = require(Parent.Foundation)
local React_upvr = require(Parent.React)
local getMessageText_upvr = require(ChatLineReporting.Common.getMessageText)
local View_upvr = Foundation.View
local Constants_upvr = require(ChatLineReporting.Common.Constants)
local ChatLineReportEyebrow_upvr = require(ChatLineReporting.Components.ChatLineReportEyebrow)
local InputLabel_upvr = Foundation.InputLabel
return function(arg1) -- Line 22, Named "ChatLineReportSelectableLine"
	--[[ Upvalues[6]:
		[1]: React_upvr (readonly)
		[2]: getMessageText_upvr (readonly)
		[3]: View_upvr (readonly)
		[4]: Constants_upvr (readonly)
		[5]: ChatLineReportEyebrow_upvr (readonly)
		[6]: InputLabel_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2 = React_upvr.useState(nil)
	local var12 = any_useState_result1 or arg1.message.prefixText or ""
	local userId = arg1.message.userId
	if userId and userId.data then
		local names = userId.data.userProfiles[1].names
		any_useState_result2(string.gsub(var12, names.displayName, names.combinedName))
	end
	return React_upvr.createElement(View_upvr, {
		Size = UDim2.new(0, arg1.scrollViewSizeX - Constants_upvr.SelectableLineScrollbarOffset, 1, 0);
		LayoutOrder = 2;
		tag = "col";
	}, {
		eyebrow = React_upvr.createElement(ChatLineReportEyebrow_upvr, {
			message = arg1.message;
			localizedText = arg1.localizedText;
		});
		
		React_upvr.createElement(InputLabel_upvr, {
			Text = `{var12} {getMessageText_upvr(arg1.message.useTranslation, arg1.message.translation, arg1.message.text)}`;
			RichText = true;
			LayoutOrder = 2;
		})
	})
end