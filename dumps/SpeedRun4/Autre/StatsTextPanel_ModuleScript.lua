-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:09
-- Luau version 6, Types version 3
-- Time taken: 0.005404 seconds

local CoreGui = game:GetService("CoreGui")
local StatsUtils_upvr = require(CoreGui.RobloxGui.Modules.Stats.StatsUtils)
local DecoratedValueLabel_upvr = require(CoreGui.RobloxGui.Modules.Stats.DecoratedValueLabel)
local TextPanelTopMarginPix = StatsUtils_upvr.TextPanelTopMarginPix
local var5 = TextPanelTopMarginPix + StatsUtils_upvr.TextPanelTitleHeightY
local var6 = var5 + StatsUtils_upvr.TextPanelLegendItemHeightY
local udim2_upvr_5 = UDim2.new(1, -StatsUtils_upvr.TextPanelLeftMarginPix * 2, 0, StatsUtils_upvr.TextPanelLegendItemHeightY)
local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
local udim2_upvr_2 = UDim2.new(1, -StatsUtils_upvr.TextPanelLeftMarginPix * 2, 0, StatsUtils_upvr.TextPanelTitleHeightY)
local udim2_upvr = UDim2.new(0, StatsUtils_upvr.TextPanelLeftMarginPix, 0, TextPanelTopMarginPix)
function module_2_upvr.new(arg1) -- Line 61
	--[[ Upvalues[4]:
		[1]: module_2_upvr (readonly)
		[2]: StatsUtils_upvr (readonly)
		[3]: udim2_upvr_2 (readonly)
		[4]: udim2_upvr (readonly)
	]]
	local module = {}
	setmetatable(module, module_2_upvr)
	module._statType = arg1
	module._frame = Instance.new("Frame")
	module._frame.BackgroundTransparency = 1
	module._frame.ZIndex = StatsUtils_upvr.TextZIndex
	module._titleLabel = Instance.new("TextLabel")
	StatsUtils_upvr.StyleTextWidget(module._titleLabel)
	module._titleLabel.FontSize = StatsUtils_upvr.PanelTitleFontSize
	module._titleLabel.Text = module:_getTitle()
	module._titleLabel.Parent = module._frame
	module._titleLabel.Size = udim2_upvr_2
	module._titleLabel.Position = udim2_upvr
	module._titleLabel.TextXAlignment = Enum.TextXAlignment.Left
	module._titleLabel.TextYAlignment = Enum.TextYAlignment.Top
	module:_addCurrentValueWidget()
	module:_addTargetValueWidget()
	module:_addAverageValueWidget()
	return module
end
function module_2_upvr._getTarget(arg1) -- Line 94
	if arg1._performanceStats == nil then
		return 0
	end
	local SOME = arg1._performanceStats:FindFirstChild(arg1._statMaxName)
	if SOME == nil then
		return 0
	end
	return SOME:GetValue()
end
local udim2_upvr_4 = UDim2.new(0, StatsUtils_upvr.TextPanelLeftMarginPix, 0, var5)
function module_2_upvr._addCurrentValueWidget(arg1) -- Line 110
	--[[ Upvalues[4]:
		[1]: DecoratedValueLabel_upvr (readonly)
		[2]: udim2_upvr_5 (readonly)
		[3]: udim2_upvr_4 (readonly)
		[4]: StatsUtils_upvr (readonly)
	]]
	arg1._currentValueWidget = DecoratedValueLabel_upvr.new(arg1._statType, "Current")
	arg1._currentValueWidget:PlaceInParent(arg1._frame, udim2_upvr_5, udim2_upvr_4)
	local ImageLabel = Instance.new("ImageLabel")
	ImageLabel.Position = UDim2.new(0.5, -StatsUtils_upvr.OvalKeySize / 2, 0.5, -StatsUtils_upvr.OvalKeySize / 2)
	ImageLabel.Size = UDim2.new(0, StatsUtils_upvr.OvalKeySize, 0, StatsUtils_upvr.OvalKeySize)
	ImageLabel.Parent = arg1._currentValueWidget:GetDecorationFrame()
	ImageLabel.BackgroundTransparency = 1
	ImageLabel.Image = "rbxasset://textures/ui/PerformanceStats/OvalKey.png"
	ImageLabel.BorderSizePixel = 0
	arg1._currentValueDecoration = ImageLabel
end
local udim2_upvr_6 = UDim2.new(0, StatsUtils_upvr.TextPanelLeftMarginPix, 0, var6)
function module_2_upvr._addTargetValueWidget(arg1) -- Line 132
	--[[ Upvalues[4]:
		[1]: DecoratedValueLabel_upvr (readonly)
		[2]: udim2_upvr_5 (readonly)
		[3]: udim2_upvr_6 (readonly)
		[4]: StatsUtils_upvr (readonly)
	]]
	arg1._targetValueWidget = DecoratedValueLabel_upvr.new(arg1._statType, "Target")
	arg1._targetValueWidget:PlaceInParent(arg1._frame, udim2_upvr_5, udim2_upvr_6)
	local ImageLabel_2 = Instance.new("ImageLabel")
	ImageLabel_2.Position = UDim2.new(0.5, -StatsUtils_upvr.TargetKeyWidth / 2, 0.5, -StatsUtils_upvr.TargetKeyHeight / 2)
	ImageLabel_2.Size = UDim2.new(0, StatsUtils_upvr.TargetKeyWidth, 0, StatsUtils_upvr.TargetKeyHeight)
	ImageLabel_2.Parent = arg1._targetValueWidget:GetDecorationFrame()
	ImageLabel_2.BackgroundTransparency = 1
	ImageLabel_2.Image = "rbxasset://textures/ui/PerformanceStats/TargetKey.png"
