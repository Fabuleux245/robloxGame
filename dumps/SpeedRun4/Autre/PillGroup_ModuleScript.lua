-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:21
-- Luau version 6, Types version 3
-- Time taken: 0.011117 seconds

local Parent_5 = script.Parent
local Parent_4 = Parent_5.Parent
local Parent_2 = Parent_4.Parent
local Parent = Parent_2.Parent
local Parent_3 = Parent.Parent
local Cryo_upvr = require(Parent_3.Cryo)
local React_upvr = require(Parent_3.React)
local RoactGamepad_upvr = require(Parent_3.RoactGamepad)
local FitFrame_upvr = require(Parent_3.FitFrame)
local useIsGamepad_upvr = require(Parent.Utility.useIsGamepad)
local useStyle_upvr = require(Parent.Core.Style.useStyle)
local IconButton_upvr = require(Parent.App.Button.IconButton)
local IconSize_upvr = require(Parent_2.ImageSet.Enum.IconSize)
local Images_upvr = require(Parent_2.ImageSet.Images)
local Focusable_upvr = RoactGamepad_upvr.Focusable
local Pillv2_upvr = require(Parent_5.Pillv2)
local FitFrameHorizontal_upvr = FitFrame_upvr.FitFrameHorizontal
local ScrollingListWithArrowsAndGradient_upvr = require(Parent_4.HorizontalNav.ScrollingListWithArrowsAndGradient)
local function PillGroup_upvr(arg1) -- Line 58, Named "PillGroup"
	--[[ Upvalues[13]:
		[1]: useIsGamepad_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: RoactGamepad_upvr (readonly)
		[5]: Cryo_upvr (readonly)
		[6]: IconButton_upvr (readonly)
		[7]: IconSize_upvr (readonly)
		[8]: Images_upvr (readonly)
		[9]: Focusable_upvr (readonly)
		[10]: Pillv2_upvr (readonly)
		[11]: FitFrameHorizontal_upvr (readonly)
		[12]: FitFrame_upvr (readonly)
		[13]: ScrollingListWithArrowsAndGradient_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	local function _() -- Line 63, Named "scrollToStart"
		--[[ Upvalues[1]:
			[1]: any_useRef_result1_upvr (readonly)
		]]
		local current_3 = any_useRef_result1_upvr.current
		if current_3 then
			current_3:ScrollToTop()
		end
	end
	local selectedPills_upvr = arg1.selectedPills
	if not selectedPills_upvr then
		selectedPills_upvr = {}
	end
	local Theme = useStyle_upvr().Theme
	local any_useRefCache_result1 = RoactGamepad_upvr.useRefCache()
	local function var38() -- Line 92
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: Cryo_upvr (copied, readonly)
			[3]: selectedPills_upvr (readonly)
		]]
		for _, v in arg1.pills do
			if not Cryo_upvr.List.find(selectedPills_upvr, v) then
				table.insert({}, v)
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return Cryo_upvr.List.join(selectedPills_upvr, {})
	end
	local any_useMemo_result1 = React_upvr.useMemo(var38, {arg1.pills, selectedPills_upvr})
	if 1 >= #selectedPills_upvr then
		var38 = false
	else
		var38 = true
	end
	local tbl_5_upvr = {}
	local function INLINED() -- Internal function, doesn't exist in bytecode
		tbl_4.NextSelectionRight = any_useRefCache_result1[1]
		tbl_4.buttonRef = any_useRefCache_result1[0]
		tbl_4.key = '0'
		tbl_4.onActivated = React_upvr.useCallback(function() -- Line 86
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.onSelectionChanged then
				arg1.onSelectionChanged({})
			end
		end)
		tbl_4.icon = Images_upvr["icons/actions/reject"]
		tbl_4.iconSize = IconSize_upvr.Medium
		tbl_4.size = UDim2.fromOffset(24, 24)
		tbl_4.layoutOrder = 1
		local tbl_4 = {}
		return React_upvr.createElement(IconButton_upvr, tbl_4)
	end
	if not var38 or not INLINED() then
	end
	tbl_5_upvr.ClearButton = nil
	for i_2, v_2_upvr in any_useMemo_result1 do
		local var51
		if i_2 > #selectedPills_upvr then
			var51 = false
		else
			var51 = true
		end
		if var51 then
		end
		local tbl_6 = {
			layoutOrder = i_2 + 1;
			key = tostring(i_2);
			text = v_2_upvr;
			isSelected = var51;
		}
		if arg1.isLoading then
		end
		tbl_6.isLoading = not var51
		tbl_6.ref = any_useRefCache_result1[i_2]
		if 1 < i_2 or var38 then
		else
		end
		tbl_6.NextSelectionLeft = nil
		if i_2 < #any_useMemo_result1 then
		else
		end
		tbl_6.NextSelectionRight = nil
		function tbl_6.onActivated() -- Line 120
			--[[ Upvalues[5]:
				[1]: Cryo_upvr (copied, readonly)
				[2]: selectedPills_upvr (readonly)
				[3]: v_2_upvr (readonly)
				[4]: any_useRef_result1_upvr (readonly)
				[5]: arg1 (readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local var48
			if Cryo_upvr.List.find(selectedPills_upvr, v_2_upvr) == nil then
				var48 = false
			else
				var48 = true
			end
			if var48 then
			else
			end
			if not var48 then
				local current = any_useRef_result1_upvr.current
				if current then
					current:ScrollToTop()
				end
			end
			if arg1.onSelectionChanged then
				arg1.onSelectionChanged(Cryo_upvr.List.join(selectedPills_upvr, {v_2_upvr}))
			end
		end
		tbl_5_upvr[i_2] = React_upvr.createElement(Focusable_upvr[Pillv2_upvr], tbl_6)
	end
	if false and useIsGamepad_upvr() then
		i_2 = Pillv2_upvr
		local tbl_3 = {}
		i_2 = 2
		tbl_3.layoutOrder = i_2
		i_2 = '1'
		tbl_3.key = i_2
		i_2 = any_useRefCache_result1[1]
		tbl_3.ref = i_2
		i_2 = ""
		tbl_3.text = i_2
		tbl_5_upvr[1] = React_upvr.createElement(Focusable_upvr[i_2], tbl_3)
	end
	local var54_upvr = arg1.rightPadding or 15
	local var55_upvr = arg1.leftPadding or 15
	local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1_2) -- Line 78
		--[[ Upvalues[1]:
			[1]: any_useRef_result1_upvr (readonly)
		]]
		if any_useRef_result1_upvr.current then
			any_useRef_result1_upvr.current.CanvasSize = UDim2.new(0, arg1_2.AbsoluteSize.X, 1, 0)
		end
	end)
	local tbl = {}
	v_2_upvr = 1
	i_2 = 1
	for i_3 = v_2_upvr, #any_useMemo_result1, i_2 do
		tbl[i_3] = any_useRefCache_result1[i_3]
		local var60
	end
	i_2 = React_upvr
	i_2 = Focusable_upvr.Frame
	var51 = 1
	;({}).Size = UDim2.new(var51, 0, 0, 52)
	var51 = Theme.BackgroundDefault
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	;({}).BackgroundColor3 = var51.Color
	var51 = Theme.BackgroundDefault
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	;({}).BackgroundTransparency = var51.Transparency
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	;({}).BorderSizePixel = 0
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	;({}).LayoutOrder = arg1.layoutOrder
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	;({}).ref = arg1.forwardRef
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	;({}).NextSelectionUp = arg1.NextSelectionUp
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	;({}).NextSelectionDown = arg1.NextSelectionDown
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	;({}).defaultChild = var60[1]
	local module_2 = {}
	var51 = React_upvr.createElement
	var51 = var51(ScrollingListWithArrowsAndGradient_upvr, {
		getScollingListContent = function() -- Line 168, Named "getScrollingListChildren"
			--[[ Upvalues[7]:
				[1]: React_upvr (copied, readonly)
				[2]: FitFrameHorizontal_upvr (copied, readonly)
				[3]: FitFrame_upvr (copied, readonly)
				[4]: var54_upvr (readonly)
				[5]: var55_upvr (readonly)
				[6]: any_useCallback_result1_upvr (readonly)
				[7]: tbl_5_upvr (readonly)
			]]
			return {
				SubNavFrame = React_upvr.createElement(FitFrameHorizontal_upvr, {
					height = UDim.new(1, 0);
					contentPadding = UDim.new(0, 8);
					margin = FitFrame_upvr.Rect.quad(0, var54_upvr, 0, var55_upvr);
					VerticalAlignment = Enum.VerticalAlignment.Center;
					FillDirection = Enum.FillDirection.Horizontal;
					BackgroundTransparency = 1;
					[React_upvr.Change.AbsoluteSize] = any_useCallback_result1_upvr;
				}, tbl_5_upvr);
			}
		end;
		listHeight = 52;
		scrollingFrameRef = any_useRef_result1_upvr;
		buttonRefs = tbl;
		buttonPadding = 8;
		padOutsideEdges = false;
		hideGradient = true;
	})
	module_2.ScrollingList = var51
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return i_2.createElement(i_2, {}, module_2)
end
return React_upvr.forwardRef(function(arg1, arg2) -- Line 213
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: PillGroup_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	local module = {}
	module.forwardRef = arg2
	return React_upvr.createElement(PillGroup_upvr, Cryo_upvr.Dictionary.join(arg1, module))
end)