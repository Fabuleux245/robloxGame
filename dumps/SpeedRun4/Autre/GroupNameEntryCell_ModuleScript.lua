-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:17
-- Luau version 6, Types version 3
-- Time taken: 0.002068 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local React_upvr = require(Parent.React)
local tbl_upvr = {
	groupNameText = "groupName";
	iconImage = nil;
	onActivated = nil;
	LayoutOrder = 1;
	iconCellWidth = 60;
	isDisabled = false;
	cellHeight = 36;
	style = nil;
	paddingBottom = 12;
}
local Cryo_upvr = require(Parent.Cryo)
local IconWithTextCell_upvr = require(AppChat.Components.Cells.IconWithTextCell)
function GroupNameEntryCell(arg1) -- Line 37
	--[[ Upvalues[4]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: IconWithTextCell_upvr (readonly)
	]]
	local var7 = tbl_upvr
	local any_join_result1 = Cryo_upvr.Dictionary.join(var7, arg1)
	local var9
	if any_join_result1.isDisabled then
		var7 = any_join_result1.style.Tokens.Global.Size_150
	else
		var7 = 0
	end
	local module = {}
	local tbl_2 = {}
	var9 = 0
	tbl_2.PaddingLeft = UDim.new(var9, var7)
	var9 = 0
	tbl_2.PaddingBottom = UDim.new(var9, any_join_result1.paddingBottom)
	module.padding = React_upvr.createElement("UIPadding", tbl_2)
	local module_2 = {}
	local tbl = {}
	if any_join_result1.isDisabled then
		var9 = nil
	else
		var9 = any_join_result1.iconImage
	end
	tbl.primaryIcon = var9
	var9 = any_join_result1.groupNameText
	tbl.Text = var9
	var9 = any_join_result1.iconCellWidth
	tbl.iconCellWidth = var9
	var9 = false
	tbl.showDivider = var9
	var9 = any_join_result1.isDisabled
	tbl.isDisabled = var9
	var9 = any_join_result1.onActivated
	tbl.onActivated = var9
	var9 = 1
	tbl.LayoutOrder = var9
	var9 = UDim2.new(1, -var7, 0, any_join_result1.cellHeight)
	tbl.Size = var9
	var9 = any_join_result1.style
	tbl.style = var9
	module_2.IconWithText = React_upvr.createElement(IconWithTextCell_upvr, tbl)
	return React_upvr.createElement("Frame", {
		AutomaticSize = Enum.AutomaticSize.Y;
		BackgroundTransparency = 1;
		LayoutOrder = any_join_result1.LayoutOrder;
		Size = UDim2.fromScale(1, 0);
	}, module, module_2)
end
return React_upvr.memo(GroupNameEntryCell)