end
local udim2_upvr_3 = UDim2.new(0, StatsUtils_upvr.TextPanelLeftMarginPix, 0, var6 + StatsUtils_upvr.TextPanelLegendItemHeightY)
function module_2_upvr._addAverageValueWidget(arg1) -- Line 152
	--[[ Upvalues[4]:
		[1]: DecoratedValueLabel_upvr (readonly)
		[2]: udim2_upvr_5 (readonly)
		[3]: udim2_upvr_3 (readonly)
		[4]: StatsUtils_upvr (readonly)
	]]
	arg1._averageValueWidget = DecoratedValueLabel_upvr.new(arg1._statType, "Average")
	arg1._averageValueWidget:PlaceInParent(arg1._frame, udim2_upvr_5, udim2_upvr_3)
	local Frame = Instance.new("Frame")
	Frame.Position = UDim2.new(0, 0, 0.5, -StatsUtils_upvr.GraphAverageLineTotalThickness / 2)
	Frame.Size = UDim2.new(1, 0, 0, StatsUtils_upvr.GraphAverageLineInnerThickness)
	Frame.Parent = arg1._averageValueWidget:GetDecorationFrame()
	StatsUtils_upvr.StyleAverageLine(Frame)
end
function module_2_upvr._getTitle(arg1) -- Line 170
	--[[ Upvalues[1]:
		[1]: StatsUtils_upvr (readonly)
	]]
	return StatsUtils_upvr.TypeToName[arg1._statType]
end
function module_2_upvr.PlaceInParent(arg1, arg2, arg3, arg4) -- Line 174
	arg1._frame.Position = arg4
	arg1._frame.Size = arg3
	arg1._frame.Parent = arg2
end
function module_2_upvr.SetStatsAggregator(arg1, arg2) -- Line 181
	if arg1._aggregator then
		arg1._aggregator:RemoveListener(arg1._listenerId)
		arg1._listenerId = nil
		arg1._aggregator = nil
	end
	arg1._aggregator = arg2
	arg1:_refreshVisibility()
end
function module_2_upvr.SetVisible(arg1, arg2) -- Line 193
	arg1._frame.Visible = arg2
	arg1:_refreshVisibility()
end
function module_2_upvr._shouldBeVisible(arg1) -- Line 198
	--[[ Upvalues[1]:
		[1]: StatsUtils_upvr (readonly)
	]]
	if StatsUtils_upvr.PerformanceStatsShouldBeVisible() then
		return arg1._frame.Visible
	end
	return false
end
function module_2_upvr._refreshVisibility(arg1) -- Line 207
	if arg1:_shouldBeVisible() then
		arg1:_startListening()
		arg1:_updateFromAggregator()
	else
		arg1:_stopListening()
	end
end
if require(CoreGui.RobloxGui.Modules.Flags.FFlagFixStatsViewerMissingMethod) then
	function module_2_upvr.OnPerformanceStatsShouldBeVisibleChanged(arg1) -- Line 217
		arg1:_refreshVisibility()
	end
end
function module_2_upvr._stopListening(arg1) -- Line 222
	if arg1._aggregator == nil then
	else
		if arg1._listenerId == nil then return end
		arg1._aggregator:RemoveListener(arg1._listenerId)
		arg1._listenerId = nil
	end
end
function module_2_upvr._startListening(arg1) -- Line 235
	if arg1._aggregator == nil then
	else
		if arg1._listenerId ~= nil then return end
		arg1._listenerId = arg1._aggregator:AddListener(function() -- Line 244
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:_updateFromAggregator()
		end)
	end
end
function module_2_upvr._updateFromAggregator(arg1) -- Line 249
	--[[ Upvalues[1]:
		[1]: StatsUtils_upvr (readonly)
	]]
	local var20 = 0
	local var21 = 0
	local var22 = 0
	if arg1._aggregator ~= nil then
		var20 = arg1._aggregator:GetLatestValue()
		var21 = arg1._aggregator:GetAverage()
		var22 = arg1._aggregator:GetTarget()
	end
	arg1._currentValueWidget:SetValue(var20)
	arg1._targetValueWidget:SetValue(var22)
	arg1._averageValueWidget:SetValue(var21)
	arg1._currentValueDecoration.ImageColor3 = StatsUtils_upvr.GetColorForValue(var20, var22)
end
function module_2_upvr.SetZIndex(arg1, arg2) -- Line 268
	arg1._frame.ZIndex = arg2
	arg1._titleLabel.ZIndex = arg2
	arg1._currentValueWidget:SetZIndex(arg2)
	arg1._averageValueWidget:SetZIndex(arg2)
end
return module_2_upvr