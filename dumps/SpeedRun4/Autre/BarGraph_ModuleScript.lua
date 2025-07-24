-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:03
-- Luau version 6, Types version 3
-- Time taken: 0.003546 seconds

local StatsUtils_upvr = require(game:GetService("CoreGui").RobloxGui.Modules.Stats.StatsUtils)
local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.new(arg1) -- Line 23
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local module = {}
	setmetatable(module, module_upvr)
	module._barFrame = Instance.new("Frame")
	module._barFrame.Name = "PS_BarFrame"
	module._barFrame.BackgroundTransparency = 1
	module._lineFrame = Instance.new("Frame")
	module._lineFrame.Name = "PS_LineFrame"
	module._lineFrame.BackgroundTransparency = 1
	module._showExtras = arg1
	module._values = {}
	module._bars = {}
	module._average = 0
	module._target = 0
	if module._showExtras then
		module:_addGraphTarget()
		module:_addGraphAverage()
	end
	return module
end
function module_upvr.SetZIndex(arg1, arg2) -- Line 53
	arg1._barFrame.ZIndex = arg2
	arg1._lineFrame.ZIndex = arg2 + 1
	if arg1._showExtras then
		arg1._targetLine.ZIndex = arg1._lineFrame.ZIndex
		arg1._averageLine.ZIndex = arg1._lineFrame.ZIndex
	end
end
function module_upvr.PlaceInParent(arg1, arg2, arg3, arg4) -- Line 62
	arg1._barFrame.Position = arg4
	arg1._barFrame.Size = arg3
	arg1._barFrame.Parent = arg2
	arg1._lineFrame.Position = arg4
	arg1._lineFrame.Size = arg3
	arg1._lineFrame.Parent = arg2
end
function module_upvr.SetAxisMax(arg1, arg2) -- Line 71
	arg1._axisMax = arg2
end
function module_upvr.SetValues(arg1, arg2) -- Line 75
	arg1._values = arg2
end
function module_upvr.SetAverage(arg1, arg2) -- Line 79
	arg1._average = arg2
end
function module_upvr.SetTarget(arg1, arg2) -- Line 83
	arg1._target = arg2
	arg1:_moveGraphTarget()
end
function module_upvr._updateBarCount(arg1, arg2) -- Line 90
	local tbl = {}
	local len = #arg1._bars
	for i = 1, len do
		if i <= len then
			table.insert(tbl, arg1._bars[i])
		else
			arg1._bars[i].Destroy()
		end
	end
	for i_2 = len + 1, arg2 do
		table.insert(tbl, arg1:_makeNthBar(i_2))
	end
	arg1._bars = tbl
end
function module_upvr.Render(arg1) -- Line 113
	local len_2 = #arg1._values
	arg1:_updateBarCount(len_2)
	for i_3, v in ipairs(arg1._values) do
		arg1:_updateBar(i_3, v, len_2)
	end
	if arg1._showExtras then
		arg1:_moveGraphAverage()
	end
end
function module_upvr._addGraphTarget(arg1) -- Line 128
	--[[ Upvalues[1]:
		[1]: StatsUtils_upvr (readonly)
	]]
	local ImageLabel = Instance.new("ImageLabel")
	ImageLabel.Name = "TargetLine"
	ImageLabel.Size = UDim2.new(1, 0, 0, StatsUtils_upvr.GraphTargetLineInnerThickness)
	ImageLabel.Image = "rbxasset://textures/ui/PerformanceStats/TargetLine.png"
	ImageLabel.BackgroundTransparency = 1
	ImageLabel.Parent = arg1._lineFrame
	ImageLabel.ZIndex = arg1._lineFrame.ZIndex
	ImageLabel.BorderSizePixel = 0
	ImageLabel.Changed:connect(function() -- Line 140
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:_updateTargetLineImageSize()
	end)
	arg1._targetLine = ImageLabel
	arg1:_updateTargetLineImageSize()
end
function module_upvr._updateTargetLineImageSize(arg1) -- Line 148
	arg1._targetLine.ImageRectSize = arg1._targetLine.AbsoluteSize
end
function module_upvr._addGraphAverage(arg1) -- Line 152
	--[[ Upvalues[1]:
		[1]: StatsUtils_upvr (readonly)
	]]
	local Frame_2 = Instance.new("Frame")
	Frame_2.Name = "AverageLine"
	Frame_2.Size = UDim2.new(1, 0, 0, StatsUtils_upvr.GraphAverageLineInnerThickness)
	Frame_2.Parent = arg1._lineFrame
	Frame_2.ZIndex = arg1._lineFrame.ZIndex
	StatsUtils_upvr.StyleAverageLine(Frame_2)
	arg1._averageLine = Frame_2
end
function module_upvr._moveGraphTarget(arg1) -- Line 166
	--[[ Upvalues[1]:
		[1]: StatsUtils_upvr (readonly)
	]]
	if arg1._targetLine == nil then
	else
		arg1._targetLine.Position = UDim2.new(0, 0, (arg1._axisMax - arg1._target) / arg1._axisMax, -StatsUtils_upvr.GraphTargetLineInnerThickness / 2)
	end
end
function module_upvr._moveGraphAverage(arg1) -- Line 177
	--[[ Upvalues[1]:
		[1]: StatsUtils_upvr (readonly)
	]]
	if arg1._averageLine == nil then
	else
		arg1._averageLine.Position = UDim2.new(0, 0, (arg1._axisMax - math.min(arg1._average, arg1._axisMax)) / arg1._axisMax, -StatsUtils_upvr.GraphAverageLineTotalThickness / 2)
	end
end
function module_upvr._makeNthBar(arg1, arg2) -- Line 192
	local Frame = Instance.new("Frame")
	Frame.Name = string.format("Bar_%d", arg2 - 1)
	Frame.Parent = arg1._barFrame
	Frame.ZIndex = arg1._barFrame.ZIndex
	Frame.BorderSizePixel = 0
	return Frame
end
function module_upvr._updateBar(arg1, arg2, arg3, arg4) -- Line 203
	--[[ Upvalues[1]:
		[1]: StatsUtils_upvr (readonly)
	]]
	local var22 = arg1._bars[arg2]
	local maximum = math.max(0, math.min(arg3, arg1._axisMax))
	var22.Position = UDim2.new((arg2 - 1) / arg4, 0, (arg1._axisMax - maximum) / arg1._axisMax, 0)
	var22.Size = UDim2.new(1 / arg4, 0, maximum / arg1._axisMax, 0)
	var22.BackgroundColor3 = StatsUtils_upvr.GetColorForValue(arg3, arg1._target)
end
return module_upvr