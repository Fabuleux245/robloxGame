-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:10
-- Luau version 6, Types version 3
-- Time taken: 0.003629 seconds

local CoreGui = game:GetService("CoreGui")
local StatsUtils_upvr = require(CoreGui.RobloxGui.Modules.Stats.StatsUtils)
local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
function module_2_upvr.new() -- Line 34
	--[[ Upvalues[2]:
		[1]: module_2_upvr (readonly)
		[2]: StatsUtils_upvr (readonly)
	]]
	local module = {}
	setmetatable(module, module_2_upvr)
	module._frameImageLabel = Instance.new("ImageLabel")
	module._frameImageLabel.Name = "PS_Viewer"
	module._frameImageLabel.Image = "rbxasset://textures/ui/PerformanceStats/BackgroundRounded.png"
	module._frameImageLabel.ScaleType = Enum.ScaleType.Slice
	module._frameImageLabel.SliceCenter = Rect.new(10, 10, 22, 22)
	module._frameImageLabel.BackgroundTransparency = 1
	module._frameImageLabel.ImageColor3 = StatsUtils_upvr.NormalColor
	module._frameImageLabel.ImageTransparency = StatsUtils_upvr.Transparency
	module._textPanel = nil
	module._statType = nil
	module._graph = nil
	return module
end
local FFlagFixStatsViewerMissingMethod_upvr = require(CoreGui.RobloxGui.Modules.Flags.FFlagFixStatsViewerMissingMethod)
function module_2_upvr.OnPerformanceStatsShouldBeVisibleChanged(arg1) -- Line 54
	--[[ Upvalues[1]:
		[1]: FFlagFixStatsViewerMissingMethod_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 3. Error Block 2 start (CF ANALYSIS FAILED)
	arg1._graph:OnPerformanceStatsShouldBeVisibleChanged()
	-- KONSTANTERROR: [3] 3. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 6. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 6. Error Block 3 end (CF ANALYSIS FAILED)
end
function module_2_upvr.GetIsVisible(arg1) -- Line 72
	return arg1._frameImageLabel.Visible
end
function module_2_upvr.GetStatType(arg1) -- Line 76
	return arg1._statType
end
function module_2_upvr.SetSizeAndPosition(arg1, arg2, arg3) -- Line 80
	arg1._frameImageLabel.Size = arg2
	arg1._frameImageLabel.Position = arg3
end
function module_2_upvr.SetParent(arg1, arg2) -- Line 85
	arg1._frameImageLabel.Parent = arg2
end
function module_2_upvr.SetVisible(arg1, arg2) -- Line 89
	arg1._frameImageLabel.Visible = arg2
	if arg1._graph then
		arg1._graph:SetVisible(arg2)
	end
	if arg1._textPanel then
		arg1._textPanel:SetVisible(arg2)
	end
end
local StatsTextPanel_upvr = require(CoreGui.RobloxGui.Modules.Stats.StatsTextPanel)
local udim2_upvr_2 = UDim2.new(0.4, 0, 1, 0)
local udim2_upvr = UDim2.new(0, 0, 0, 0)
local StatsAnnotatedGraph_upvr = require(CoreGui.RobloxGui.Modules.Stats.StatsAnnotatedGraph)
local udim2_upvr_4 = UDim2.new(0.6, 0, 1, 0)
local udim2_upvr_3 = UDim2.new(0.4, 0, 0, 0)
function module_2_upvr.SetStatType(arg1, arg2) -- Line 101
	--[[ Upvalues[7]:
		[1]: StatsTextPanel_upvr (readonly)
		[2]: udim2_upvr_2 (readonly)
		[3]: udim2_upvr (readonly)
		[4]: StatsAnnotatedGraph_upvr (readonly)
		[5]: udim2_upvr_4 (readonly)
		[6]: udim2_upvr_3 (readonly)
		[7]: StatsUtils_upvr (readonly)
	]]
	arg1._statType = arg2
	arg1._frameImageLabel:ClearAllChildren()
	if arg1._textPanel then
		arg1._textPanel:SetVisible(false)
		arg1._textPanel = nil
	end
	arg1._textPanel = StatsTextPanel_upvr.new(arg2)
	arg1._textPanel:PlaceInParent(arg1._frameImageLabel, udim2_upvr_2, udim2_upvr)
	arg1._graph = StatsAnnotatedGraph_upvr.new(arg2, true)
	arg1._graph:PlaceInParent(arg1._frameImageLabel, udim2_upvr_4, udim2_upvr_3)
	arg1._textPanel:SetZIndex(StatsUtils_upvr.TextZIndex)
	arg1._graph:SetZIndex(StatsUtils_upvr.GraphZIndex)
	arg1._graph:SetVisible(arg1._frameImageLabel.Visible)
	arg1._textPanel:SetVisible(arg1._frameImageLabel.Visible)
	arg1:_applyStatsAggregator()
end
function module_2_upvr._applyStatsAggregator(arg1) -- Line 130
	if arg1._aggregator == nil then
	else
		if arg1._textPanel then
			arg1._textPanel:SetStatsAggregator(arg1._aggregator)
		end
		if arg1._graph then
			arg1._graph:SetStatsAggregator(arg1._aggregator)
		end
	end
end
function module_2_upvr.SetStatsAggregator(arg1, arg2) -- Line 144
	arg1._aggregator = arg2
	arg1:_applyStatsAggregator()
end
return module_2_upvr