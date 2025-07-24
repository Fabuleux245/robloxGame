-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:54
-- Luau version 6, Types version 3
-- Time taken: 0.001378 seconds

local CorePackages = game:GetService("CorePackages")
local UIBlox = require(CorePackages.Packages.UIBlox)
local Roact_upvr = require(CorePackages.Packages.Roact)
local any_extend_result1 = Roact_upvr.PureComponent:extend("LimitedLabel")
local Images_upvr = UIBlox.App.ImageSet.Images
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local GetFFlagIBEnableCollectiblesSystemSupport_upvr = require(script.Parent.Parent.Flags.GetFFlagIBEnableCollectiblesSystemSupport)
local AppFonts_upvr = require(CorePackages.Workspace.Packages.Style).AppFonts
function any_extend_result1.render(arg1) -- Line 21
	--[[ Upvalues[5]:
		[1]: Images_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ImageSetLabel_upvr (readonly)
		[4]: GetFFlagIBEnableCollectiblesSystemSupport_upvr (readonly)
		[5]: AppFonts_upvr (readonly)
	]]
	local text = arg1.props.text
	local module = {
		Corner = Roact_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(0, 8);
		});
		CollectiblesIcon = Roact_upvr.createElement(ImageSetLabel_upvr, {
			Position = arg1.props.imagePosition;
			Size = arg1.props.imageSize;
			BackgroundTransparency = 1;
			ZIndex = 2;
			Visible = true;
			Image = Images_upvr["icons/status/item/limited"];
		});
	}
	local var14
	if GetFFlagIBEnableCollectiblesSystemSupport_upvr() and not text then
		var14 = nil
	else
		var14 = Roact_upvr.createElement
		var14 = var14("TextLabel", {
			Position = arg1.props.textPosition;
			Size = arg1.props.textSize;
			BackgroundTransparency = 1;
			Text = text;
			Font = AppFonts_upvr.default:getDefault();
			TextXAlignment = Enum.TextXAlignment.Left;
			TextSize = 12;
			TextColor3 = Color3.new(1, 1, 1);
		})
	end
	module.CollectiblesText = var14
	return Roact_upvr.createElement("Frame", {
		Size = arg1.props.frameSize;
		BorderSizePixel = 0;
		LayoutOrder = 3;
		Position = arg1.props.framePosition;
		BackgroundColor3 = Color3.fromRGB(120, 120, 120);
	}, module)
end
return any_extend_result1