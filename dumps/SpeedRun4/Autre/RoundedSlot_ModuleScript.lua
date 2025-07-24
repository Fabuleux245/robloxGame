-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:12:45
-- Luau version 6, Types version 3
-- Time taken: 0.001114 seconds

local Parent_2 = script.Parent.Parent.Parent.Parent
local Parent = Parent_2.Parent
local t = require(Parent.t)
local any_strictInterface_result1_upvr = t.strictInterface({
	cursorRef = t.table;
	isVisible = t.boolean;
})
local withStyle_upvr = require(Parent_2.Core.Style.withStyle)
local Roact_upvr = require(Parent.Roact)
local ImageSetComponent_upvr = require(Parent_2.Core.ImageSet.ImageSetComponent)
local Images_upvr = require(Parent_2.App.ImageSet.Images)
local AnimatedGradient_upvr = require(script.Parent.AnimatedGradient)
return function(arg1) -- Line 20
	--[[ Upvalues[6]:
		[1]: any_strictInterface_result1_upvr (readonly)
		[2]: withStyle_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: ImageSetComponent_upvr (readonly)
		[5]: Images_upvr (readonly)
		[6]: AnimatedGradient_upvr (readonly)
	]]
	assert(any_strictInterface_result1_upvr(arg1))
	return withStyle_upvr(function(arg1_2) -- Line 23
		--[[ Upvalues[5]:
			[1]: Roact_upvr (copied, readonly)
			[2]: ImageSetComponent_upvr (copied, readonly)
			[3]: Images_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: AnimatedGradient_upvr (copied, readonly)
		]]
		local module = {}
		local var15
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var15 = Roact_upvr.createElement(AnimatedGradient_upvr)
			return var15
		end
		if not arg1.isVisible or not INLINED() then
			var15 = nil
		end
		module.AnimatedGradient = var15
		return Roact_upvr.createElement(ImageSetComponent_upvr.Label, {
			Image = Images_upvr["component_assets/circle_15_stroke_3"];
			ImageColor3 = arg1_2.Theme.SelectionCursor.AnimatedColor;
			BackgroundTransparency = 1;
			Size = UDim2.fromScale(1, 1);
			ScaleType = Enum.ScaleType.Slice;
			SliceCenter = Rect.new(7, 7, 8, 8);
			[Roact_upvr.Ref] = arg1.cursorRef;
		}, module)
	end)
end