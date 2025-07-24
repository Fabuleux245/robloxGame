-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:04
-- Luau version 6, Types version 3
-- Time taken: 0.007597 seconds

local Color3_new_result1_upvr_2 = Color3.new(1, 1, 1)
local Color3_new_result1_upvr_3 = Color3.new(1, 1, 1)
local Color3_new_result1_upvr = Color3.new(1, 1, 1)
local udim2_upvr = UDim2.new(1, -18, 0, 2)
local udim2_upvr_2 = UDim2.new(0, 16, 0, 16)
local function _(arg1) -- Line 36, Named "__StyleAndSizeButton"
	--[[ Upvalues[4]:
		[1]: Color3_new_result1_upvr_2 (readonly)
		[2]: Color3_new_result1_upvr (readonly)
		[3]: udim2_upvr (readonly)
		[4]: udim2_upvr_2 (readonly)
	]]
	arg1.TextXAlignment = Enum.TextXAlignment.Center
	arg1.TextColor3 = Color3_new_result1_upvr_2
	arg1.BackgroundTransparency = 1
	arg1.BorderColor3 = Color3_new_result1_upvr
	arg1.BorderSizePixel = 1
	arg1.Position = udim2_upvr
	arg1.Size = udim2_upvr_2
end
local function _(arg1) -- Line 47, Named "__StyleAndSizeLabel"
	--[[ Upvalues[1]:
		[1]: Color3_new_result1_upvr_2 (readonly)
	]]
	arg1.TextXAlignment = Enum.TextXAlignment.Left
	arg1.TextColor3 = Color3_new_result1_upvr_2
	arg1.BackgroundTransparency = 1
	arg1.Position = UDim2.new(0, 5, 0, 0)
	arg1.Size = UDim2.new(1, -10, 1, 0)
end
local function _(arg1) -- Line 56, Named "__StyleRowCellFrame"
	--[[ Upvalues[1]:
		[1]: Color3_new_result1_upvr_3 (readonly)
	]]
	arg1.BorderColor3 = Color3_new_result1_upvr_3
	arg1.BorderSizePixel = 1
	arg1.BackgroundTransparency = 0.6
end
local tbl_upvr = {}
tbl_upvr.__index = tbl_upvr
local udim2_upvr_5 = UDim2.new(0, 0, 0, 0)
local udim2_upvr_4 = UDim2.new(1, -100, 0, 0)
local udim2_upvr_3 = UDim2.new(0, 100, 0, 20)
local function new(arg1) -- Line 74
	--[[ Upvalues[9]:
		[1]: tbl_upvr (readonly)
		[2]: udim2_upvr_5 (readonly)
		[3]: Color3_new_result1_upvr_3 (readonly)
		[4]: Color3_new_result1_upvr_2 (readonly)
		[5]: Color3_new_result1_upvr (readonly)
		[6]: udim2_upvr (readonly)
		[7]: udim2_upvr_2 (readonly)
		[8]: udim2_upvr_4 (readonly)
		[9]: udim2_upvr_3 (readonly)
	]]
	local module_upvr = {}
	setmetatable(module_upvr, tbl_upvr)
	module_upvr._treeViewItem = arg1
	module_upvr._expanded = true
	module_upvr._expansionToggleCallback = nil
	module_upvr._frame = Instance.new("Frame")
	module_upvr._frame.Name = "MemoryAnalyzerRowClassFrame"
	module_upvr._frame.BackgroundTransparency = 1
	module_upvr._buttonFrame = Instance.new("Frame")
	module_upvr._buttonFrame.Name = "ButtonFrame"
	module_upvr._buttonFrame.Parent = module_upvr._frame
	module_upvr._buttonFrame.Position = udim2_upvr_5
	local var11 = (1 + arg1:getStackDepth()) * 20
	module_upvr._buttonFrame.Size = UDim2.new(0, var11, 0, 20)
	local _buttonFrame = module_upvr._buttonFrame
	_buttonFrame.BorderColor3 = Color3_new_result1_upvr_3
	_buttonFrame.BorderSizePixel = 1
	_buttonFrame.BackgroundTransparency = 0.6
	module_upvr._button = Instance.new("TextButton")
	module_upvr._button.Name = "Button"
	module_upvr._button.Parent = module_upvr._buttonFrame
	local _button = module_upvr._button
	_button.TextXAlignment = Enum.TextXAlignment.Center
	_button.TextColor3 = Color3_new_result1_upvr_2
	_button.BackgroundTransparency = 1
	_button.BorderColor3 = Color3_new_result1_upvr
	_button.BorderSizePixel = 1
	_button.Position = udim2_upvr
	_button.Size = udim2_upvr_2
	module_upvr._button.MouseButton1Click:connect(function() -- Line 102
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		module_upvr:__toggleExpansion()
	end)
	module_upvr:__updateButtonState()
	module_upvr._labelFrame = Instance.new("Frame")
	module_upvr._labelFrame.Name = "LabelFrame"
	module_upvr._labelFrame.Parent = module_upvr._frame
	module_upvr._labelFrame.Position = UDim2.new(0, var11, 0, 0)
	module_upvr._labelFrame.Size = UDim2.new(1, -var11 - 100, 0, 20)
	local _labelFrame = module_upvr._labelFrame
	_labelFrame.BorderColor3 = Color3_new_result1_upvr_3
	_labelFrame.BorderSizePixel = 1
	_labelFrame.BackgroundTransparency = 0.6
	module_upvr._labelTextLabel = Instance.new("TextLabel")
	module_upvr._labelTextLabel.Name = "Label"
	module_upvr._labelTextLabel.Parent = module_upvr._labelFrame
	local _labelTextLabel = module_upvr._labelTextLabel
	_labelTextLabel.TextXAlignment = Enum.TextXAlignment.Left
	_labelTextLabel.TextColor3 = Color3_new_result1_upvr_2
	_labelTextLabel.BackgroundTransparency = 1
	_labelTextLabel.Position = UDim2.new(0, 5, 0, 0)
	_labelTextLabel.Size = UDim2.new(1, -10, 1, 0)
	module_upvr._labelTextLabel.Text = arg1:getLabel()
	module_upvr._valueFrame = Instance.new("Frame")
	module_upvr._valueFrame.Name = "ValueFrame"
	module_upvr._valueFrame.Parent = module_upvr._frame
	module_upvr._valueFrame.Position = udim2_upvr_4
	module_upvr._valueFrame.Size = udim2_upvr_3
	local _valueFrame = module_upvr._valueFrame
	_valueFrame.BorderColor3 = Color3_new_result1_upvr_3
	_valueFrame.BorderSizePixel = 1
	_valueFrame.BackgroundTransparency = 0.6
	module_upvr._valueTextLabel = Instance.new("TextLabel")
	module_upvr._valueTextLabel.Name = "Value"
	module_upvr._valueTextLabel.Parent = module_upvr._valueFrame
	local _valueTextLabel = module_upvr._valueTextLabel
	_valueTextLabel.TextXAlignment = Enum.TextXAlignment.Left
	_valueTextLabel.TextColor3 = Color3_new_result1_upvr_2
	_valueTextLabel.BackgroundTransparency = 1
	_valueTextLabel.Position = UDim2.new(0, 5, 0, 0)
	_valueTextLabel.Size = UDim2.new(1, -10, 1, 0)
	module_upvr._valueHasBeenNonZero = false
	module_upvr:updateValue()
	return module_upvr
