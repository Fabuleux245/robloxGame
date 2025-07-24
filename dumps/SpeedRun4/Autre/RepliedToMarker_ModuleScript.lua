-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:34
-- Luau version 6, Types version 3
-- Time taken: 0.001288 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local React_upvr = require(Parent.React)
local UIBlox = require(Parent.UIBlox)
local tbl_upvr = {
	isIncoming = false;
}
local Cryo_upvr = require(Parent.Cryo)
local useSelectedTheme_upvr = require(Parent.RoactUtils).Hooks.useSelectedTheme
local Constants_upvr = UIBlox.App.Style.Constants
local ColorSystem_upvr = UIBlox.Common.Style.ColorSystem
local ChatBubbleEnum_upvr = require(script.Parent.ChatBubbleEnum)
local FFlagAppChatEnableGroupedMessageBubbles_upvr = require(AppChat.Flags.FFlagAppChatEnableGroupedMessageBubbles)
function RepliedToMarker(arg1) -- Line 37
	--[[ Upvalues[8]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useSelectedTheme_upvr (readonly)
		[4]: Constants_upvr (readonly)
		[5]: ColorSystem_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: ChatBubbleEnum_upvr (readonly)
		[8]: FFlagAppChatEnableGroupedMessageBubbles_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 31 start (CF ANALYSIS FAILED)
	local any_union_result1 = Cryo_upvr.Dictionary.union(tbl_upvr, arg1)
	local var13
	if useSelectedTheme_upvr() == string.lower(Constants_upvr.ThemeName.Light) then
		var13 = ColorSystem_upvr.Gray[40]
	else
		var13 = ColorSystem_upvr.Gray[80]
	end
	local tbl = {
		Size = UDim2.new(0, ChatBubbleEnum_upvr.REPLIED_TO_MARKER_WIDTH, 1, 0);
		BackgroundColor3 = var13;
	}
	local var15 = 0
	tbl.BorderSizePixel = var15
	if any_union_result1.isIncoming then
		var15 = Vector2.new(0, 0)
	else
		var15 = Vector2.new(1, 0)
	end
	tbl.AnchorPoint = var15
	if FFlagAppChatEnableGroupedMessageBubbles_upvr then
		-- KONSTANTWARNING: GOTO [94] #72
	end
	-- KONSTANTERROR: [0] 1. Error Block 31 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [71] 54. Error Block 26 start (CF ANALYSIS FAILED)
	if any_union_result1.isIncoming then
		-- KONSTANTWARNING: GOTO [94] #72
	end
	-- KONSTANTERROR: [71] 54. Error Block 26 end (CF ANALYSIS FAILED)
end
return React_upvr.memo(RepliedToMarker)