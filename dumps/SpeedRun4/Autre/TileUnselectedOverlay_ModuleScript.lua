-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:25
-- Luau version 6, Types version 3
-- Time taken: 0.001121 seconds

local Parent_2 = script.Parent.Parent.Parent.Parent
local Parent = Parent_2.Parent
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local any_extend_result1 = Roact_upvr.PureComponent:extend("TileUnselectedOverlay")
any_extend_result1.validateProps = t.strictInterface({
	ZIndex = t.optional(t.integer);
})
local withStyle_upvr = require(Parent_2.Core.Style.withStyle)
local ImageSetComponent_upvr = require(Parent_2.Core.ImageSet.ImageSetComponent)
local squircles_hollow_upvr = require(Parent_2.App.ImageSet.Images)["squircles/hollow"]
function any_extend_result1.render(arg1) -- Line 28
	--[[ Upvalues[4]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ImageSetComponent_upvr (readonly)
		[4]: squircles_hollow_upvr (readonly)
	]]
	local ZIndex_upvr = arg1.props.ZIndex
	return withStyle_upvr(function(arg1_2) -- Line 31
		--[[ Upvalues[4]:
			[1]: Roact_upvr (copied, readonly)
			[2]: ZIndex_upvr (readonly)
			[3]: ImageSetComponent_upvr (copied, readonly)
			[4]: squircles_hollow_upvr (copied, readonly)
		]]
		local Tokens = arg1_2.Tokens
		return Roact_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
			Size = UDim2.new(1, 0, 1, 0);
			ZIndex = ZIndex_upvr;
		}, {
			SelectionImage = Roact_upvr.createElement(ImageSetComponent_upvr.Label, {
				AnchorPoint = Vector2.new(1, 0);
				BackgroundTransparency = 1;
				Image = squircles_hollow_upvr;
				Position = UDim2.new(1, -Tokens.Global.Size_100, 0, Tokens.Global.Size_100);
				Size = UDim2.fromOffset(24, 24);
			});
		})
	end)
end
return any_extend_result1