end
tbl_upvr.new = new
function tbl_upvr.isExpanded(arg1) -- Line 143
	return arg1._expanded
end
function tbl_upvr.valueHasBeenNonZero(arg1) -- Line 147
	return arg1._valueHasBeenNonZero
end
function tbl_upvr.setExpansionToggleCallback(arg1, arg2) -- Line 151
	arg1._expansionToggleCallback = arg2
end
function tbl_upvr.__toggleExpansion(arg1) -- Line 155
	arg1._expanded = not arg1._expanded
	arg1:__updateButtonState()
	if arg1._expansionToggleCallback ~= nil then
		arg1._expansionToggleCallback()
	end
end
function tbl_upvr.__updateButtonState(arg1) -- Line 164
	if #arg1._treeViewItem:getChildren() == 0 then
		arg1._button.Visible = false
	else
		arg1._button.Visible = true
		if arg1._expanded then
			arg1._button.Text = '-'
			return
		end
		arg1._button.Text = '+'
	end
end
function tbl_upvr.updateValue(arg1) -- Line 178
	if 0.001 <= arg1._treeViewItem:getValue() then
		arg1._valueHasBeenNonZero = true
	end
	arg1._valueTextLabel.Text = string.format("%.3f", arg1._treeViewItem:getValue())
end
function tbl_upvr.setZIndex(arg1, arg2) -- Line 190
	arg1._frame.ZIndex = arg2
	arg1._labelTextLabel.ZIndex = arg2
	arg1._valueTextLabel.ZIndex = arg2
end
function tbl_upvr.setRowValue(arg1, arg2) -- Line 196
	arg1._valueTextLabel.Text = string.format("%.3f", arg2)
end
function tbl_upvr.getFrame(arg1) -- Line 200
	return arg1._frame
