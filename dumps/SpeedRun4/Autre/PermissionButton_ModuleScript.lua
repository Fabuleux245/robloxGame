-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:22
-- Luau version 6, Types version 3
-- Time taken: 0.001724 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local any_extend_result1 = Roact_upvr.PureComponent:extend("PermissionButton")
any_extend_result1.validateProps = t.strictInterface({
	callback = t.callback;
	image = t.table;
	LayoutOrder = t.number;
	useNewMenuTheme = t.boolean;
	imageLabelProps = t.optional(t.table);
})
local ImageSetButton_upvr = require(CorePackages.Packages.UIBlox).Core.ImageSet.ImageSetButton
function any_extend_result1.render(arg1) -- Line 21
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: ImageSetButton_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module = {}
	local LayoutOrder = arg1.props.LayoutOrder
	module.LayoutOrder = LayoutOrder
	if arg1.props.useNewMenuTheme then
		LayoutOrder = "rbxasset://textures/ui/TopBar/iconBase.png"
	else
		LayoutOrder = "rbxasset://textures/ui/dialog_white.png"
	end
	module.Image = LayoutOrder
	if arg1.props.useNewMenuTheme then
		LayoutOrder = 0
	else
		LayoutOrder = 0.85
	end
	module.ImageTransparency = LayoutOrder
	LayoutOrder = 1
	module.BackgroundTransparency = LayoutOrder
	LayoutOrder = Enum.ScaleType.Slice
	module.ScaleType = LayoutOrder
	LayoutOrder = Rect.new(10, 10, 10, 10)
	module.SliceCenter = LayoutOrder
	LayoutOrder = UDim2.new(0, 32, 0, 32)
	module.Size = LayoutOrder
	LayoutOrder = {}
	local tbl = {
		LayoutOrder = 2;
		Image = arg1.props.image;
		BackgroundTransparency = 1;
	}
	if not arg1.props.imageLabelProps or not arg1.props.imageLabelProps.Size then
	end
	tbl.Size = UDim2.new(0, 32, 0, 32)
	if arg1.props.imageLabelProps then
	end
	tbl.Position = arg1.props.imageLabelProps.Position
	tbl[Roact_upvr.Event.Activated] = arg1.props.callback
	LayoutOrder.ImageLabel = Roact_upvr.createElement(ImageSetButton_upvr, tbl)
	return Roact_upvr.createElement("ImageButton", module, LayoutOrder)
end
return any_extend_result1