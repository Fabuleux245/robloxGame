-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:00
-- Luau version 6, Types version 3
-- Time taken: 0.001633 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local t = InGameMenuDependencies.t
local Roact_upvr = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local Images = UIBlox.App.ImageSet.Images
local any_extend_result1 = Roact_upvr.PureComponent:extend("HomeButton")
any_extend_result1.validateProps = t.strictInterface({
	on = t.optional(t.boolean);
	anchorPoint = t.optional(t.Vector2);
	position = t.optional(t.UDim2);
	layoutOrder = t.optional(t.integer);
	onActivated = t.callback;
})
any_extend_result1.defaultProps = {
	on = false;
}
local icons_menu_home_on_upvr = Images["icons/menu/home_on"]
local icons_menu_home_off_upvr = Images["icons/menu/home_off"]
local ImageSetButton_upvr = UIBlox.Core.ImageSet.ImageSetButton
local CursorKind_upvr = UIBlox.App.SelectionImage.CursorKind
function any_extend_result1.renderWithSelectionCursor(arg1, arg2) -- Line 34
	--[[ Upvalues[5]:
		[1]: icons_menu_home_on_upvr (readonly)
		[2]: icons_menu_home_off_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: ImageSetButton_upvr (readonly)
		[5]: CursorKind_upvr (readonly)
	]]
	local var13
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var13 = icons_menu_home_on_upvr
		return var13
	end
	if not arg1.props.on or not INLINED() then
		var13 = icons_menu_home_off_upvr
	end
	return Roact_upvr.createElement("Frame", {
		AnchorPoint = arg1.props.anchorPoint;
		BackgroundTransparency = 1;
		Position = arg1.props.position;
		Size = UDim2.fromOffset(64, 64);
		LayoutOrder = arg1.props.layoutOrder;
	}, {
		HomeButton = Roact_upvr.createElement(ImageSetButton_upvr, {
			AnchorPoint = Vector2.new(0.5, 0.5);
			BackgroundTransparency = 1;
			Image = var13;
			Position = UDim2.fromScale(0.5, 0.5);
			Size = UDim2.fromOffset(32, 32);
			SelectionImageObject = arg2(CursorKind_upvr.RoundedRect);
			[Roact_upvr.Event.Activated] = arg1.props.onActivated;
		});
	})
end
local withSelectionCursorProvider_upvr = UIBlox.App.SelectionImage.withSelectionCursorProvider
function any_extend_result1.render(arg1) -- Line 55
	--[[ Upvalues[1]:
		[1]: withSelectionCursorProvider_upvr (readonly)
	]]
	return withSelectionCursorProvider_upvr(function(arg1_2) -- Line 56
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:renderWithSelectionCursor(arg1_2)
	end)
end
return any_extend_result1