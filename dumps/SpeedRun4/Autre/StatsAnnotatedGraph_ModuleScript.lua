-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:08
-- Luau version 6, Types version 3
-- Time taken: 0.003832 seconds

local CoreGui = game:GetService("CoreGui")
local StatsUtils_upvr = require(CoreGui.RobloxGui.Modules.Stats.StatsUtils)
local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
local BarGraph_upvr = require(CoreGui.RobloxGui.Modules.Stats.BarGraph)
function module_2_upvr.new(arg1, arg2) -- Line 24
	--[[ Upvalues[3]:
		[1]: module_2_upvr (readonly)
		[2]: StatsUtils_upvr (readonly)
		[3]: BarGraph_upvr (readonly)
	]]
	local module = {}
	setmetatable(module, module_2_upvr)
	module._statType = arg1
	module._statMaxName = StatsUtils_upvr.StatMaxNames[arg1]
	module._isMaximized = arg2
	module._values = {}
	module._average = 0
	module._target = 0
	module._axisMax = 0
	module._frame = Instance.new("Frame")
	module._frame.Name = "PS_AnnotatedGraph"
	module._frame.BackgroundTransparency = 1
	module._frame.ZIndex = StatsUtils_upvr.GraphZIndex
	module._topLabel = Instance.new("TextLabel")
	module._topLabel.Name = "PS_TopAxisLabel"
	module._topLabel.Parent = module._frame
	module._topLabel.TextXAlignment = Enum.TextXAlignment.Left
	module._topLabel.TextYAlignment = Enum.TextYAlignment.Top
	module._topLabel.FontSize = StatsUtils_upvr.PanelGraphFontSize
	module._bottomLabel = Instance.new("TextLabel")
	module._bottomLabel.Name = "PS_BottomAxisLabel"
	module._bottomLabel.Parent = module._frame
	module._bottomLabel.TextXAlignment = Enum.TextXAlignment.Left
	module._bottomLabel.TextYAlignment = Enum.TextYAlignment.Bottom
	module._bottomLabel.FontSize = StatsUtils_upvr.PanelGraphFontSize
	module._graph = BarGraph_upvr.new(arg2)
	StatsUtils_upvr.StyleTextWidget(module._topLabel)
	StatsUtils_upvr.StyleTextWidget(module._bottomLabel)
	module:_layoutElements()
	return module
end
function module_2_upvr.SetZIndex(arg1, arg2) -- Line 71
	arg1._frame.ZIndex = arg2
	arg1._topLabel.ZIndex = arg2
	arg1._bottomLabel.ZIndex = arg2
	arg1._graph:SetZIndex(arg2)
end
function module_2_upvr._layoutElements(arg1) -- Line 78
	local var6
	if arg1._isMaximized then
		var6 = 30
		arg1._topLabel.Visible = true
		arg1._bottomLabel.Visible = true
	else
		var6 = 0
		arg1._topLabel.Visible = false
		arg1._bottomLabel.Visible = false
	end
	arg1._topLabel.Size = UDim2.new(0, var6, 0.333, -20)
	arg1._topLabel.Position = UDim2.new(1, -(10 + var6), 0, 10)
	arg1._bottomLabel.Size = UDim2.new(0, var6, 0.333, -20)
	arg1._bottomLabel.Position = UDim2.new(1, -(10 + var6), 0.666, 10)
	arg1._graph:PlaceInParent(arg1._frame, UDim2.new(1, -(20 + var6), 1, -20), UDim2.new(0, 10, 0, 10))
end
function module_2_upvr.PlaceInParent(arg1, arg2, arg3, arg4) -- Line 108
	arg1._frame.Position = arg4
	arg1._frame.Size = arg3
	arg1._frame.Parent = arg2
end
function module_2_upvr._getTarget(arg1) -- Line 114
	if arg1._performanceStats == nil then
		return 0
	end
	local SOME = arg1._performanceStats:FindFirstChild(arg1._statMaxName)
	if SOME == nil then
		return 0
	end
	return SOME:GetValue()
end
function module_2_upvr._render(arg1) -- Line 128
	arg1._graph:SetAxisMax(arg1._axisMax)
	arg1._graph:SetValues(arg1._values)
	arg1._graph:SetAverage(arg1._average)
	arg1._graph:SetTarget(arg1._target)
	arg1._graph:Render()
	arg1._topLabel.Text = string.format("%.2f", arg1._axisMax)
	arg1._bottomLabel.Text = string.format("%.2f", 0)
end
function module_2_upvr._calculateAxisMax(arg1) -- Line 140
	local var8 = arg1._target * 2
	local any__recursiveGetOrderOfMagnitude_result1 = arg1:_recursiveGetOrderOfMagnitude(1, var8)
	arg1._axisMax = math.floor(0.5 + var8 / any__recursiveGetOrderOfMagnitude_result1) * any__recursiveGetOrderOfMagnitude_result1
end
function module_2_upvr.SetStatsAggregator(arg1, arg2) -- Line 150
	if arg1._aggregator then
		arg1._aggregator:RemoveListener(arg1._listenerId)
		arg1._listenerId = nil
		arg1._aggregator = nil
	end
	arg1._aggregator = arg2
	arg1:_refreshVisibility()
end
function module_2_upvr._stopListening(arg1) -- Line 162
	if arg1._aggregator == nil then
	else
		if arg1._listenerId == nil then return end
		arg1._aggregator:RemoveListener(arg1._listenerId)
		arg1._listenerId = nil
	end
end
function module_2_upvr._startListening(arg1) -- Line 175
	if arg1._aggregator == nil then
	else
		if arg1._listenerId ~= nil then return end
		arg1._listenerId = arg1._aggregator:AddListener(function() -- Line 184
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:_updateValuesAndRender()
		end)
	end
end
function module_2_upvr._shouldBeVisible(arg1) -- Line 189
	--[[ Upvalues[1]:
		[1]: StatsUtils_upvr (readonly)
	]]
	if StatsUtils_upvr.PerformanceStatsShouldBeVisible() then
		return arg1._frame.Visible
	end
	return false
end
function module_2_upvr.SetVisible(arg1, arg2) -- Line 197
	arg1._frame.Visible = arg2
	arg1:_refreshVisibility()
end
function module_2_upvr._refreshVisibility(arg1) -- Line 202
	if arg1:_shouldBeVisible() then
		arg1:_startListening()
		arg1:_updateValuesAndRender()
	else
		arg1:_stopListening()
	end
end
function module_2_upvr.OnPerformanceStatsShouldBeVisibleChanged(arg1) -- Line 211
	arg1:_refreshVisibility()
end
function module_2_upvr._recursiveGetOrderOfMagnitude(arg1, arg2, arg3) -- Line 215
	if arg3 < arg2 then
		return arg1:_recursiveGetOrderOfMagnitude(arg2 / 10, arg3)
	end
	if arg3 <= arg2 * 10 then
		return arg2
	end
	return arg1:_recursiveGetOrderOfMagnitude(arg2 * 10, arg3)
end
function module_2_upvr._updateValuesAndRender(arg1) -- Line 227
	arg1._values = {}
	arg1._average = 0
	arg1._target = 0
	if arg1._aggregator ~= nil then
		arg1._values = arg1._aggregator:GetValues()
		arg1._average = arg1._aggregator:GetAverage()
		arg1._target = arg1._aggregator:GetTarget()
	end
	arg1:_calculateAxisMax()
	arg1:_render()
end
return module_2_upvr