-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:23
-- Luau version 6, Types version 3
-- Time taken: 0.005072 seconds

local Parent_3 = script.Parent.Parent.Parent
local Parent_2 = Parent_3.Parent
local Parent = Parent_2.Parent
local React_upvr = require(Parent.React)
local t = require(Parent.t)
local Otter_upvr = require(Parent.Otter)
local RoactGamepad_upvr = require(Parent.RoactGamepad)
local tbl_3_upvr = {
	dampingRatio = 1;
	frequency = 10;
}
local function useScrollingFrameMotor_upvr(arg1, arg2) -- Line 111, Named "useScrollingFrameMotor"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: Otter_upvr (readonly)
	]]
	local any_useRef_result1 = React_upvr.useRef(nil)
	if any_useRef_result1.current == nil then
		any_useRef_result1.current = Otter_upvr.createSingleMotor(arg2 or 0)
	end
	local current_upvr = any_useRef_result1.current
	React_upvr.useEffect(function() -- Line 117
		--[[ Upvalues[2]:
			[1]: current_upvr (readonly)
			[2]: arg1 (readonly)
		]]
		current_upvr:onStep(function(arg1_2) -- Line 118
			--[[ Upvalues[1]:
				[1]: arg1 (copied, readonly)
			]]
			if arg1.current ~= nil then
				arg1.current.CanvasPosition = Vector2.new(arg1_2, 0)
			end
		end)
		return function() -- Line 124
			--[[ Upvalues[1]:
				[1]: current_upvr (copied, readonly)
			]]
			current_upvr:destroy()
		end
	end, {})
	return current_upvr
