-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:12
-- Luau version 6, Types version 3
-- Time taken: 0.001749 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local React_upvr = require(Parent.React)
local Foundation = require(Parent.Foundation)
local function var5_upvr(arg1, arg2) -- Line 38
	local module = {
		length = 48;
		offset = 48 * arg2;
	}
	module.index = arg2
	return module
end
local function var7_upvr(arg1, arg2) -- Line 46
	return tostring(arg1.id or arg2)
end
local tbl_upvr = {
	ScrollBarThickness = 0;
	Name = "PaginatedChatMembers";
	BackgroundTransparency = 1;
}
local tbl_upvr_2 = {
	BackgroundTransparency = 1;
}
local getFFlagAppChatPerfChatMembersPaginationEnabled_upvr = require(AppChat.Flags.getFFlagAppChatPerfChatMembersPaginationEnabled)
local game_DefineFastInt_result1_upvr_2 = game:DefineFastInt("AppChatPerfChatMembersPaginationWindowSize", 2)
local game_DefineFastInt_result1_upvr_3 = game:DefineFastInt("AppChatPerfChatMembersPaginationInitialRender", 8)
local game_DefineFastInt_result1_upvr = game:DefineFastInt("AppChatPerfChatMembersPaginationOnEndReachedUnits", 1)
local View_upvr = Foundation.View
local Text_upvr = Foundation.Text
local FlatList_upvr = require(Parent.VirtualizedList).FlatList
return React_upvr.memo(function(arg1) -- Line 59, Named "PaginatedChatMembers"
	--[[ Upvalues[12]:
		[1]: getFFlagAppChatPerfChatMembersPaginationEnabled_upvr (readonly)
		[2]: game_DefineFastInt_result1_upvr_2 (readonly)
		[3]: game_DefineFastInt_result1_upvr_3 (readonly)
		[4]: game_DefineFastInt_result1_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: View_upvr (readonly)
		[7]: Text_upvr (readonly)
		[8]: FlatList_upvr (readonly)
		[9]: tbl_upvr (readonly)
		[10]: tbl_upvr_2 (readonly)
		[11]: var5_upvr (readonly)
		[12]: var7_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
	if getFFlagAppChatPerfChatMembersPaginationEnabled_upvr() then
	else
	end
	if getFFlagAppChatPerfChatMembersPaginationEnabled_upvr() then
		-- KONSTANTWARNING: GOTO [12] #13
	end
	-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [11] 12. Error Block 29 start (CF ANALYSIS FAILED)
	if getFFlagAppChatPerfChatMembersPaginationEnabled_upvr() then
		-- KONSTANTWARNING: GOTO [18] #19
	end
	-- KONSTANTERROR: [11] 12. Error Block 29 end (CF ANALYSIS FAILED)
end)