-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:36
-- Luau version 6, Types version 3
-- Time taken: 0.001358 seconds

local Parent_3 = script.Parent.Parent
local Parent_2 = Parent_3.Parent.Parent
local Parent = Parent_2.Parent
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("SaveTile")
any_extend_result1_upvr.validateProps = t.strictInterface({
	hasRoundedCorners = t.optional(t.boolean);
	onActivated = t.optional(t.callback);
	isDisabled = t.optional(t.boolean);
	thumbnail = t.optional(t.union(t.string, t.table));
	thumbnailSize = t.optional(t.UDim2);
	thumbnailTransparency = t.optional(t.number);
	NextSelectionLeft = t.optional(t.table);
	NextSelectionRight = t.optional(t.table);
	NextSelectionUp = t.optional(t.table);
	NextSelectionDown = t.optional(t.table);
	thumbnailRef = t.optional(t.table);
})
any_extend_result1_upvr.defaultProps = {
	hasRoundedCorners = true;
	thumbnail = require(Parent_2.App.ImageSet.Images)["icons/actions/edit/add"];
	thumbnailSize = UDim2.new(0, 36, 0, 36);
	thumbnailTransparency = 0;
}
local Tile_upvr = require(Parent_3.BaseTile.Tile)
function any_extend_result1_upvr.render(arg1) -- Line 50
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: Tile_upvr (readonly)
	]]
	return Roact_upvr.createElement(Tile_upvr, {
		hasRoundedCorners = arg1.props.hasRoundedCorners;
		name = "";
		onActivated = arg1.props.onActivated;
		isDisabled = arg1.props.isDisabled;
		thumbnail = arg1.props.thumbnail;
		thumbnailSize = arg1.props.thumbnailSize;
		thumbnailTransparency = arg1.props.thumbnailTransparency;
		NextSelectionLeft = arg1.props.NextSelectionLeft;
		NextSelectionRight = arg1.props.NextSelectionRight;
		NextSelectionUp = arg1.props.NextSelectionUp;
		NextSelectionDown = arg1.props.NextSelectionDown;
		[Roact_upvr.Ref] = arg1.props.thumbnailRef;
	})
end
local Cryo_upvr = require(Parent.Cryo)
return Roact_upvr.forwardRef(function(arg1, arg2) -- Line 75
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: any_extend_result1_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	local module = {}
	module.thumbnailRef = arg2
	return Roact_upvr.createElement(any_extend_result1_upvr, Cryo_upvr.Dictionary.join(arg1, module))
end)