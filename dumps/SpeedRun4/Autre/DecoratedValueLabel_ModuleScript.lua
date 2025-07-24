-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:05
-- Luau version 6, Types version 3
-- Time taken: 0.002585 seconds

local StatsUtils_upvr = require(game:GetService("CoreGui").RobloxGui.Modules.Stats.StatsUtils)
local RobloxTranslator_upvr = require(game:GetService("CorePackages").Workspace.Packages.RobloxTranslator)
function LocalizedGetKey(arg1) -- Line 16
	--[[ Upvalues[1]:
		[1]: RobloxTranslator_upvr (readonly)
	]]
	local var3_upvw = arg1
	pcall(function() -- Line 18
		--[[ Upvalues[3]:
			[1]: var3_upvw (read and write)
			[2]: RobloxTranslator_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		var3_upvw = RobloxTranslator_upvr:FormatByKey(arg1)
	end)
	return var3_upvw
end
local pcall_result1, pcall_result2 = pcall(function() -- Line 25
	return settings():GetFFlag("UseNotificationsLocalization")
end)
local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
local var9_upvr = pcall_result1 and pcall_result2
function module_2_upvr.new(arg1, arg2) -- Line 31
	--[[ Upvalues[3]:
		[1]: module_2_upvr (readonly)
		[2]: var9_upvr (readonly)
		[3]: StatsUtils_upvr (readonly)
	]]
	local module = {}
	setmetatable(module, module_2_upvr)
	module._frame = Instance.new("Frame")
	module._frame.Name = "PS_DecoratedValueLabel"
	module._frame.BackgroundTransparency = 1
	if var9_upvr == true then
		module._valueName = LocalizedGetKey(arg2)
	else
		module._valueName = arg2
	end
	module._statType = arg1
	module._decorationFrame = Instance.new("Frame")
	module._decorationFrame.Name = "PS_Decoration"
	module._decorationFrame.Parent = module._frame
	module._decorationFrame.Position = UDim2.new(0, 0, 0.5, -StatsUtils_upvr.DecorationSize / 2)
	module._decorationFrame.Size = UDim2.new(0, StatsUtils_upvr.DecorationSize, 0, StatsUtils_upvr.DecorationSize)
	module._decorationFrame.BackgroundTransparency = 1
	module._label = Instance.new("TextLabel")
	module._label.Name = "Label"
	module._label.Parent = module._frame
	module._label.Position = UDim2.new(0, StatsUtils_upvr.DecorationSize + StatsUtils_upvr.DecorationMargin, 0, 0)
	module._label.Size = UDim2.new(1, -(StatsUtils_upvr.DecorationSize + StatsUtils_upvr.DecorationMargin), 1, 0)
	module._label.FontSize = StatsUtils_upvr.PanelValueFontSize
	module._label.TextXAlignment = Enum.TextXAlignment.Left
	module._label.TextYAlignment = Enum.TextYAlignment.Center
	StatsUtils_upvr.StyleTextWidget(module._label)
	return module
end
function module_2_upvr.SetZIndex(arg1, arg2) -- Line 71
	arg1._frame.ZIndex = arg2
	arg1._decorationFrame.ZIndex = arg2
	arg1._label.ZIndex = arg2
end
function module_2_upvr.PlaceInParent(arg1, arg2, arg3, arg4) -- Line 78
	arg1._frame.Parent = arg2
	arg1._frame.Size = arg3
	arg1._frame.Position = arg4
end
function module_2_upvr.GetDecorationFrame(arg1) -- Line 85
	return arg1._decorationFrame
end
function module_2_upvr.SetValue(arg1, arg2) -- Line 89
	--[[ Upvalues[1]:
		[1]: StatsUtils_upvr (readonly)
	]]
	arg1._label.Text = string.format("%s: %s", arg1._valueName, StatsUtils_upvr.FormatTypedValue(arg2, arg1._statType))
end
return module_2_upvr