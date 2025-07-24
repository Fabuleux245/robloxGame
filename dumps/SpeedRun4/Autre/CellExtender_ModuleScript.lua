-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:48:02
-- Luau version 6, Types version 3
-- Time taken: 0.001975 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local Parent = script.Parent.Parent.Parent
local any_extend_result1 = Roact_upvr.PureComponent:extend("CellExtender")
any_extend_result1.validateProps = t.strictInterface({
	layoutOrder = t.integer;
	size = t.UDim2;
	backgroundStyle = t.strictInterface({
		Color = t.Color3;
		Transparency = t.number;
	});
	overlayStyle = t.strictInterface({
		Color = t.Color3;
		Transparency = t.number;
	});
	doubleOverlay = t.boolean;
})
function any_extend_result1.render(arg1) -- Line 28
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	return Roact_upvr.createElement("Frame", {
		LayoutOrder = arg1.props.layoutOrder;
		Size = arg1.props.size;
		BackgroundTransparency = arg1.props.backgroundStyle.Transparency;
		BackgroundColor3 = arg1.props.backgroundStyle.Color;
		BorderSizePixel = 0;
	}, {
		DoubleOverLay = Roact_upvr.createElement("Frame", {
			ZIndex = 1;
			Visible = arg1.props.doubleOverlay;
			Size = UDim2.new(1, 0, 1, 0);
			BackgroundTransparency = arg1.props.overlayStyle.Transparency;
			BackgroundColor3 = arg1.props.overlayStyle.Color;
			BorderSizePixel = 0;
		});
		OverlayFrame = Roact_upvr.createElement("Frame", {
			ZIndex = 2;
			Size = UDim2.new(1, 0, 1, 0);
			BackgroundTransparency = arg1.props.overlayStyle.Transparency;
			BackgroundColor3 = arg1.props.overlayStyle.Color;
			BorderSizePixel = 0;
		});
	})
end
if require(Parent.Flags.FFlagPlayerListReduceRerenders) then
	return require(CorePackages.Packages.React).memo(any_extend_result1, require(Parent.createShallowEqualAndTables)({"backgroundStyle"}))
end
return any_extend_result1