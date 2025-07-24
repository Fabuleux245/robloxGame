-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:10
-- Luau version 6, Types version 3
-- Time taken: 0.001066 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local React_upvr = require(Parent.React)
local tbl_upvr = {
	Text = "(translated 'add friends' text here)";
	iconImage = nil;
	iconSize = 36;
	iconCellWidth = 60;
	cellHeight = 64;
	onActivated = nil;
	LayoutOrder = 0;
	style = nil;
}
local Cryo_upvr = require(Parent.Cryo)
local IconWithTextCell_upvr = require(AppChat.Components.Cells.IconWithTextCell)
function AddFriendsEntry(arg1) -- Line 32
	--[[ Upvalues[4]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: IconWithTextCell_upvr (readonly)
	]]
	local any_join_result1 = Cryo_upvr.Dictionary.join(tbl_upvr, arg1)
	return React_upvr.createElement(IconWithTextCell_upvr, {
		Size = UDim2.new(1, 0, 0, any_join_result1.cellHeight);
		primaryIcon = any_join_result1.iconImage;
		primaryIconSize = any_join_result1.iconSize;
		iconCellWidth = any_join_result1.iconCellWidth;
		Text = any_join_result1.Text;
		onActivated = any_join_result1.onActivated;
		LayoutOrder = any_join_result1.LayoutOrder;
		style = any_join_result1.style;
	})
end
return React_upvr.memo(AddFriendsEntry)