-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:58:20
-- Luau version 6, Types version 3
-- Time taken: 0.007155 seconds

local Parent_2 = script.Parent.Parent.Parent
local Parent = Parent_2.Parent
local React_upvr = require(Parent.React)
local function _(arg1) -- Line 40, Named "getItemsPerRow"
	return math.clamp(math.floor(arg1 / 120), 1, 4)
end
local function _(arg1, arg2) -- Line 44, Named "getGalleryItemSize"
	local clamped_4 = math.clamp(math.floor(arg2 / 120), 1, 4)
	local var5 = arg2 - 4 * (clamped_4 - 1)
	local minimum_2 = math.min(var5 / clamped_4, var5)
	return Vector2.new(math.floor(minimum_2), math.floor(minimum_2 * arg1))
end
local function _(arg1, arg2, arg3) -- Line 54, Named "getItemsPerPage"
	if arg1 <= 0 then
		return 0
	end
	local floored_3 = math.floor(arg1 / arg3.Y)
	if arg1 < arg3.Y * floored_3 + (floored_3 - 1) * 4 then
		floored_3 -= 1
	end
	return math.max(floored_3 * math.clamp(math.floor(arg2 / 120), 1, 4), 8)
end
local GalleryItem_upvr = require(Parent_2.Components.CapturesGallery.GalleryItem)
local function renderGalleryItem_upvr(arg1, arg2) -- Line 69, Named "renderGalleryItem"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: GalleryItem_upvr (readonly)
	]]
	local module_3 = {}
	module_3.capture = arg1
	module_3.captureIndex = arg2
	return React_upvr.createElement(GalleryItem_upvr, module_3)
