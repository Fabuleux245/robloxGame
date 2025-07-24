-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:12:44
-- Luau version 6, Types version 3
-- Time taken: 0.000639 seconds

local Parent = script.Parent.Parent.Parent.Parent
local withStyle_upvr = require(Parent.Core.Style.withStyle)
local Roact_upvr = require(Parent.Parent.Roact)
return function(arg1) -- Line 10
	--[[ Upvalues[2]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 11
		--[[ Upvalues[2]:
			[1]: Roact_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return Roact_upvr.createElement("Frame", {
			AnchorPoint = Vector2.new(0, 1);
			Position = UDim2.new(0, 0, 1, -3);
			Size = UDim2.new(1, 0, 0, 3);
			BorderSizePixel = 1;
			BackgroundColor3 = arg1_2.Theme.SelectionCursor.Color;
			BorderColor3 = arg1_2.Theme.SelectionCursor.Color;
			BackgroundTransparency = arg1_2.Theme.SelectionCursor.Transparency;
			[Roact_upvr.Ref] = arg1.cursorRef;
		})
	end)
end