-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:16:29
-- Luau version 6, Types version 3
-- Time taken: 0.002278 seconds

local Parent = script:FindFirstAncestor("PhoneUpsell").Parent
local UIBlox = require(Parent.UIBlox)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local React_upvr = require(Parent.React)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local GetImageData_upvr = require(Parent.RobloxAppAssets).GetImageData
local Roact_upvr = require(Parent.Roact)
return function(arg1) -- Line 23, Named "CountryCodeButton"
	--[[ Upvalues[5]:
		[1]: useStyle_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: ImageSetLabel_upvr (readonly)
		[4]: GetImageData_upvr (readonly)
		[5]: Roact_upvr (readonly)
	]]
	local var3_result1 = useStyle_upvr()
	local Tokens = var3_result1.Tokens
	local TextField = Tokens.Component.TextField
	local var11
	if arg1.error then
		var11 = Tokens.Global.Color.Red.Color3
	else
		var11 = var3_result1.Theme.UIDefault.Color
	end
	local font = arg1.font
	if not font then
		font = TextField.Base.Field.Typography.Font
	end
	local textSize = arg1.textSize
	if not textSize then
		textSize = TextField.Base.Field.Typography.FontSize
	end
	return React_upvr.createElement(ImageSetLabel_upvr, {
		ZIndex = 2;
		Size = arg1.size;
		BackgroundTransparency = 1;
		ScaleType = Enum.ScaleType.Slice;
		SliceCenter = Rect.new(9, 9, 9, 9);
		Image = GetImageData_upvr("LuaApp/buttons/buttonStroke");
		ImageColor3 = var11;
		ImageTransparency = var3_result1.Theme.UIDefault.Transparency;
		LayoutOrder = arg1.layoutOrder;
	}, {
		Button = React_upvr.createElement("TextButton", {
			BackgroundTransparency = 1;
			Size = UDim2.new(1, 0, 1, 0);
			Text = arg1.countryPrefix;
			Font = font;
			TextSize = textSize;
			TextColor3 = TextField.Base.FieldValue.ContentColor.Color3;
			TextTransparency = TextField.Base.FieldValue.ContentColor.Transparency;
			[Roact_upvr.Event.Activated] = arg1.onButtonClick;
			[Roact_upvr.Ref] = arg1.forwardRef;
		});
	})
end