end
local Color3_new_result1_upvr_5 = Color3.new(0.35, 0.55, 0.35)
local Color3_new_result1_upvr_4 = Color3.new(0.15, 0.35, 0.15)
function tbl_upvr.setRowNumber(arg1, arg2) -- Line 204
	--[[ Upvalues[2]:
		[1]: Color3_new_result1_upvr_5 (readonly)
		[2]: Color3_new_result1_upvr_4 (readonly)
	]]
	if arg2 % 2 == 1 then
		arg1._buttonFrame.BackgroundColor3 = Color3_new_result1_upvr_5
		arg1._labelFrame.BackgroundColor3 = Color3_new_result1_upvr_5
		arg1._valueFrame.BackgroundColor3 = Color3_new_result1_upvr_5
	else
		arg1._buttonFrame.BackgroundColor3 = Color3_new_result1_upvr_4
		arg1._labelFrame.BackgroundColor3 = Color3_new_result1_upvr_4
		arg1._valueFrame.BackgroundColor3 = Color3_new_result1_upvr_4
	end
end
local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
module_2_upvr.Indent = string.rep(' ', 4)
function module_2_upvr.new(arg1) -- Line 227
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local module = {}
	setmetatable(module, module_2_upvr)
	module._frame = Instance.new("Frame")
	module._frame.Name = "MemoryAnalyzerClassFrame"
	module._frame.ZIndex = arg1.ZIndex
	module._frame.BackgroundTransparency = 1
	module._rowsByTreeViewItem = {}
	module._layoutDirty = false
	module._heightChangedCallback = nil
	module._heightInPix = 0
	module._frame.Parent = arg1
	return module
end
function module_2_upvr.getMemoryUsageTree(arg1) -- Line 254
	return nil
end
function module_2_upvr.setHeightChangedCallback(arg1, arg2) -- Line 258
	arg1._heightChangedCallback = arg2
end
function module_2_upvr.__getOrMakeRowForTreeViewItem(arg1, arg2) -- Line 262
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	if arg1._rowsByTreeViewItem[arg2] == nil then
		local any_new_result1 = tbl_upvr.new(arg2)
		any_new_result1:setExpansionToggleCallback(function() -- Line 265
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:__layoutRows()
		end)
		any_new_result1:getFrame().Parent = arg1._frame
		arg1._rowsByTreeViewItem[arg2] = any_new_result1
		arg1._layoutDirty = true
	end
	return arg1._rowsByTreeViewItem[arg2]
end
function module_2_upvr.__recursiveUpdateStatValue(arg1, arg2) -- Line 277
	arg1:__getOrMakeRowForTreeViewItem(arg2):updateValue()
	for _, v in ipairs(arg2:getChildren()) do
		arg1:__recursiveUpdateStatValue(v)
	end
end
function module_2_upvr.renderUpdates(arg1) -- Line 288
	local any_getMemoryUsageTree_result1 = arg1:getMemoryUsageTree()
	if any_getMemoryUsageTree_result1 ~= nil then
		arg1:__recursiveUpdateStatValue(any_getMemoryUsageTree_result1)
	end
	if arg1._layoutDirty then
		arg1:__layoutRows()
	end
end
function module_2_upvr.__layoutRows(arg1) -- Line 300
	arg1._layoutDirty = false
	arg1._heightInPix = 0
	if arg1:getMemoryUsageTree() ~= nil then
		arg1:__recursiveLayoutTreeViewItem(arg1:getMemoryUsageTree(), true)
	end
	arg1._frame.Size = UDim2.new(1, 0, 0, arg1._heightInPix)
	arg1._frame.Position = UDim2.new(0, 0, 0, 0)
	if arg1._heightChangedCallback then
		arg1._heightChangedCallback(arg1._heightInPix)
	end
end
function module_2_upvr.__recursiveLayoutTreeViewItem(arg1, arg2, arg3) -- Line 317
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any___getOrMakeRowForTreeViewItem_result1 = arg1:__getOrMakeRowForTreeViewItem(arg2)
	local any_getFrame_result1 = any___getOrMakeRowForTreeViewItem_result1:getFrame()
	local var41 = arg3
	if var41 then
		var41 = any___getOrMakeRowForTreeViewItem_result1:valueHasBeenNonZero()
	end
	local var42 = var41
	if var42 then
		any_getFrame_result1.Visible = true
		any_getFrame_result1.Size = UDim2.new(1, 0, 0, 20)
		any_getFrame_result1.Position = UDim2.new(0, 0, 0, arg1._heightInPix)
		any___getOrMakeRowForTreeViewItem_result1:setZIndex(arg1._frame.ZIndex)
		any___getOrMakeRowForTreeViewItem_result1:setRowNumber(arg1._heightInPix / 20)
		arg1._heightInPix += 20
	else
		any_getFrame_result1.Visible = false
	end
	for _, v_2 in ipairs(arg2:getChildren()) do
		arg1:__recursiveLayoutTreeViewItem(v_2, any___getOrMakeRowForTreeViewItem_result1:isExpanded() and var42)
		local _
	end
end
function module_2_upvr.getHeightInPix(arg1) -- Line 343
	return arg1._heightInPix
end
return module_2_upvr