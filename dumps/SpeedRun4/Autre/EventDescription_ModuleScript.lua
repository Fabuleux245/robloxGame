-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:37
-- Luau version 6, Types version 3
-- Time taken: 0.002904 seconds

local VirtualEvents = script:FindFirstAncestor("VirtualEvents")
local UIBlox = require(VirtualEvents.Parent.UIBlox)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useLocalization_upvr = require(VirtualEvents.Parent.Localization).Hooks.useLocalization
local useTextSizeOffset_upvr = UIBlox.Core.Style.useTextSizeOffset
local udim2_upvr = UDim2.new(0, 150, 0, 210)
local React_upvr = require(VirtualEvents.Parent.React)
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
local ShimmerPanel_upvr = UIBlox.App.Loading.ShimmerPanel
local ExperienceTileV3_upvr = UIBlox.App.Tile.ExperienceTileV3
return function(arg1) -- Line 26, Named "EventDescription"
	--[[ Upvalues[8]:
		[1]: useStyle_upvr (readonly)
		[2]: useLocalization_upvr (readonly)
		[3]: useTextSizeOffset_upvr (readonly)
		[4]: udim2_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: StyledTextLabel_upvr (readonly)
		[7]: ShimmerPanel_upvr (readonly)
		[8]: ExperienceTileV3_upvr (readonly)
	]]
	local var3_result1 = useStyle_upvr()
	local module = {
		Layout = React_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			Padding = UDim.new(0, 32);
		});
	}
	local any_createElement_result1 = React_upvr.createElement(StyledTextLabel_upvr, {
		layoutOrder = 0;
		text = useLocalization_upvr({
			header = "Feature.VirtualEvents.DescriptionLabel";
		}).header;
		automaticSize = Enum.AutomaticSize.XY;
		fontStyle = var3_result1.Font.Header1;
		colorStyle = var3_result1.Theme.TextEmphasis;
	})
	module.DescriptionHeader = any_createElement_result1
	if arg1.description then
		any_createElement_result1 = React_upvr.createElement
		any_createElement_result1 = any_createElement_result1(StyledTextLabel_upvr, {
			layoutOrder = 1;
			text = arg1.description;
			automaticSize = Enum.AutomaticSize.XY;
			fontStyle = var3_result1.Font.Body;
			colorStyle = var3_result1.Theme.TextDefault;
		})
	else
		any_createElement_result1 = React_upvr.createElement
		any_createElement_result1 = any_createElement_result1(ShimmerPanel_upvr, {
			Size = UDim2.new(1, 0, 0, var3_result1.Font.BaseSize);
		})
	end
	module.Description = any_createElement_result1
	module.ExperienceTileWrapper = React_upvr.createElement("Frame", {
		LayoutOrder = 2;
		Size = udim2_upvr + UDim2.fromOffset(0, useTextSizeOffset_upvr() * 2);
		BackgroundTransparency = 1;
	}, {
		ExperienceTile = React_upvr.createElement(ExperienceTileV3_upvr, {
			experienceName = arg1.experienceName;
			thumbnail = arg1.experienceThumbnail;
			onActivated = arg1.onExperienceTileActivated;
			styleProps = {
				overlayColors = {
					Hover = var3_result1.Theme.BackgroundOnHover;
				};
			};
		});
	})
	return React_upvr.createElement("Frame", {
		AutomaticSize = Enum.AutomaticSize.XY;
		BackgroundTransparency = 1;
	}, module)
end