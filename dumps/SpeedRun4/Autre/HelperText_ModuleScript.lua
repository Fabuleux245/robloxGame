-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:55
-- Luau version 6, Types version 3
-- Time taken: 0.001269 seconds

local Parent = script.Parent.Parent.Parent
local useStyle_upvr = require(Parent.Core.Style.useStyle)
local React_upvr = require(Parent.Parent.React)
return function(arg1) -- Line 18, Named "HelperText"
	--[[ Upvalues[2]:
		[1]: useStyle_upvr (readonly)
		[2]: React_upvr (readonly)
	]]
	local HelperText = useStyle_upvr().Tokens.Component.HelperText
	local Base = HelperText.Base
	local Typography = Base.Typography
	if arg1.error then
		Base = HelperText.Error.ContentColor
	else
		Base = HelperText.Base.ContentColor
	end
	return React_upvr.createElement("TextLabel", {
		Text = arg1.text;
		TextTransparency = Base.Transparency;
		TextXAlignment = Enum.TextXAlignment.Left;
		TextYAlignment = Enum.TextYAlignment.Top;
		TextWrapped = true;
		BackgroundTransparency = 1;
		TextColor3 = Base.Color3;
		Font = Typography.Font;
		TextSize = Typography.FontSize;
		LineHeight = Typography.LineHeight;
		Size = UDim2.new(1, 0, 0, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		LayoutOrder = arg1.LayoutOrder;
	})
end