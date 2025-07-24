-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:46:19
-- Luau version 6, Types version 3
-- Time taken: 0.001441 seconds

local Parent = script.Parent.Parent
local Roact_upvr = require(Parent.Roact)
local UIBlox = require(Parent.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local any_extend_result1 = Roact_upvr.Component:extend("AdLabel")
local any_FormatByKey_result1_upvr = require(Parent.RobloxTranslator):FormatByKey("Feature.NativeAds.Label.Ad")
local ImageSetButton_upvr = UIBlox.Core.ImageSet.ImageSetButton
local icons_menu_more_on_upvr = Images["icons/menu/more_on"]
local icons_menu_more_off_upvr = Images["icons/menu/more_off"]
function any_extend_result1.render(arg1) -- Line 19
	--[[ Upvalues[5]:
		[1]: Roact_upvr (readonly)
		[2]: any_FormatByKey_result1_upvr (readonly)
		[3]: ImageSetButton_upvr (readonly)
		[4]: icons_menu_more_on_upvr (readonly)
		[5]: icons_menu_more_off_upvr (readonly)
	]]
	local module = {
		Label = Roact_upvr.createElement("TextLabel", {
			LayoutOrder = 1;
			Text = any_FormatByKey_result1_upvr;
			TextColor3 = Color3.new(1, 1, 1);
			BackgroundTransparency = 1;
			Font = Enum.Font.Gotham;
			TextSize = 100;
			TextScaled = true;
			TextWrapped = false;
			Position = UDim2.fromScale(0.134084726, 0.5);
			AnchorPoint = Vector2.new(0, 0.5);
			Size = UDim2.fromScale(0.40808394869, 0.77610536218);
		});
	}
	local tbl = {
		LayoutOrder = 2;
	}
	local var14
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var14 = icons_menu_more_on_upvr
		return var14
	end
	if not arg1.props.isMenuOpen or not INLINED() then
		var14 = icons_menu_more_off_upvr
	end
	tbl.Image = var14
	var14 = 1
	tbl.BackgroundTransparency = var14
	var14 = UDim2.fromScale(0.4, 0)
	tbl.Size = var14
	var14 = UDim2.fromScale(0.76, 0.5)
	tbl.Position = var14
	var14 = Vector2.new(0.5, 0.5)
	tbl.AnchorPoint = var14
	var14 = Roact_upvr.Event.Activated
	tbl[var14] = arg1.props.onActivated
	var14 = {}
	var14.UIAspectRatioConstraint = Roact_upvr.createElement("UIAspectRatioConstraint", {
		AspectRatio = 1;
		AspectType = Enum.AspectType.ScaleWithParentSize;
	})
	module.MenuButton = Roact_upvr.createElement(ImageSetButton_upvr, tbl, var14)
	return Roact_upvr.createElement("Frame", {
		Position = UDim2.fromScale(0.995, 0.995);
		BackgroundColor3 = Color3.new(0, 0, 0);
		BorderSizePixel = 0;
		AnchorPoint = Vector2.new(1, 1);
		Size = UDim2.fromScale(0.11447368421, 0.10108771929);
		Visible = arg1.props.Visible;
	}, module)
end
return any_extend_result1