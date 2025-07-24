-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:42
-- Luau version 6, Types version 3
-- Time taken: 0.001058 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local Parent = script.Parent.Parent
local GlobalConfig_upvr = require(Parent.GlobalConfig)
local any_strictInterface_result1_upvr = t.strictInterface({
	Size = t.optional(t.UDim2);
	AnchorPoint = t.optional(t.UDim2);
	CanvasSize = t.optional(t.UDim2);
	Position = t.optional(t.UDim2);
	[Roact_upvr.Children] = t.optional(t.table);
})
local withStyle_upvr = InGameMenuDependencies.UIBlox.Core.Style.withStyle
local Assets_upvr = require(Parent.Resources.Assets)
return function(arg1) -- Line 24, Named "PaddedScrollFrame"
	--[[ Upvalues[5]:
		[1]: GlobalConfig_upvr (readonly)
		[2]: any_strictInterface_result1_upvr (readonly)
		[3]: withStyle_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: Assets_upvr (readonly)
	]]
	if GlobalConfig_upvr.propValidation then
		assert(any_strictInterface_result1_upvr(arg1))
	end
	return withStyle_upvr(function(arg1_2) -- Line 28
		--[[ Upvalues[3]:
			[1]: Roact_upvr (copied, readonly)
			[2]: Assets_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		return Roact_upvr.createElement("ScrollingFrame", {
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
			ScrollBarImageColor3 = arg1_2.Theme.UIEmphasis.Color;
			ScrollBarImageTransparency = arg1_2.Theme.UIEmphasis.Transparency;
			BottomImage = Assets_upvr.Images.ScrollBottom;
			MidImage = Assets_upvr.Images.ScrollMid;
			TopImage = Assets_upvr.Images.ScrollTop;
			ClipsDescendants = false;
			ScrollBarThickness = 12;
			Size = arg1.Size;
			AnchorPoint = arg1.AnchorPoint;
			CanvasSize = arg1.CanvasSize;
			Position = arg1.Position;
		}, arg1[Roact_upvr.Children])
	end)
end