end
local useStyle_upvr = require(Parent_2.Core.Style.useStyle)
local useSelectionCursor_upvr = require(Parent_3.SelectionImage.useSelectionCursor)
local CursorKind_upvr = require(Parent_3.SelectionImage.CursorKind)
local any_strictInterface_result1_upvr = t.strictInterface({
	slots = t.array(t.strictInterface({
		displayText = t.optional(t.string);
		thumbnail = t.optional(t.string);
		isDisabled = t.optional(t.boolean);
		isLoading = t.optional(t.boolean);
	}));
	defaultSelectedSlotIndex = t.optional(t.integer);
	onChange = t.callback;
	width = t.optional(t.integer);
	darken = t.optional(t.boolean);
	onInputBegan = t.optional(t.callback);
	onInputEnded = t.optional(t.callback);
	scrollingFrameRef = t.optional(t.table);
	onFocusChanged = t.optional(t.callback);
	inputBindings = t.optional(t.table);
	NextSelectionLeft = t.optional(t.table);
	NextSelectionRight = t.optional(t.table);
	NextSelectionUp = t.optional(t.table);
	NextSelectionDown = t.optional(t.table);
})
local Cryo_upvr = require(Parent.Cryo)
local Focusable_upvr = RoactGamepad_upvr.Focusable
local TileSlot_upvr = require(script.Parent.TileSlot)
return function(arg1) -- Line 132, Named "SlotTray"
	--[[ Upvalues[12]:
		[1]: RoactGamepad_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: useScrollingFrameMotor_upvr (readonly)
		[4]: Otter_upvr (readonly)
		[5]: tbl_3_upvr (readonly)
		[6]: useStyle_upvr (readonly)
		[7]: useSelectionCursor_upvr (readonly)
		[8]: CursorKind_upvr (readonly)
		[9]: any_strictInterface_result1_upvr (readonly)
		[10]: Cryo_upvr (readonly)
		[11]: Focusable_upvr (readonly)
		[12]: TileSlot_upvr (readonly)
	]]
	local any_useRefCache_result1_upvr = RoactGamepad_upvr.useRefCache()
	local any_useRef_result1_2_upvw = React_upvr.useRef(nil)
	local var25
	if arg1.scrollingFrameRef then
		any_useRef_result1_2_upvw = arg1.scrollingFrameRef
	end
	local var26_upvr = arg1.width or 360
	local useScrollingFrameMotor_upvr_result1_upvr = useScrollingFrameMotor_upvr(any_useRef_result1_2_upvw, 0)
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(arg1.defaultSelectedSlotIndex or 1)
	React_upvr.useEffect(function() -- Line 147
		--[[ Upvalues[7]:
			[1]: any_useRef_result1_2_upvw (read and write)
			[2]: any_useState_result1_upvr (readonly)
			[3]: any_useRefCache_result1_upvr (readonly)
			[4]: var26_upvr (readonly)
			[5]: useScrollingFrameMotor_upvr_result1_upvr (readonly)
			[6]: Otter_upvr (copied, readonly)
			[7]: tbl_3_upvr (copied, readonly)
		]]
		local current = any_useRef_result1_2_upvw.current
		if any_useState_result1_upvr == 0 or not current then
		else
			local var32 = any_useRefCache_result1_upvr[any_useState_result1_upvr]
			if var32 then
				var32 = any_useRefCache_result1_upvr[any_useState_result1_upvr].current
			end
			if not var32 then return end
			local X = current.CanvasPosition.X
			local X_3 = current.AbsolutePosition.X
			local X_2 = var32.AbsolutePosition.X
			local var36 = (X) + ((X_2 + 48 + 24) - (X_3 + var26_upvr))
			local var37 = (X) + (X_2 - 24 - X_3)
			if X < var36 then
				useScrollingFrameMotor_upvr_result1_upvr:setGoal(Otter_upvr.spring(var36, tbl_3_upvr))
				return
			end
			if var37 < X then
				useScrollingFrameMotor_upvr_result1_upvr:setGoal(Otter_upvr.spring(var37, tbl_3_upvr))
			end
		end
	end, {any_useState_result1_upvr, var26_upvr, any_useRefCache_result1_upvr, any_useRef_result1_2_upvw, useScrollingFrameMotor_upvr_result1_upvr})
	assert(any_strictInterface_result1_upvr(arg1))
	local Theme = useStyle_upvr().Theme
	local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1_3) -- Line 179
		--[[ Upvalues[2]:
			[1]: any_useState_result2_upvr (readonly)
			[2]: arg1 (readonly)
		]]
		any_useState_result2_upvr(arg1_3)
		arg1.onChange(arg1_3)
	end, {arg1.onChange})
	local useSelectionCursor_upvr_result1_upvr = useSelectionCursor_upvr(CursorKind_upvr.RoundedSlot)
	local any_map_result1 = Cryo_upvr.List.map(arg1.slots, function(arg1_4, arg2) -- Line 192
		--[[ Upvalues[8]:
			[1]: React_upvr (copied, readonly)
			[2]: Focusable_upvr (copied, readonly)
			[3]: any_useRefCache_result1_upvr (readonly)
			[4]: arg1 (readonly)
			[5]: any_useCallback_result1_upvr (readonly)
			[6]: useSelectionCursor_upvr_result1_upvr (readonly)
			[7]: TileSlot_upvr (copied, readonly)
			[8]: any_useState_result1_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local module_2 = {
			key = "Slot"..tostring(arg2);
		}
		module_2.LayoutOrder = arg2
		module_2.Size = UDim2.fromOffset(48, 48)
		module_2.BackgroundTransparency = 1
		module_2.BorderSizePixel = 2
		module_2.ref = any_useRefCache_result1_upvr[arg2]
		local onFocusGained
		local function INLINED() -- Internal function, doesn't exist in bytecode
			onFocusGained = any_useRefCache_result1_upvr[arg2 + 1]
			return onFocusGained
		end
		if arg2 >= #arg1.slots or not INLINED() then
			onFocusGained = nil
		end
		module_2.NextSelectionRight = onFocusGained
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			onFocusGained = any_useRefCache_result1_upvr[arg2 - 1]
			return onFocusGained
		end
		if 1 >= arg2 or not INLINED_2() then
			onFocusGained = nil
		end
		module_2.NextSelectionLeft = onFocusGained
		function onFocusGained() -- Line 202
			--[[ Upvalues[2]:
				[1]: any_useCallback_result1_upvr (copied, readonly)
				[2]: arg2 (readonly)
			]]
			any_useCallback_result1_upvr(arg2)
		end
		module_2.onFocusGained = onFocusGained
		onFocusGained = useSelectionCursor_upvr_result1_upvr
		module_2.SelectionImageObject = onFocusGained
		onFocusGained = {}
		local tbl = {}
		if any_useState_result1_upvr ~= arg2 then
		else
		end
		tbl.isSelected = true
		tbl.displayText = arg1_4.displayText
		tbl.thumbnail = arg1_4.thumbnail
		tbl.isLoading = arg1_4.isLoading
		tbl.isDisabled = arg1_4.isDisabled
		tbl.index = arg2
		tbl.onActivated = any_useCallback_result1_upvr
		onFocusGained.Slot = React_upvr.createElement(TileSlot_upvr, tbl)
		return React_upvr.createElement(Focusable_upvr.Frame, module_2, onFocusGained)
	end)
	table.insert(any_map_result1, React_upvr.createElement("UIListLayout", {
		key = "Layout";
		VerticalAlignment = Enum.VerticalAlignment.Center;
		FillDirection = Enum.FillDirection.Horizontal;
		HorizontalAlignment = Enum.HorizontalAlignment.Center;
		SortOrder = Enum.SortOrder.LayoutOrder;
		Padding = UDim.new(0, 12);
	}))
	local module = {
		Size = UDim2.fromOffset(var26_upvr, 72);
	}
	var25 = 72
	module.CanvasSize = UDim2.new(0, #arg1.slots * 48 + (#arg1.slots - 1) * 12 + 48, 0, var25)
	module.BackgroundTransparency = 1
	module.ScrollBarImageColor3 = Theme.PlaceHolder.Color
	module.ScrollBarImageTransparency = Theme.PlaceHolder.Transparency
	module.ScrollBarThickness = 0
	module.BorderSizePixel = 0
	module.ClipsDescendants = true
	module.ElasticBehavior = Enum.ElasticBehavior.Always
	module.ScrollingDirection = Enum.ScrollingDirection.X
	module.ref = any_useRef_result1_2_upvw
	module[React_upvr.Event.InputBegan] = arg1.onInputBegan
	module[React_upvr.Event.InputEnded] = arg1.onInputEnded
	module.onFocusChanged = arg1.onFocusChanged
	module.inputBindings = arg1.inputBindings
	module.NextSelectionDown = arg1.NextSelectionDown
	module.NextSelectionUp = arg1.NextSelectionUp
	module.NextSelectionLeft = arg1.NextSelectionLeft
	module.NextSelectionRight = arg1.NextSelectionRight
	module.defaultChild = any_useRefCache_result1_upvr[1]
	module.restorePreviousChildFocus = true
	local module_3 = {}
	local tbl_2 = {}
	var25 = UDim2.fromScale(1, 1)
	tbl_2.Size = var25
	if arg1.darken then
		var25 = Theme.Overlay.Color
	else
		var25 = Theme.PlaceHolder.Color
	end
	tbl_2.BackgroundColor3 = var25
	if arg1.darken then
	else
	end
	tbl_2.BackgroundTransparency = Theme.PlaceHolder.Transparency
	module_3.SlotContainer = React_upvr.createElement("Frame", tbl_2, any_map_result1)
	return React_upvr.createElement(Focusable_upvr.ScrollingFrame, module, module_3)
end