-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:40:54
-- Luau version 6, Types version 3
-- Time taken: 0.001515 seconds

return function() -- Line 1
	local Model = Instance.new("Model")
	Model.Name = "Billboard"
	Model.WorldPivot = CFrame.new(-89.21399688720703, 106.60600280761719, -253.22500610351562, -0.29351359605789185, -4.2523757315393595e-07, -0.9559594392776489, -1.850575017670053e-07, 1, -3.8800882862233266e-07, 0.955958366394043, 6.303451982603292e-08, -0.29351329803466797)
	local Part = Instance.new("Part")
	Part.Name = "AdUnit"
	Part.Anchored = true
	Part.BottomSurface = Enum.SurfaceType.Smooth
	Part.CanCollide = false
	Part.Transparency = 0.4
	Part.TopSurface = Enum.SurfaceType.Smooth
	Part.Color = Color3.fromRGB(255, 255, 255)
	Part.Size = Vector3.new(0.00100, 0.00100, 0.00100)
	Part.Locked = true
	Part.CFrame = CFrame.new(-89.21399688720703, 106.60600280761719, -253.22500610351562, -0.29351359605789185, -4.2523757315393595e-07, -0.9559594392776489, -1.850575017670053e-07, 1, -3.8800882862233266e-07, 0.955958366394043, 6.303451982603292e-08, -0.29351329803466797)
	Part.Parent = Model
	local SurfaceGui = Instance.new("SurfaceGui")
	SurfaceGui.Name = "AdSurfaceGui"
	SurfaceGui.Enabled = false
	SurfaceGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	SurfaceGui.ClipsDescendants = true
	SurfaceGui.SizingMode = Enum.SurfaceGuiSizingMode.PixelsPerStud
	SurfaceGui.Parent = Part
	local ImageLabel = Instance.new("ImageLabel")
	ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel.Size = UDim2.new(1, 0, 1, 0)
	ImageLabel.BackgroundTransparency = 1
	ImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
	ImageLabel.BorderSizePixel = 0
	ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel.ScaleType = Enum.ScaleType.Fit
	ImageLabel.Parent = SurfaceGui
	local Weld = Instance.new("Weld")
	Weld.C1 = CFrame.new(-221.54994201660156, 10, 71.50015258789062, 0, -1, -2.8437621324052686e-34, 5.332054313944397e-34, 2.8437621324052686e-34, -1, 1, 0, 5.332054313944397e-34)
	Weld.C0 = CFrame.new(0, -7.5, 0, 1, 0, 0, 1.0664108627888793e-33, 0, -1, 0, 1, 5.687524264810537e-34)
	Weld.Parent = Part
	Weld.Part0 = Part
	return Model
end