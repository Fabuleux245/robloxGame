-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:48
-- Luau version 6, Types version 3
-- Time taken: 0.003496 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.Packages.UIBlox)
local Colors = UIBlox.App.Style.Colors
local any_extend_result1 = Roact_upvr.PureComponent:extend("ControlBubble")
any_extend_result1.validateProps = t.strictInterface({
	LayoutOrder = t.optional(t.number);
	icon = t.any;
	onActivated = t.callback;
	enabled = t.boolean;
	isImageSet = t.boolean;
})
local ImageSetButton_upvr = UIBlox.Core.ImageSet.ImageSetButton
local Color3_fromRGB_result1_upvr = Color3.fromRGB(250, 250, 250)
local GetFFlagForceChatBubbleColorCS_upvr = require(game:GetService("CoreGui").RobloxGui.Modules.Flags.GetFFlagForceChatBubbleColorCS)
local Graphite_upvr = Colors.Graphite
local Cryo_upvr = require(CorePackages.Packages.Cryo)
local White_upvr = Colors.White
local Flint_upvr = Colors.Flint
function any_extend_result1.render(arg1) -- Line 37
	--[[ Upvalues[8]:
		[1]: ImageSetButton_upvr (readonly)
		[2]: Color3_fromRGB_result1_upvr (readonly)
		[3]: GetFFlagForceChatBubbleColorCS_upvr (readonly)
		[4]: Graphite_upvr (readonly)
		[5]: Roact_upvr (readonly)
		[6]: Cryo_upvr (readonly)
		[7]: White_upvr (readonly)
		[8]: Flint_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local chatSettings = arg1.props.chatSettings
	local BackgroundGradient = chatSettings.BackgroundGradient
	local var17
	if arg1.props.isImageSet then
	else
	end
	if chatSettings.BackgroundColor3 == Color3_fromRGB_result1_upvr or GetFFlagForceChatBubbleColorCS_upvr() then
	else
	end
	local module = {}
	var17 = 0.5
	module.AnchorPoint = Vector2.new(var17, 1)
	var17 = 0
	module.Size = UDim2.new(var17, 44, 1, 0)
	var17 = arg1.props
	module.LayoutOrder = var17.LayoutOrder
	module.BorderSizePixel = 0
	module.Transparency = 1
	module.ZIndex = 2
	var17 = Roact_upvr.Event
	var17 = arg1.props.onActivated
	module[var17.Activated] = var17
	local module_2 = {}
	var17 = chatSettings.CornerEnabled
	if var17 then
		var17 = Roact_upvr.createElement
		var17 = var17("UICorner", {
			CornerRadius = chatSettings.CornerRadius;
		})
	end
	module_2.UICorner = var17
	var17 = Roact_upvr.createElement
	local tbl_3 = {
		Size = UDim2.fromScale(1, 1);
		BackgroundColor3 = chatSettings.BackgroundColor3;
		BorderSizePixel = 0;
	}
	local tbl = {}
	tbl_3 = chatSettings.CornerEnabled
	local var23 = tbl_3
	if var23 then
		var23 = Roact_upvr.createElement
		var23 = var23("UICorner", {
			CornerRadius = chatSettings.CornerRadius;
		})
	end
	tbl.UICorner = var23
	tbl.Padding = Roact_upvr.createElement("UIPadding", {
		PaddingTop = UDim.new(0, chatSettings.Padding);
		PaddingRight = UDim.new(0, chatSettings.Padding);
		PaddingBottom = UDim.new(0, chatSettings.Padding);
		PaddingLeft = UDim.new(0, chatSettings.Padding);
	})
	local tbl_2 = {
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = UDim2.fromScale(0.5, 0.5);
	}
	if arg1.props.isImageSet or not arg1.props.iconSize then
	end
	tbl_2.Size = UDim2.fromOffset(28, 28)
	local var27 = 1
	tbl_2.BackgroundTransparency = var27
	if arg1.props.enabled then
		var27 = 0
	else
		var27 = 0.5
	end
	tbl_2.ImageTransparency = var27
	if arg1.props.enabled then
	else
	end
	tbl_2.ImageColor3 = Flint_upvr
	tbl_2.BorderSizePixel = 0
	tbl_2.Image = arg1.props.icon
	tbl.Icon = Roact_upvr.createElement("ImageButton", tbl_2)
	local Enabled = BackgroundGradient.Enabled
	if Enabled then
		Enabled = Roact_upvr.createElement("UIGradient", BackgroundGradient)
	end
	tbl.Gradient = Enabled
	var17 = var17("ImageLabel", Cryo_upvr.Dictionary.join(chatSettings.BackgroundImage, tbl_3), tbl)
	module_2.Contents = var17
	return Roact_upvr.createElement("ImageButton", module, module_2)
end
return any_extend_result1