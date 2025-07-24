-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:10:30
-- Luau version 6, Types version 3
-- Time taken: 0.001224 seconds

local Parent = script.Parent.Parent.Parent
local UIBlox = require(Parent.UIBlox)
local withHoverTooltip_upvr = UIBlox.App.Dialog.TooltipV2.withHoverTooltip
local TooltipOrientation_upvr = UIBlox.App.Dialog.Enum.TooltipOrientation
local CoreGui_upvr = game:GetService("CoreGui")
local Roact_upvr = require(Parent.Roact)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local icons_actions_info_upvr = UIBlox.App.ImageSet.Images["icons/actions/info"]
local Interactable_upvr = UIBlox.Core.Control.Interactable
function InfoIconWithTooltip(arg1) -- Line 22
	--[[ Upvalues[7]:
		[1]: withHoverTooltip_upvr (readonly)
		[2]: TooltipOrientation_upvr (readonly)
		[3]: CoreGui_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: ImageSetLabel_upvr (readonly)
		[6]: icons_actions_info_upvr (readonly)
		[7]: Interactable_upvr (readonly)
	]]
	local udim2_upvr = UDim2.new(0, 18, 0, 18)
	return withHoverTooltip_upvr({
		bodyText = arg1.text;
	}, {
		preferredOrientation = TooltipOrientation_upvr.Bottom;
		guiTarget = CoreGui_upvr;
		DisplayOrder = 10;
		delayTime = 0.2;
		triggerPointName = "BonusBannerInfoIcon";
	}, function(arg1_2, arg2) -- Line 32
		--[[ Upvalues[6]:
			[1]: Roact_upvr (copied, readonly)
			[2]: udim2_upvr (readonly)
			[3]: arg1 (readonly)
			[4]: ImageSetLabel_upvr (copied, readonly)
			[5]: icons_actions_info_upvr (copied, readonly)
			[6]: Interactable_upvr (copied, readonly)
		]]
		local module = {
			Size = udim2_upvr;
			BackgroundTransparency = 1;
			LayoutOrder = arg1.layoutOrder;
			AnchorPoint = Vector2.new(1, 0);
		}
		module[Roact_upvr.Change.AbsolutePosition] = arg1_2
		module[Roact_upvr.Change.AbsoluteSize] = arg1_2
		local module_2 = {
			TooltipIcon = Roact_upvr.createElement(ImageSetLabel_upvr, {
				Size = udim2_upvr;
				BackgroundTransparency = 1;
				Image = icons_actions_info_upvr;
				ImageColor3 = arg1.color;
				ZIndex = 1;
			});
		}
		local tbl = {
			Size = UDim2.fromScale(1, 1);
			BackgroundTransparency = 1;
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.fromScale(0.5, 0.5);
		}
		tbl.onStateChanged = arg2
		tbl[Roact_upvr.Event.Activated] = arg1.eventActivated
		tbl.ZIndex = 2
		module_2.Hitbox = Roact_upvr.createElement(Interactable_upvr, tbl)
		return Roact_upvr.createElement("Frame", module, module_2)
	end)
end
return InfoIconWithTooltip