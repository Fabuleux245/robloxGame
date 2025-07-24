-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:09
-- Luau version 6, Types version 3
-- Time taken: 0.002525 seconds

local StatsUtils_upvr = require(game:GetService("CoreGui").RobloxGui.Modules.Stats.StatsUtils)
local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
local udim2_upvr = UDim2.new(1, -20, 0.4, 0)
local udim2_upvr_2 = UDim2.new(0, 10, 0.15, 0)
local udim2_upvr_3 = UDim2.new(1, -20, 0.3, 0)
local udim2_upvr_4 = UDim2.new(0, 10, 0.55, 0)
function module_2_upvr.new(arg1) -- Line 43
	--[[ Upvalues[6]:
		[1]: module_2_upvr (readonly)
		[2]: StatsUtils_upvr (readonly)
		[3]: udim2_upvr (readonly)
		[4]: udim2_upvr_2 (readonly)
		[5]: udim2_upvr_3 (readonly)
		[6]: udim2_upvr_4 (readonly)
	]]
	local module = {}
	setmetatable(module, module_2_upvr)
	module._statType = arg1
	module._frame = Instance.new("Frame")
	module._frame.Name = "StatsMiniTextPanelClass"
	module._frame.BackgroundTransparency = 1
	module._frame.ZIndex = StatsUtils_upvr.TextZIndex
	module._titleLabel = Instance.new("TextLabel")
	module._titleLabel.Name = "TitleLabel"
	module._valueLabel = Instance.new("TextLabel")
	module._valueLabel.Name = "ValueLabel"
	StatsUtils_upvr.StyleTextWidget(module._titleLabel)
	StatsUtils_upvr.StyleTextWidget(module._valueLabel)
	module._titleLabel.FontSize = StatsUtils_upvr.MiniPanelTitleFontSize
	module._titleLabel.Text = module:_getTitle()
	module._titleLabel.Parent = module._frame
	module._titleLabel.Size = udim2_upvr
	module._titleLabel.Position = udim2_upvr_2
	module._titleLabel.TextXAlignment = Enum.TextXAlignment.Left
	module._valueLabel.FontSize = StatsUtils_upvr.MiniPanelValueFontSize
	module._valueLabel.Text = '0'
	module._valueLabel.Parent = module._frame
	module._valueLabel.Size = udim2_upvr_3
	module._valueLabel.Position = udim2_upvr_4
	module._valueLabel.TextXAlignment = Enum.TextXAlignment.Left
	return module
end
function module_2_upvr.SetZIndex(arg1, arg2) -- Line 80
	arg1._frame.ZIndex = arg2
	arg1._titleLabel.ZIndex = arg2
	arg1.ZIndex = arg2
end
function module_2_upvr._getTitle(arg1) -- Line 86
	--[[ Upvalues[1]:
		[1]: StatsUtils_upvr (readonly)
	]]
	return StatsUtils_upvr.TypeToShortName[arg1._statType]
end
function module_2_upvr.PlaceInParent(arg1, arg2, arg3, arg4) -- Line 90
	arg1._frame.Position = arg4
	arg1._frame.Size = arg3
	arg1._frame.Parent = arg2
end
function module_2_upvr.SetStatsAggregator(arg1, arg2) -- Line 96
	if arg1._aggregator then
		arg1._aggregator:RemoveListener(arg1._listenerId)
		arg1._listenerId = nil
		arg1._aggregator = nil
	end
	arg1._aggregator = arg2
	arg1:_refreshVisibility()
end
function module_2_upvr.SetVisible(arg1, arg2) -- Line 108
	arg1.frame.Visible = arg2
	arg1:_refreshVisibility()
end
function module_2_upvr._shouldBeVisible(arg1) -- Line 113
	--[[ Upvalues[1]:
		[1]: StatsUtils_upvr (readonly)
	]]
	if StatsUtils_upvr.PerformanceStatsShouldBeVisible() then
		return arg1._frame.Visible
	end
	return false
end
function module_2_upvr._refreshVisibility(arg1) -- Line 122
	if arg1:_shouldBeVisible() then
		arg1:_startListening()
		arg1:_updateFromAggregator()
	else
		arg1:_stopListening()
	end
end
function module_2_upvr._stopListening(arg1) -- Line 131
	if arg1._aggregator == nil then
	else
		if arg1._listenerId == nil then return end
		arg1._aggregator:RemoveListener(arg1._listenerId)
		arg1._listenerId = nil
	end
end
function module_2_upvr._startListening(arg1) -- Line 144
	if arg1._aggregator == nil then
	else
		if arg1._listenerId ~= nil then return end
		arg1._listenerId = arg1._aggregator:AddListener(function() -- Line 153
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:_updateFromAggregator()
		end)
	end
end
function module_2_upvr.OnPerformanceStatsShouldBeVisibleChanged(arg1) -- Line 158
	arg1:_refreshVisibility()
end
function module_2_upvr._updateFromAggregator(arg1) -- Line 162
	--[[ Upvalues[1]:
		[1]: StatsUtils_upvr (readonly)
	]]
	local var10
	if arg1._aggregator ~= nil then
		var10 = arg1._aggregator:GetLatestValue()
	else
		var10 = 0
	end
	arg1._valueLabel.Text = StatsUtils_upvr.FormatTypedValue(var10, arg1._statType)
end
return module_2_upvr