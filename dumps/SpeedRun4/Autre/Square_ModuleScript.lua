-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:12:48
-- Luau version 6, Types version 3
-- Time taken: 0.001045 seconds

local Parent = script.Parent.Parent.Parent.Parent
local withStyle_upvr = require(Parent.Core.Style.withStyle)
local Roact_upvr = require(Parent.Parent.Roact)
local ImageSetComponent_upvr = require(Parent.Core.ImageSet.ImageSetComponent)
local Images_upvr = require(Parent.App.ImageSet.Images)
local AnimatedGradient_upvr = require(script.Parent.AnimatedGradient)
return function(arg1) -- Line 20
	--[[ Upvalues[5]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ImageSetComponent_upvr (readonly)
		[4]: Images_upvr (readonly)
		[5]: AnimatedGradient_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 21
		--[[ Upvalues[5]:
			[1]: Roact_upvr (copied, readonly)
			[2]: ImageSetComponent_upvr (copied, readonly)
			[3]: Images_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: AnimatedGradient_upvr (copied, readonly)
		]]
		local module = {}
		local var11
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var11 = Roact_upvr.createElement(AnimatedGradient_upvr)
			return var11
		end
		if not arg1.isVisible or not INLINED() then
			var11 = nil
		end
		module.AnimatedGradient = var11
		return Roact_upvr.createElement(ImageSetComponent_upvr.Label, {
			Image = Images_upvr["component_assets/square_7_stroke_3"];
			ImageColor3 = arg1_2.Theme.SelectionCursor.AnimatedColor;
			BackgroundTransparency = 1;
			Size = UDim2.new(1, 4, 1, 4);
			Position = UDim2.fromOffset(-2, -2);
			ScaleType = Enum.ScaleType.Slice;
			SliceCenter = Rect.new(3.5, 3.5, 3.5, 3.5);
			[Roact_upvr.Ref] = arg1.cursorRef;
		}, module)
	end)
end