-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:10:37
-- Luau version 6, Types version 3
-- Time taken: 0.000960 seconds

local Parent = script.Parent.Parent.Parent
local Foundation = require(Parent.Foundation)
local useTokens_upvr = Foundation.Hooks.useTokens
local React_upvr = require(Parent.React)
local View_upvr = Foundation.View
local Image_upvr = Foundation.Image
local Text_upvr = Foundation.Text
return function(arg1) -- Line 19
	--[[ Upvalues[5]:
		[1]: useTokens_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: View_upvr (readonly)
		[4]: Image_upvr (readonly)
		[5]: Text_upvr (readonly)
	]]
	local Emphasis = useTokens_upvr().LightMode.Content.Emphasis
	local module_2 = {
		LayoutOrder = arg1.LayoutOrder;
		tag = "radius-circle padding-small row gap-xsmall align-y-center align-x-center auto-xy";
	}
	local tbl = {
		Color3 = Color3.fromRGB(239, 215, 140);
	}
	local var12 = 0
	tbl.Transparency = var12
	module_2.backgroundStyle = tbl
	local module = {}
	if arg1.Icon then
		var12 = React_upvr.createElement
		var12 = var12(Image_upvr, {
			LayoutOrder = 1;
			Image = arg1.Icon;
			imageStyle = Emphasis;
			tag = "size-300";
		})
	else
		var12 = nil
	end
	module.Icon = var12
	module.Text = React_upvr.createElement(Text_upvr, {
		LayoutOrder = 2;
		Text = arg1.Text;
		textStyle = Emphasis;
		tag = "text-caption-small content-emphasis text-align-x-center auto-xy";
	})
	return React_upvr.createElement(View_upvr, module_2, module)
end