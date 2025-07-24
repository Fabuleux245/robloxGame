-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:22:30
-- Luau version 6, Types version 3
-- Time taken: 0.005035 seconds

local Parent = script.Parent.Parent
local Parent_2 = Parent.Parent
local Foundation = require(Parent_2.Foundation)
local function _(arg1) -- Line 41, Named "getItemsPerRow"
	return math.clamp(math.floor(arg1 / 120), 1, 4)
end
local function getGalleryItemSize_upvr(arg1, arg2) -- Line 45, Named "getGalleryItemSize"
	local clamped = math.clamp(math.floor(arg2 / 120), 1, 4)
	local var5 = arg2 - 4 * (clamped - 1)
	local minimum = math.min(var5 / clamped, var5)
	return Vector2.new(math.floor(minimum), math.floor(minimum * arg1))
end
local function _(arg1, arg2, arg3) -- Line 55, Named "getItemsPerPage"
	if arg1 <= 0 then
		return 0
	end
	local floored_2 = math.floor(arg1 / arg3.Y)
	if arg1 < arg3.Y * floored_2 + (floored_2 - 1) * 4 then
		floored_2 -= 1
	end
	return math.max(floored_2 * math.clamp(math.floor(arg2 / 120), 1, 4), 8)
end
local React_upvr = require(Parent_2.React)
local useScreenSize_upvr = require(Parent.Hooks.useScreenSize)
local Dash_upvr = require(Parent_2.Dash)
local View_upvr = Foundation.View
local ScrollView_upvr = Foundation.ScrollView
local ScrollBarVisibility_upvr = Foundation.Enums.ScrollBarVisibility
local GridView_upvr = require(Parent_2.UIBlox).App.Grid.GridView
local MenuButton_upvr = require(Parent.Components.MenuButton)
return function(arg1) -- Line 70
	--[[ Upvalues[9]:
		[1]: React_upvr (readonly)
		[2]: useScreenSize_upvr (readonly)
		[3]: getGalleryItemSize_upvr (readonly)
		[4]: Dash_upvr (readonly)
		[5]: View_upvr (readonly)
		[6]: ScrollView_upvr (readonly)
		[7]: ScrollBarVisibility_upvr (readonly)
		[8]: GridView_upvr (readonly)
		[9]: MenuButton_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 51 start (CF ANALYSIS FAILED)
	local any_useState_result1, any_useState_result2_upvr_2 = React_upvr.useState(Vector2.new(0, 0))
	local any_useState_result1_2_upvr, any_useState_result2_upvr = React_upvr.useState(0)
	local var10_result1 = useScreenSize_upvr()
	local function var22(arg1_2) -- Line 75
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr_2 (readonly)
		]]
		any_useState_result2_upvr_2(arg1_2.AbsoluteSize)
	end
	var22 = false
	local var23 = var22
	local var24
	if 0 < any_useState_result1.X then
		if 0 >= any_useState_result1.Y then
			var23 = false
		else
			var23 = true
		end
	end
	local shouldShowShowMoreButton = arg1.shouldShowShowMoreButton
	if shouldShowShowMoreButton then
		if any_useState_result1_2_upvr >= #arg1.captures then
		else
		end
	end
	local clamped_2_upvw = math.clamp(var10_result1.Y / var10_result1.X, 0.42857142857142855, 1)
	local var27_upvr = any_useState_result1.Y - 12 - 40 - 36
	local var28_upvr = any_useState_result1.X - 12 - 8
	local any_useMemo_result1_upvr_2 = React_upvr.useMemo(function() -- Line 89
		--[[ Upvalues[3]:
			[1]: getGalleryItemSize_upvr (copied, readonly)
			[2]: clamped_2_upvw (read and write)
			[3]: var28_upvr (readonly)
		]]
		return getGalleryItemSize_upvr(clamped_2_upvw, var28_upvr)
	end, {clamped_2_upvw, var28_upvr})
	local any_useMemo_result1_upvr = React_upvr.useMemo(function() -- Line 93
		--[[ Upvalues[3]:
			[1]: var27_upvr (readonly)
			[2]: var28_upvr (readonly)
			[3]: any_useMemo_result1_upvr_2 (readonly)
		]]
		local var33 = var27_upvr
		local var34 = any_useMemo_result1_upvr_2
		if var33 <= 0 then
			return 0
		end
		local floored = math.floor(var33 / var34.Y)
		if var33 < var34.Y * floored + (floored - 1) * 4 then
			floored -= 1
		end
		return math.max(floored * math.clamp(math.floor(var28_upvr / 120), 1, 4), 8)
	end, {var27_upvr, var28_upvr, any_useMemo_result1_upvr_2})
	local tbl_3 = {}
	var24 = any_useState_result1_2_upvr
	tbl_3[1] = any_useState_result1
	tbl_3[2] = any_useMemo_result1_upvr
	tbl_3[3] = var24
	React_upvr.useEffect(function() -- Line 97
		--[[ Upvalues[3]:
			[1]: any_useState_result1_2_upvr (readonly)
			[2]: any_useMemo_result1_upvr (readonly)
			[3]: any_useState_result2_upvr (readonly)
		]]
		if any_useState_result1_2_upvr < any_useMemo_result1_upvr then
			any_useState_result2_upvr(any_useMemo_result1_upvr)
		end
	end, tbl_3)
	local function _() -- Line 103
		--[[ Upvalues[3]:
			[1]: any_useState_result2_upvr (readonly)
			[2]: any_useState_result1_2_upvr (readonly)
			[3]: any_useMemo_result1_upvr (readonly)
		]]
		any_useState_result2_upvr(any_useState_result1_2_upvr + any_useMemo_result1_upvr)
	end
	local _ = {any_useState_result1_2_upvr, any_useMemo_result1_upvr}
	local var43_upvr = true
	local tbl_2 = {}
	var24 = var43_upvr
	tbl_2[1] = arg1.captures
	tbl_2[2] = var24
	tbl_2[3] = any_useState_result1_2_upvr
	local tbl = {}
	var24 = 0
	tbl.BorderSizePixel = var24
	tbl.onAbsoluteSizeChanged = React_upvr.useCallback(var22, {})
	if arg1.position then
		var24 = arg1.position
		-- KONSTANTWARNING: GOTO [166] #127
	end
	-- KONSTANTERROR: [0] 1. Error Block 51 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [161] 123. Error Block 36 start (CF ANALYSIS FAILED)
	var24 = UDim2.fromOffset(0, 0)
	tbl.Position = var24
	if arg1.size then
		var24 = arg1.size
	else
		var24 = UDim2.fromScale(1, 1)
	end
	tbl.Size = var24
	var24 = "bg-surface-0"
	tbl.tag = var24
	var24 = {}
	;({}).tag = "bg-action-subtle size-full gap-xsmall col align-x-center align-y-top shrink"
	;({}).Header = arg1.header
	local tbl_4 = {}
	local var47 = 0
	tbl_4.BorderSizePixel = var47
	if arg1.layoutOrder then
		var47 = arg1.layoutOrder
	else
		var47 = 1
	end
	tbl_4.LayoutOrder = var47
	tbl_4.scroll = {
		AutomaticCanvasSize = Enum.AutomaticSize.Y;
		CanvasSize = UDim2.fromScale(1, 0);
		ScrollingDirection = Enum.ScrollingDirection.Y;
		scrollBarVisibility = ScrollBarVisibility_upvr.Auto;
	}
	tbl_4.tag = "auto-y size-full-0 gap-xsmall col align-x-center align-y-top shrink padding-x-xsmall"
	if var23 then
		local _ = {
			itemPadding = Vector2.new(4, 4);
			items = React_upvr.useMemo(function() -- Line 107
				--[[ Upvalues[4]:
					[1]: var43_upvr (readonly)
					[2]: arg1 (readonly)
					[3]: any_useState_result1_2_upvr (readonly)
					[4]: Dash_upvr (copied, readonly)
				]]
				if var43_upvr then
					return Dash_upvr.slice(arg1.captures, 1, math.min(#arg1.captures, any_useState_result1_2_upvr))
				end
				return arg1.captures
			end, tbl_2);
			itemSize = any_useMemo_result1_upvr_2;
			LayoutOrder = 1;
			renderItem = arg1.renderItem;
		}
		-- KONSTANTWARNING: GOTO [269] #197
	end
	-- KONSTANTERROR: [161] 123. Error Block 36 end (CF ANALYSIS FAILED)
end