end
local useScreenSize_upvr = require(Parent.RobloxAppHooks).useScreenSize
local useEffectOnce_upvr = require(Parent.RoactUtils).Hooks.useEffectOnce
local Dash_upvr = require(Parent.Dash)
local GalleryActionContainer_upvr = require(Parent_2.Components.CapturesGallery.GalleryActionContainer)
local GridView_upvr = require(Parent.UIBlox).App.Grid.GridView
local ShowMoreButton_upvr = require(Parent_2.Components.Common.ShowMoreButton)
return function(arg1) -- Line 76
	--[[ Upvalues[8]:
		[1]: React_upvr (readonly)
		[2]: useScreenSize_upvr (readonly)
		[3]: useEffectOnce_upvr (readonly)
		[4]: Dash_upvr (readonly)
		[5]: GalleryActionContainer_upvr (readonly)
		[6]: GridView_upvr (readonly)
		[7]: renderGalleryItem_upvr (readonly)
		[8]: ShowMoreButton_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 63 start (CF ANALYSIS FAILED)
	local any_useState_result1, any_useState_result2_upvr_2 = React_upvr.useState(Vector2.new(0, 0))
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(0)
	local useScreenSize_upvr_result1 = useScreenSize_upvr()
	local var22
	if any_useState_result1_upvr >= #arg1.captures then
	else
	end
	if 0 < any_useState_result1.X then
		if 0 >= any_useState_result1.Y then
		else
		end
	end
	local clamped_3 = math.clamp(useScreenSize_upvr_result1.Y / useScreenSize_upvr_result1.X, 0.42857142857142855, 1)
	local var25 = any_useState_result1.Y - 12 - 40 - 36
	local X = any_useState_result1.X
	var22 = X
	local clamped_2 = math.clamp(math.floor(var22 / 120), 1, 4)
	var22 -= 4 * (clamped_2 - 1)
	local minimum_3 = math.min(var22 / clamped_2, var22)
	var22 = X
	local vector2 = Vector2.new(math.floor(minimum_3), math.floor(minimum_3 * clamped_3))
	if var25 <= 0 then
		-- KONSTANTWARNING: GOTO [149] #117
	end
	-- KONSTANTERROR: [0] 1. Error Block 63 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [113] 89. Error Block 62 start (CF ANALYSIS FAILED)
	local floored = math.floor(var25 / vector2.Y)
	if var25 < vector2.Y * floored + (floored - 1) * 4 then
		floored -= 1
	end
	if math.max(floored * math.clamp(math.floor(var22 / 120), 1, 4), 8) >= any_useState_result1_upvr then
		var22 = false
	else
		var22 = true
	end
	if var22 then
		local var31 = X - 9
		local var32 = var31
		local clamped = math.clamp(math.floor(var32 / 120), 1, 4)
		local var34 = var32 - 4 * (clamped - 1)
		local minimum = math.min(var34 / clamped, var34)
		local vector2_2 = Vector2.new(math.floor(minimum), math.floor(minimum * clamped_3))
		if var25 <= 0 then
			local _ = 0
		else
			local floored_2 = math.floor(var25 / vector2_2.Y)
			if var25 < vector2_2.Y * floored_2 + (floored_2 - 1) * 4 then
				floored_2 -= 1
			end
		end
	end
	local maximum_upvw = math.max(floored_2 * math.clamp(math.floor(var31 / 120), 1, 4), 8)
	if maximum_upvw == 0 then
	else
	end
	useEffectOnce_upvr(function() -- Line 106
		--[[ Upvalues[2]:
			[1]: any_useState_result2_upvr (readonly)
			[2]: maximum_upvw (read and write)
		]]
		any_useState_result2_upvr(maximum_upvw)
	end, true)
	React_upvr.useEffect(function() -- Line 110
		--[[ Upvalues[3]:
			[1]: any_useState_result1_upvr (readonly)
			[2]: maximum_upvw (read and write)
			[3]: any_useState_result2_upvr (readonly)
		]]
		if any_useState_result1_upvr < maximum_upvw then
			any_useState_result2_upvr(maximum_upvw)
		end
	end, {any_useState_result1})
	local module = {
		BackgroundTransparency = 1;
		LayoutOrder = arg1.LayoutOrder;
	}
	local Size = arg1.Size
	if not Size then
		Size = UDim2.fromScale(1, 1)
	end
	module.Size = Size
	module[React_upvr.Change.AbsoluteSize] = React_upvr.useCallback(function(arg1_2) -- Line 84
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr_2 (readonly)
		]]
		any_useState_result2_upvr_2(arg1_2.AbsoluteSize)
	end, {})
	local module_2 = {
		UIListLayout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Top;
		});
		GalleryActionContainer = React_upvr.createElement(GalleryActionContainer_upvr, {
			isDisabled = false;
			itemCount = #arg1.captures;
			LayoutOrder = 1;
		});
	}
	local tbl = {
		UIListLayout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Top;
			Padding = UDim.new(0, 12);
		});
	}
	local var55 = true
	if var55 then
		var55 = React_upvr.createElement
		var55 = var55(GridView_upvr, {
			itemPadding = Vector2.new(4, 4);
			items = React_upvr.useMemo(function() -- Line 120
				--[[ Upvalues[3]:
					[1]: arg1 (readonly)
					[2]: any_useState_result1_upvr (readonly)
					[3]: Dash_upvr (copied, readonly)
				]]
				return Dash_upvr.slice(arg1.captures, 1, math.min(#arg1.captures, any_useState_result1_upvr))
			end, {arg1.captures, any_useState_result1_upvr});
			itemSize = Vector2.new(math.floor(minimum), math.floor(minimum * clamped_3));
			LayoutOrder = 1;
			renderItem = renderGalleryItem_upvr;
		})
	end
	tbl.GridView = var55
	var55 = true
	local var57 = var55
	if var57 then
		var57 = React_upvr.createElement
		var57 = var57(ShowMoreButton_upvr, {
			LayoutOrder = 2;
			buttonHeight = 40;
			onActivated = React_upvr.useCallback(function() -- Line 116
				--[[ Upvalues[3]:
					[1]: any_useState_result2_upvr (readonly)
					[2]: any_useState_result1_upvr (readonly)
					[3]: maximum_upvw (read and write)
				]]
				any_useState_result2_upvr(any_useState_result1_upvr + maximum_upvw)
			end, {any_useState_result1_upvr, maximum_upvw});
		})
	end
	tbl.ShowMoreButton = var57
	module_2.ScrollingFrame = React_upvr.createElement("ScrollingFrame", {
		AutomaticCanvasSize = Enum.AutomaticSize.Y;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		CanvasSize = UDim2.fromScale(1, 0);
		LayoutOrder = 2;
		ScrollBarThickness = 1;
		ScrollingDirection = Enum.ScrollingDirection.Y;
		Size = UDim2.new(1, 0, 1, -36);
	}, tbl)
	do
		return React_upvr.createElement("Frame", module, module_2)
	end
	-- KONSTANTERROR: [113] 89. Error Block 62 end (CF ANALYSIS FAILED)
end