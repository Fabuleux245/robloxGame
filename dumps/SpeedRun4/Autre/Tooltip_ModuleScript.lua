-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:20
-- Luau version 6, Types version 3
-- Time taken: 0.001467 seconds

local CorePackages = game:GetService("CorePackages")
local UIBlox = require(CorePackages.Packages.UIBlox)
local withTooltip_upvr = UIBlox.App.Dialog.TooltipV2.withTooltip
local TooltipOrientation_upvr = UIBlox.App.Dialog.Enum.TooltipOrientation
local React_upvr = require(CorePackages.Packages.React)
return function(arg1) -- Line 11, Named "Tooltip"
	--[[ Upvalues[3]:
		[1]: withTooltip_upvr (readonly)
		[2]: TooltipOrientation_upvr (readonly)
		[3]: React_upvr (readonly)
	]]
	local controllerPart_upvr = arg1.controllerPart
	return withTooltip_upvr({
		bodyText = arg1.tooltipText;
	}, {
		preferredOrientation = TooltipOrientation_upvr.Bottom;
		guiTarget = controllerPart_upvr:WaitForChild("BillboardGui");
		DisplayOrder = 0;
		triggerPointName = "TriggerPart";
		active = true;
		DEBUG_useTargetDirectly = true;
	}, function(arg1_2) -- Line 24
		--[[ Upvalues[2]:
			[1]: React_upvr (copied, readonly)
			[2]: controllerPart_upvr (readonly)
		]]
		local module = {}
		local tbl = {
			Transparency = 1;
			Size = UDim2.new(1, 0, 1, 0);
			Position = UDim2.new(0.49, 0, 1.02, 0);
		}
		tbl[React_upvr.Change.AbsoluteSize] = arg1_2
		tbl[React_upvr.Change.AbsolutePosition] = arg1_2
		module.TriggerBody = React_upvr.createElement("Frame", tbl)
		return React_upvr.createElement("BillboardGui", {
			Parent = controllerPart_upvr;
			Adornee = controllerPart_upvr;
			AlwaysOnTop = true;
			Active = false;
			Size = UDim2.new(0.5, 0, 0.5, 0);
		}, module)
	end)
end