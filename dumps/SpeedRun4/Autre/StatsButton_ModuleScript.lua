-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:08
-- Luau version 6, Types version 3
-- Time taken: 0.001787 seconds

local CoreGui = game:GetService("CoreGui")
local StyleWidgets_upvr = require(CoreGui.RobloxGui.Modules.StyleWidgets)
local module_upvr = {}
module_upvr.__index = module_upvr
local StatsUtils_upvr = require(CoreGui.RobloxGui.Modules.Stats.StatsUtils)
local StatsMiniTextPanel_upvr = require(CoreGui.RobloxGui.Modules.Stats.StatsMiniTextPanel)
local udim2_upvr_2 = UDim2.new(0.5, 0, 1, -StyleWidgets_upvr.TabSelectionHeight)
local udim2_upvr_3 = UDim2.new(0, 0, 0, 0)
local StatsAnnotatedGraph_upvr = require(CoreGui.RobloxGui.Modules.Stats.StatsAnnotatedGraph)
local udim2_upvr_4 = UDim2.new(0.5, 0, 1, -StyleWidgets_upvr.TabSelectionHeight)
local udim2_upvr = UDim2.new(0.5, 0, 0, 0)
function module_upvr.new(arg1) -- Line 30
	--[[ Upvalues[9]:
		[1]: module_upvr (readonly)
		[2]: StatsUtils_upvr (readonly)
		[3]: StatsMiniTextPanel_upvr (readonly)
		[4]: udim2_upvr_2 (readonly)
		[5]: udim2_upvr_3 (readonly)
		[6]: StatsAnnotatedGraph_upvr (readonly)
		[7]: udim2_upvr_4 (readonly)
		[8]: udim2_upvr (readonly)
		[9]: StyleWidgets_upvr (readonly)
	]]
	local module = {}
	setmetatable(module, module_upvr)
	module._statType = arg1
	module._button = Instance.new("TextButton")
	module._button.Name = "PS_Button"
	module._button.Text = ""
	StatsUtils_upvr.StyleButton(module._button)
	module._textPanel = StatsMiniTextPanel_upvr.new(arg1)
	module._textPanel:PlaceInParent(module._button, udim2_upvr_2, udim2_upvr_3)
	module._graph = StatsAnnotatedGraph_upvr.new(arg1, false)
	module._graph:PlaceInParent(module._button, udim2_upvr_4, udim2_upvr)
	module._textPanel:SetZIndex(StatsUtils_upvr.TextZIndex)
	module._graph:SetZIndex(StatsUtils_upvr.GraphZIndex)
	module._tabSelection = StyleWidgets_upvr.MakeTabSelectionWidget(module._button)
	module._isSelected = false
	module:_updateTabSelectionState()
	return module
end
function module_upvr.OnPerformanceStatsShouldBeVisibleChanged(arg1) -- Line 63
	if arg1._graph then
		arg1._graph:OnPerformanceStatsShouldBeVisibleChanged()
	end
	if arg1._textPanel then
		arg1._textPanel:OnPerformanceStatsShouldBeVisibleChanged()
	end
end
function module_upvr.SetToggleCallbackFunction(arg1, arg2) -- Line 73
	arg1._button.MouseButton1Click:connect(function() -- Line 74
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: arg1 (readonly)
		]]
		arg2(arg1._statType)
	end)
end
function module_upvr.SetSizeAndPosition(arg1, arg2, arg3) -- Line 79
	arg1._button.Size = arg2
	arg1._button.Position = arg3
end
function module_upvr.SetIsSelected(arg1, arg2) -- Line 84
	arg1._isSelected = arg2
	arg1:_updateTabSelectionState()
end
function module_upvr._updateTabSelectionState(arg1) -- Line 89
	arg1._tabSelection.Visible = arg1._isSelected
end
function module_upvr.SetParent(arg1, arg2) -- Line 93
	arg1._button.Parent = arg2
end
function module_upvr.SetStatsAggregator(arg1, arg2) -- Line 97
	arg1._textPanel:SetStatsAggregator(arg2)
	arg1._graph:SetStatsAggregator(arg2)
end
return module_upvr