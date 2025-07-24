-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:03:14
-- Luau version 6, Types version 3
-- Time taken: 0.002871 seconds

local CoreGui_upvr = game:GetService("CoreGui")
local UIBlox = require(CoreGui_upvr:WaitForChild("RobloxGui").Modules.ContactList.dependencies).UIBlox
local function var3_upvr() -- Line 29
end
local useStyle_upvr = UIBlox.Core.Style.useStyle
local React_upvr = require(game:GetService("CorePackages").Packages.React)
local withTooltip_upvr = UIBlox.App.Dialog.TooltipV2.withTooltip
local TooltipOrientation_upvr = UIBlox.App.Dialog.Enum.TooltipOrientation
local Interactable_upvr = UIBlox.Core.Control.Interactable
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local Images_upvr = UIBlox.App.ImageSet.Images
local Colors_upvr = UIBlox.App.Style.Colors
return function(arg1) -- Line 31, Named "SectionHeader"
	--[[ Upvalues[10]:
		[1]: useStyle_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: withTooltip_upvr (readonly)
		[4]: TooltipOrientation_upvr (readonly)
		[5]: CoreGui_upvr (readonly)
		[6]: Interactable_upvr (readonly)
		[7]: var3_upvr (readonly)
		[8]: ImageSetLabel_upvr (readonly)
		[9]: Images_upvr (readonly)
		[10]: Colors_upvr (readonly)
	]]
	local useStyle_upvr_result1 = useStyle_upvr()
	local Theme = useStyle_upvr_result1.Theme
	local Font = useStyle_upvr_result1.Font
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(false)
	return React_upvr.createElement("Frame", {
		Position = UDim2.fromOffset(0, 0);
		Size = UDim2.new(1, 0, 0, 24);
		BackgroundColor3 = Theme.BackgroundContrast.Color;
		LayoutOrder = arg1.layoutOrder;
	}, {
		UIPadding = React_upvr.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, 24);
		});
		HeaderText = React_upvr.createElement("TextLabel", {
			Size = UDim2.new(1, -28, 1, 0);
			BackgroundTransparency = 1;
			Font = Font.Footer.Font;
			Text = string.upper(arg1.name);
			TextColor3 = Theme.TextDefault.Color;
			TextSize = Font.Footer.RelativeSize * Font.BaseSize;
			TextTransparency = Theme.TextDefault.Transparency;
			TextXAlignment = Enum.TextXAlignment.Left;
			TextYAlignment = Enum.TextYAlignment.Center;
			AnchorPoint = Vector2.new(0, 0.5);
			Position = UDim2.new(0, 0, 0.5, 0);
		});
		Tooltip = withTooltip_upvr({
			headerText = arg1.name;
			bodyText = arg1.description;
		}, {
			preferredOrientation = TooltipOrientation_upvr.Right;
			guiTarget = CoreGui_upvr;
			DisplayOrder = 100;
			active = any_useState_result1_upvr;
		}, function(arg1_2) -- Line 68
			--[[ Upvalues[8]:
				[1]: React_upvr (copied, readonly)
				[2]: Interactable_upvr (copied, readonly)
				[3]: any_useState_result2_upvr (readonly)
				[4]: any_useState_result1_upvr (readonly)
				[5]: var3_upvr (copied, readonly)
				[6]: ImageSetLabel_upvr (copied, readonly)
				[7]: Images_upvr (copied, readonly)
				[8]: Colors_upvr (copied, readonly)
			]]
			local module = {
				Position = UDim2.new(1, -28, 0.5, 0);
				AnchorPoint = Vector2.new(1, 0.5);
				Size = UDim2.fromOffset(28, 28);
				BackgroundTransparency = 1;
			}
			module[React_upvr.Change.AbsolutePosition] = arg1_2
			module[React_upvr.Change.AbsoluteSize] = arg1_2
			module[React_upvr.Event.Activated] = function(arg1_3) -- Line 76
				--[[ Upvalues[2]:
					[1]: any_useState_result2_upvr (copied, readonly)
					[2]: any_useState_result1_upvr (copied, readonly)
				]]
				any_useState_result2_upvr(not any_useState_result1_upvr)
			end
			module.onStateChanged = var3_upvr
			return React_upvr.createElement(Interactable_upvr, module, {
				Label = React_upvr.createElement(ImageSetLabel_upvr, {
					Size = UDim2.fromScale(1, 1);
					BackgroundTransparency = 1;
					Image = Images_upvr["icons/actions/info"];
					ImageColor3 = Colors_upvr.White;
				});
			})
		end);
	})
end