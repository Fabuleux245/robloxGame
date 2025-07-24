-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:40
-- Luau version 6, Types version 3
-- Time taken: 0.001166 seconds

local CorePackages = game:GetService("CorePackages")
local React_upvr = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.Packages.UIBlox)
local withTooltip_upvr = UIBlox.App.Dialog.TooltipV2.withTooltip
local CoreGui_upvr = game:GetService("CoreGui")
local TooltipOrientation_upvr = UIBlox.App.Dialog.Enum.TooltipOrientation
return React_upvr.forwardRef(function(arg1, arg2) -- Line 9
	--[[ Upvalues[4]:
		[1]: withTooltip_upvr (readonly)
		[2]: CoreGui_upvr (readonly)
		[3]: TooltipOrientation_upvr (readonly)
		[4]: React_upvr (readonly)
	]]
	local module = {}
	module.ref = arg2
	module.headerText = arg1.headerText
	module.bodyText = arg1.bodyText
	return withTooltip_upvr(module, {
		DisplayOrder = 10;
		active = arg1.shouldShowTooltip;
		guiTarget = CoreGui_upvr;
		preferredOrientation = TooltipOrientation_upvr.Bottom;
	}, function(arg1_2) -- Line 20
		--[[ Upvalues[1]:
			[1]: React_upvr (copied, readonly)
		]]
		local module_2 = {
			Size = UDim2.new(1, 0, 1, 0);
			BackgroundTransparency = 1;
		}
		module_2[React_upvr.Change.AbsoluteSize] = arg1_2
		module_2[React_upvr.Change.AbsolutePosition] = arg1_2
		return React_upvr.createElement("Frame", module_2)
	end)
end)