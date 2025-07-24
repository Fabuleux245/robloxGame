-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:24
-- Luau version 6, Types version 3
-- Time taken: 0.003299 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local React_upvr = require(Parent.React)
local UIBlox = require(Parent.UIBlox)
local tbl_upvr = {
	image = UIBlox.App.ImageSet.Images["icons/common/more"];
	dotsSize = UDim2.new(0, 36, 0, 36);
	shouldShowDots = false;
}
local Cryo_upvr = require(Parent.Cryo)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local Label_upvr = require(AppChat.Components.Label.Label)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
function ParticipantEntryRightFrame(arg1) -- Line 36
	--[[ Upvalues[6]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: Label_upvr (readonly)
		[6]: ImageSetLabel_upvr (readonly)
	]]
	local any_join_result1 = Cryo_upvr.Dictionary.join(tbl_upvr, arg1)
	local var11 = any_join_result1.style or useStyle_upvr()
	local module = {
		UIListLayout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal;
			Padding = UDim.new(0, 22);
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Center;
		});
	}
	local any_createElement_result1 = React_upvr.createElement("UIPadding", {
		PaddingLeft = UDim.new(0, 22);
		PaddingRight = UDim.new(0, 22);
	})
	module.UIPadding = any_createElement_result1
	if any_join_result1.labelText then
		any_createElement_result1 = React_upvr.createElement
		any_createElement_result1 = any_createElement_result1(Label_upvr, {
			backgroundColor3 = var11.Theme.BackgroundContrast.Color;
			backgroundTransparency = var11.Theme.BackgroundContrast.Transparency;
			bodyText = any_join_result1.labelText;
			layoutOrder = 1;
		})
	else
		any_createElement_result1 = nil
	end
	module.label = any_createElement_result1
	if any_join_result1.shouldShowDots then
		any_createElement_result1 = React_upvr.createElement
		local tbl = {}
		local tbl_2 = {
			AnchorPoint = Vector2.new(0.5, 0.5);
			BackgroundTransparency = 1;
			Image = any_join_result1.image;
		}
		local imageColor3 = any_join_result1.imageColor3
		if not imageColor3 then
			imageColor3 = var11.Theme.IconEmphasis.Color
		end
		tbl_2.ImageColor3 = imageColor3
		imageColor3 = any_join_result1.imageTransparency
		local var22 = imageColor3
		if not var22 then
			var22 = var11.Theme.IconEmphasis.Transparency
		end
		tbl_2.ImageTransparency = var22
		tbl_2.Position = UDim2.fromScale(0.5, 0.5)
		tbl_2.ScaleType = Enum.ScaleType.Slice
		tbl_2.Size = UDim2.new(0, 36, 0, 36)
		tbl.Dots = React_upvr.createElement(ImageSetLabel_upvr, tbl_2)
		any_createElement_result1 = any_createElement_result1("Frame", {
			Size = UDim2.new(0, 20, 1, 0);
			BackgroundTransparency = 1;
			LayoutOrder = 2;
		}, tbl)
	else
		any_createElement_result1 = nil
	end
	module.dots = any_createElement_result1
	return React_upvr.createElement("Frame", {
		AutomaticSize = Enum.AutomaticSize.X;
		BackgroundTransparency = 1;
		Size = UDim2.new(0, 0, 1, 0);
		[React_upvr.Change.AbsoluteSize] = any_join_result1[React_upvr.Change.AbsoluteSize];
	}, module)
end
return React_upvr.memo(ParticipantEntryRightFrame)