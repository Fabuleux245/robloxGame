-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:13
-- Luau version 6, Types version 3
-- Time taken: 0.002102 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local UIBlox = require(Parent.UIBlox)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local React_upvr = require(Parent.React)
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
local FlatList_upvr = require(Parent.VirtualizedList).FlatList
local getFFlagAppChatPerfChatMembersPaginationEnabled_upvr = require(AppChat.Flags.getFFlagAppChatPerfChatMembersPaginationEnabled)
local game_DefineFastInt_result1_upvr_3 = game:DefineFastInt("AppChatPerfChatMembersPaginationWindowSize", 2)
local game_DefineFastInt_result1_upvr_2 = game:DefineFastInt("AppChatPerfChatMembersPaginationInitialRender", 8)
local game_DefineFastInt_result1_upvr = game:DefineFastInt("AppChatPerfChatMembersPaginationOnEndReachedUnits", 1)
return function(arg1) -- Line 35, Named "PaginatedChatMembers"
	--[[ Upvalues[8]:
		[1]: useStyle_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: StyledTextLabel_upvr (readonly)
		[4]: FlatList_upvr (readonly)
		[5]: getFFlagAppChatPerfChatMembersPaginationEnabled_upvr (readonly)
		[6]: game_DefineFastInt_result1_upvr_3 (readonly)
		[7]: game_DefineFastInt_result1_upvr_2 (readonly)
		[8]: game_DefineFastInt_result1_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
	local useStyle_upvr_result1 = useStyle_upvr()
	local function _(arg1_2, arg2) -- Line 38
		local module = {
			length = 48;
			offset = 48 * arg2;
		}
		module.index = arg2
		return module
	end
	local _ = {
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(1, 1);
		BorderSizePixel = 0;
	}
	local tbl = {}
	local any_createElement_result1 = React_upvr.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder;
		FillDirection = Enum.FillDirection.Vertical;
		Padding = UDim.new(0, 0);
	})
	tbl.uiListLayout = any_createElement_result1
	if arg1.headerText then
		any_createElement_result1 = React_upvr.createElement
		any_createElement_result1 = any_createElement_result1("Frame", {
			BackgroundTransparency = 1;
			Size = UDim2.new(1, 0, 0, 0);
			AutomaticSize = Enum.AutomaticSize.Y;
			LayoutOrder = 1;
		}, {
			padding = React_upvr.createElement("UIPadding", {
				PaddingBottom = UDim.new(0, 12);
				PaddingLeft = UDim.new(0, 12);
				PaddingRight = UDim.new(0, 12);
			});
			headerTextLabel = React_upvr.createElement(StyledTextLabel_upvr, {
				fontStyle = useStyle_upvr_result1.Font.Header2;
				colorStyle = useStyle_upvr_result1.Theme.TextDefault;
				text = arg1.headerText;
				size = UDim2.new(1, 0, 0, 20);
			});
		})
	else
		any_createElement_result1 = nil
	end
	tbl.friendsListHeader = any_createElement_result1
	local tbl_2 = {
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(1, 1);
		BorderSizePixel = 0;
		LayoutOrder = 2;
	}
	;({}).uiFlexItem = React_upvr.createElement("UIFlexItem", {
		FlexMode = Enum.UIFlexMode.Fill;
	})
	if getFFlagAppChatPerfChatMembersPaginationEnabled_upvr() then
		-- KONSTANTWARNING: GOTO [211] #149
	end
	-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [210] 148. Error Block 29 start (CF ANALYSIS FAILED)
	;({
		style = {
			ScrollBarThickness = 0;
			Name = "PaginatedChatMembers";
			BackgroundTransparency = 1;
		};
		contentContainerStyle = {
			BackgroundTransparency = 1;
		};
		renderItem = arg1.renderItem;
		data = arg1.data;
	}).windowSize = nil
	if getFFlagAppChatPerfChatMembersPaginationEnabled_upvr() then
		-- KONSTANTWARNING: GOTO [219] #156
	end
	-- KONSTANTERROR: [210] 148. Error Block 29 end (CF ANALYSIS FAILED)
end