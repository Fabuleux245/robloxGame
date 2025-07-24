-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:48
-- Luau version 6, Types version 3
-- Time taken: 0.002731 seconds

local VirtualEvents = script:FindFirstAncestor("VirtualEvents")
local UIBlox = require(VirtualEvents.Parent.UIBlox)
local tbl_upvr = {
	initialItemsShown = 3;
	extraItemsShownOnLoad = 5;
	itemPadding = UDim.new(0, 12);
	isDesktopGrid = false;
}
local Cryo_upvr = require(VirtualEvents.Parent.Cryo)
local React_upvr = require(VirtualEvents.Parent.React)
local dependencyArray_upvr = require(VirtualEvents.Parent.RoactUtils).Hooks.dependencyArray
local useLocalization_upvr = require(VirtualEvents.Parent.Localization).Hooks.useLocalization
local EventsGridLayout_upvr = require(script.Parent.EventsGridLayout)
local Button_upvr = UIBlox.App.Button.Button
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
return function(arg1) -- Line 32, Named "PaginatedVerticalList"
	--[[ Upvalues[8]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: dependencyArray_upvr (readonly)
		[5]: useLocalization_upvr (readonly)
		[6]: EventsGridLayout_upvr (readonly)
		[7]: Button_upvr (readonly)
		[8]: ButtonType_upvr (readonly)
	]]
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_upvr, arg1)
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(0)
	local any_useMemo_result1_upvr = React_upvr.useMemo(function() -- Line 36
		--[[ Upvalues[2]:
			[1]: any_join_result1_upvr (readonly)
			[2]: any_useState_result1_upvr (readonly)
		]]
		return any_join_result1_upvr.initialItemsShown + any_join_result1_upvr.extraItemsShownOnLoad * any_useState_result1_upvr
	end, dependencyArray_upvr(any_join_result1_upvr.initialItemsShown, any_join_result1_upvr.extraItemsShownOnLoad, any_useState_result1_upvr))
	React_upvr.useEffect(function() -- Line 44
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr (readonly)
		]]
		any_useState_result2_upvr(0)
	end, dependencyArray_upvr(any_join_result1_upvr.initialItemsShown, any_join_result1_upvr.extraItemsShownOnLoad))
	local module_2 = {
		Layout = React_upvr.createElement("UIListLayout", {
			Padding = any_join_result1_upvr.itemPadding;
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
	}
	local var30
	if var30 then
		var30 = React_upvr.createElement(React_upvr.Fragment, nil, React_upvr.useMemo(function() -- Line 58
			--[[ Upvalues[3]:
				[1]: any_useMemo_result1_upvr (readonly)
				[2]: any_join_result1_upvr (readonly)
				[3]: React_upvr (copied, readonly)
			]]
			local module = {}
			for i = 1, any_useMemo_result1_upvr do
				module["Item"..i] = React_upvr.createElement("Frame", {
					LayoutOrder = i;
					Size = UDim2.fromScale(1, 0);
					AutomaticSize = Enum.AutomaticSize.Y;
					BackgroundTransparency = 1;
				}, {
					Content = any_join_result1_upvr.items[i];
				})
			end
			return module
		end, {any_join_result1_upvr.items, any_useMemo_result1_upvr}))
	end
	module_2.MobileListItems = var30
	var30 = any_join_result1_upvr.isDesktopGrid
	if var30 then
		var30 = React_upvr.createElement
		var30 = var30(EventsGridLayout_upvr, {
			items = any_join_result1_upvr.items;
			numItemsShown = any_useMemo_result1_upvr;
		})
	end
	module_2.DesktopGridItems = var30
	if any_useMemo_result1_upvr < #any_join_result1_upvr.items then
		var30 = React_upvr.createElement
		var30 = var30(Button_upvr, {
			buttonType = ButtonType_upvr.Secondary;
			layoutOrder = #any_join_result1_upvr.items + 1;
			size = UDim2.fromScale(1, 0);
			automaticSize = Enum.AutomaticSize.Y;
			text = useLocalization_upvr({
				seeMore = "Feature.VirtualEvents.SeeMore";
			}).seeMore;
			onActivated = React_upvr.useCallback(function() -- Line 48
				--[[ Upvalues[2]:
					[1]: any_useState_result2_upvr (readonly)
					[2]: any_join_result1_upvr (readonly)
				]]
				any_useState_result2_upvr(function(arg1_2) -- Line 49
					return arg1_2 + 1
				end)
				if any_join_result1_upvr.onSeeMore then
					any_join_result1_upvr.onSeeMore()
				end
			end, dependencyArray_upvr(any_join_result1_upvr.onSeeMore));
		})
	else
		var30 = nil
	end
	module_2.SeeMore = var30
	return React_upvr.createElement("Frame", {
		LayoutOrder = any_join_result1_upvr.layoutOrder;
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(1, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
	}, module_2)
end