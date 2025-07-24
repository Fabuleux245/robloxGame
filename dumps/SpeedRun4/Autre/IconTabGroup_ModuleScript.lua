-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:12:21
-- Luau version 6, Types version 3
-- Time taken: 0.002483 seconds

local Parent_2 = script.Parent.Parent.Parent.Parent
local Parent = Parent_2.Parent
local Constants_upvr = require(script.Parent.Constants)
local tbl_upvr = {
	selection = {1};
	items = {};
	padding = {
		left = Constants_upvr.ICON_TAB_PADDING;
		right = Constants_upvr.ICON_TAB_PADDING;
	};
	itemSpacing = UDim.new(0, Constants_upvr.ICON_TAB_ITEM_SPACING);
	itemPadding = {
		left = Constants_upvr.ICON_TAB_ITEM_PADDING_LEFT;
		right = Constants_upvr.ICON_TAB_ITEM_PADDING_RIGHT;
	};
}
local Object_upvr = require(Parent.LuauPolyfill).Object
local useCursor_upvr = require(Parent_2.App.SelectionCursor.useCursor)
local HorizontalContainer_upvr = require(script.Parent.HorizontalContainer)
local React_upvr = require(Parent.React)
local InteractableList_upvr = require(Parent_2.Core.Control.InteractableList)
local Cryo_upvr = require(Parent.Cryo)
local IconTab_upvr = require(script.Parent.IconTab)
local SelectionMode_upvr = require(Parent_2.Core.Control.Enum.SelectionMode)
return function(arg1) -- Line 43, Named "IconTabGroup"
	--[[ Upvalues[10]:
		[1]: Object_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useCursor_upvr (readonly)
		[4]: HorizontalContainer_upvr (readonly)
		[5]: Constants_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: InteractableList_upvr (readonly)
		[8]: Cryo_upvr (readonly)
		[9]: IconTab_upvr (readonly)
		[10]: SelectionMode_upvr (readonly)
	]]
	local any_assign_result1_upvr = Object_upvr.assign({}, tbl_upvr, arg1)
	local module_2 = {}
	local tbl = {
		size = UDim2.new(0, 0, 1, 0);
		automaticSize = Enum.AutomaticSize.X;
		fillDirection = Enum.FillDirection.Horizontal;
		horizontalAlignment = Enum.HorizontalAlignment.Left;
		sortOrder = Enum.SortOrder.LayoutOrder;
		itemList = any_assign_result1_upvr.items;
		itemSize = UDim2.fromScale(0, 0);
	}
	local var9_result1_upvr = useCursor_upvr(UDim.new(0.5, 0), 0)
	function tbl.renderItem(arg1_2, arg2, arg3) -- Line 60
		--[[ Upvalues[5]:
			[1]: Cryo_upvr (copied, readonly)
			[2]: any_assign_result1_upvr (readonly)
			[3]: var9_result1_upvr (readonly)
			[4]: React_upvr (copied, readonly)
			[5]: IconTab_upvr (copied, readonly)
		]]
		local module = {}
		module.item = arg1_2
		module.selected = arg3
		module.controlState = arg2
		module.padding = any_assign_result1_upvr.itemPadding
		return React_upvr.createElement(IconTab_upvr, module), {
			LayoutOrder = Cryo_upvr.List.find(any_assign_result1_upvr.items, arg1_2);
			AutomaticSize = Enum.AutomaticSize.XY;
			SelectionImageObject = var9_result1_upvr;
		}
	end
	function tbl.onSelectionChanged(arg1_3) -- Line 75
		--[[ Upvalues[1]:
			[1]: any_assign_result1_upvr (readonly)
		]]
		local var23 = any_assign_result1_upvr.items[arg1_3[1]]
		if var23 ~= nil and var23.onActivated ~= nil then
			var23.onActivated()
		end
	end
	tbl.selection = any_assign_result1_upvr.selection
	tbl.selectionMode = SelectionMode_upvr.Single
	tbl.padding = any_assign_result1_upvr.itemSpacing
	module_2.MainTabList = React_upvr.createElement(InteractableList_upvr, tbl)
	return HorizontalContainer_upvr({
		size = UDim2.new(0, 0, 0, Constants_upvr.ICON_TAB_GROUP_HEIGHT);
		showRoundedBackground = false;
		automaticSize = Enum.AutomaticSize.X;
		padding = any_assign_result1_upvr.padding;
	}, module_2)
end