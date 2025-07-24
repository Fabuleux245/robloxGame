-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:06
-- Luau version 6, Types version 3
-- Time taken: 0.003403 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local React_upvr = require(Parent.React)
local UIBlox = require(Parent.UIBlox)
local tbl_upvr = {
	bodyText = "";
}
local Cryo_upvr = require(Parent.Cryo)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
return React_upvr.memo(function(arg1) -- Line 32, Named "Label"
	--[[ Upvalues[5]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: ImageSetLabel_upvr (readonly)
	]]
	local any_join_result1 = Cryo_upvr.Dictionary.join(tbl_upvr, arg1)
	local var10 = any_join_result1.style or useStyle_upvr()
	local Space_50 = var10.Tokens.Global.Space_50
	local Size_150 = var10.Tokens.Global.Size_150
	local module = {
		AutomaticSize = Enum.AutomaticSize.X;
	}
	local backgroundColor3 = any_join_result1.backgroundColor3
	if not backgroundColor3 then
		backgroundColor3 = var10.Theme.BackgroundDefault.Color
	end
	module.BackgroundColor3 = backgroundColor3
	backgroundColor3 = any_join_result1.backgroundTransparency
	local var15 = backgroundColor3
	if not var15 then
		var15 = var10.Theme.BackgroundDefault.Transparency
	end
	module.BackgroundTransparency = var15
	module.BorderSizePixel = 0
	module.Size = UDim2.new(0, 0, 0, var10.Tokens.Global.Size_250)
	module.LayoutOrder = any_join_result1.layoutOrder
	local module_2 = {
		UIListLayout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal;
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			Padding = UDim.new(0, Space_50);
		});
		ContentPadding = React_upvr.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, Space_50);
			PaddingRight = UDim.new(0, var10.Tokens.Global.Space_75);
			PaddingBottom = UDim.new(0, Space_50);
			PaddingTop = UDim.new(0, Space_50);
		});
	}
	local any_createElement_result1 = React_upvr.createElement("UICorner", {
		CornerRadius = UDim.new(0, var10.Tokens.Semantic.Radius.Small);
	})
	module_2.UICorner = any_createElement_result1
	if any_join_result1.iconImage then
		any_createElement_result1 = React_upvr.createElement
		local tbl = {
			Size = UDim2.new(0, Size_150, 0, Size_150);
			BackgroundTransparency = 1;
			Image = any_join_result1.iconImage;
		}
		local imageColor3 = any_join_result1.imageColor3
		if not imageColor3 then
			imageColor3 = var10.Theme.IconEmphasis.Color
		end
		tbl.ImageColor3 = imageColor3
		imageColor3 = any_join_result1.imageTransparency
		local var23 = imageColor3
		if not var23 then
			var23 = var10.Theme.IconEmphasis.Transparency
		end
		tbl.ImageTransparency = var23
		tbl.LayoutOrder = 1
		any_createElement_result1 = any_createElement_result1(ImageSetLabel_upvr, tbl)
	else
		any_createElement_result1 = nil
	end
	module_2.IconImage = any_createElement_result1
	local tbl_2 = {
		AutomaticSize = Enum.AutomaticSize.X;
		BackgroundTransparency = 1;
		Font = var10.Font.Body.Font;
		LayoutOrder = 2;
		Size = UDim2.new(0, 0, 1, 0);
		Text = any_join_result1.bodyText;
	}
	local bodyTextColor3 = any_join_result1.bodyTextColor3
	if not bodyTextColor3 then
		bodyTextColor3 = var10.Theme.TextEmphasis.Color
	end
	tbl_2.TextColor3 = bodyTextColor3
	tbl_2.TextSize = var10.Tokens.Global.FontSize_50
	tbl_2.TextXAlignment = Enum.TextXAlignment.Left
	tbl_2.TextYAlignment = Enum.TextYAlignment.Center
	module_2.BodyText = React_upvr.createElement("TextLabel", tbl_2)
	return React_upvr.createElement("Frame", module, module_2)
end)