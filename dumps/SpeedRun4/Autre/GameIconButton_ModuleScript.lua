-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:59
-- Luau version 6, Types version 3
-- Time taken: 0.002163 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local t = InGameMenuDependencies.t
local Roact_upvr = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("GameIconButton")
any_extend_result1_upvr.validateProps = t.strictInterface({
	anchorPoint = t.optional(t.Vector2);
	position = t.optional(t.UDim2);
	layoutOrder = t.optional(t.integer);
	onActivated = t.callback;
	onSelectionGained = t.optional(t.callback);
	onSelectionLost = t.optional(t.callback);
	forwardRef = t.optional(t.table);
})
local CursorKind_upvr = UIBlox.App.SelectionImage.CursorKind
local GameIcon_upvr = require(script.Parent.Parent.Parent.Components.GameIcon)
local udim_upvr = UDim.new(0, 8)
function any_extend_result1_upvr.renderWithSelectionCursor(arg1, arg2) -- Line 30
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: CursorKind_upvr (readonly)
		[3]: GameIcon_upvr (readonly)
		[4]: udim_upvr (readonly)
	]]
	return Roact_upvr.createElement("TextButton", {
		Text = "";
		AnchorPoint = arg1.props.anchorPoint;
		BackgroundTransparency = 1;
		Position = arg1.props.position;
		Size = UDim2.fromOffset(32, 32);
		LayoutOrder = arg1.props.layoutOrder;
		SelectionImageObject = arg2(CursorKind_upvr.RoundedRect);
		[Roact_upvr.Event.Activated] = arg1.props.onActivated;
		[Roact_upvr.Event.SelectionGained] = arg1.props.onSelectionGained;
		[Roact_upvr.Event.SelectionLost] = arg1.props.onSelectionLost;
		[Roact_upvr.Ref] = arg1.props.forwardRef;
	}, {
		GameIconButton = Roact_upvr.createElement(GameIcon_upvr, {
			gameId = game.GameId;
			iconSize = 32;
			cornerRadius = udim_upvr;
		});
	})
end
local withSelectionCursorProvider_upvr = UIBlox.App.SelectionImage.withSelectionCursorProvider
function any_extend_result1_upvr.render(arg1) -- Line 53
	--[[ Upvalues[1]:
		[1]: withSelectionCursorProvider_upvr (readonly)
	]]
	return withSelectionCursorProvider_upvr(function(arg1_2) -- Line 54
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:renderWithSelectionCursor(arg1_2)
	end)
end
local Cryo_upvr = InGameMenuDependencies.Cryo
return Roact_upvr.forwardRef(function(arg1, arg2) -- Line 59
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: any_extend_result1_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	local module = {}
	module.forwardRef = arg2
	return Roact_upvr.createElement(any_extend_result1_upvr, Cryo_upvr.Dictionary.join(arg1, module))
end)