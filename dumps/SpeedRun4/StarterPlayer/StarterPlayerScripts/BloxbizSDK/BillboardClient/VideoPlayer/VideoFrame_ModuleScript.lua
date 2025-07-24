-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:42:00
-- Luau version 6, Types version 3
-- Time taken: 0.000860 seconds

return function() -- Line 1
	local Frame = Instance.new("Frame")
	Frame.Name = "VideoFrame"
	Frame.ZIndex = 2147483647
	Frame.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame.Size = UDim2.new(1, 0, 1, 0)
	Frame.BackgroundTransparency = 1
	Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
	Frame.BorderSizePixel = 0
	Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	local ImageButton = Instance.new("ImageButton")
	ImageButton.Name = "AudioBtn"
	ImageButton.ZIndex = 2147483647
	ImageButton.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageButton.Size = UDim2.new(1, 0, 1, 0)
	ImageButton.BackgroundTransparency = 1
	ImageButton.Position = UDim2.new(0.5, 0, 0.5, 0)
	ImageButton.BorderSizePixel = 0
	ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageButton.Parent = Frame
	local ImageLabel = Instance.new("ImageLabel")
	ImageLabel.Name = "AudioLabel"
	ImageLabel.ZIndex = 2147483647
	ImageLabel.AnchorPoint = Vector2.new(1, 0)
	ImageLabel.SizeConstraint = Enum.SizeConstraint.RelativeYY
	ImageLabel.Size = UDim2.new(0.10526315789473684, 0, 0.10526315789473684, 0)
	ImageLabel.BackgroundTransparency = 1
	ImageLabel.Position = UDim2.new(0.9741935483870968, 0, 0.05263157894736842, 0)
	ImageLabel.BorderSizePixel = 0
	ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel.ImageColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel.Image = "http://www.roblox.com/asset/?id=10647669422"
	ImageLabel.Parent = Frame
	return Frame
end