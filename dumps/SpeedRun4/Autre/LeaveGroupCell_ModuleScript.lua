-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:17
-- Luau version 6, Types version 3
-- Time taken: 0.001519 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local React_upvr = require(Parent.React)
local tbl_upvr = {
	leaveGroupText = "leaveGroupText";
	onActivated = nil;
	iconImage = nil;
	cellHeight = 64;
	iconCellWidth = 60;
	marginTop = 12;
	LayoutOrder = 0;
	style = nil;
}
local Cryo_upvr = require(Parent.Cryo)
local RoactFitComponents_upvr = require(Parent.LuaSocialLibrariesDeps).RoactFitComponents
local IconWithTextCell_upvr = require(AppChat.Components.Cells.IconWithTextCell)
function LeaveGroupCell(arg1) -- Line 34
	--[[ Upvalues[5]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: RoactFitComponents_upvr (readonly)
		[5]: IconWithTextCell_upvr (readonly)
	]]
	local any_join_result1 = Cryo_upvr.Dictionary.join(tbl_upvr, arg1)
	return React_upvr.createElement(RoactFitComponents_upvr.FitFrameVertical, {
		BackgroundTransparency = 1;
		LayoutOrder = any_join_result1.LayoutOrder;
		width = UDim.new(1, 0);
		margin = {
			top = any_join_result1.marginTop;
			left = 0;
			right = 0;
			bottom = 0;
		};
	}, {
		LeaveGroupRow = React_upvr.createElement(IconWithTextCell_upvr, {
			LayoutOrder = any_join_result1.LayoutOrder;
			onActivated = any_join_result1.onActivated;
			primaryIcon = any_join_result1.iconImage;
			showDivider = false;
			Size = UDim2.new(1, 0, 0, any_join_result1.cellHeight);
			style = any_join_result1.style;
			Text = any_join_result1.leaveGroupText;
			iconCellWidth = any_join_result1.iconCellWidth;
		});
	})
end
return React_upvr.memo(LeaveGroupCell)