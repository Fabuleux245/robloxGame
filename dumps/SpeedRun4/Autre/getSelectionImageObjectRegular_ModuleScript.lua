-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:52:04
-- Luau version 6, Types version 3
-- Time taken: 0.000649 seconds

local Colors_upvr = require(script.Parent.Colors)
return function() -- Line 4, Named "getSelectionImageObjectRegular"
	--[[ Upvalues[1]:
		[1]: Colors_upvr (readonly)
	]]
	local ImageLabel = Instance.new("ImageLabel")
	ImageLabel.Image = "rbxasset://textures/ui/InspectMenu/selection_regular.png"
	ImageLabel.ImageColor3 = Colors_upvr.White
	ImageLabel.ScaleType = Enum.ScaleType.Slice
	ImageLabel.SliceCenter = Rect.new(5, 5, 120, 20)
	ImageLabel.BackgroundTransparency = 1
	ImageLabel.Size = UDim2.new(1, 0, 1, 0)
	return ImageLabel
end