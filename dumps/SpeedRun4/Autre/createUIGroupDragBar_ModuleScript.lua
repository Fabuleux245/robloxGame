-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:11
-- Luau version 6, Types version 3
-- Time taken: 0.001939 seconds

local Parent = script.Parent
local CoreGui_upvr = game:GetService("CoreGui")
local Constants_upvr = require(Parent.Constants)
local DragBar_upvr = require(Parent.DragBar)
return function(arg1) -- Line 8
	--[[ Upvalues[3]:
		[1]: CoreGui_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: DragBar_upvr (readonly)
	]]
	local Part = Instance.new("Part")
	Part.Size = Vector3.new(0.60000, 0.11999, 0.00000)
	Part.Name = arg1.name.."_DragBar"
	Part.Color = Color3.new(1, 1, 1)
	Part.Parent = workspace.CurrentCamera
	Part.Anchored = true
	Part.CanTouch = true
	Part.CanCollide = false
	Part.CastShadow = false
	Part.Material = Enum.Material.Glass
	Part.Transparency = 1
	local DragDetector = Instance.new("DragDetector")
	DragDetector.Enabled = true
	DragDetector.Parent = Part
	DragDetector.DragStyle = Enum.DragDetectorDragStyle.BestForDevice
	local SurfaceGui = Instance.new("SurfaceGui", CoreGui_upvr)
	SurfaceGui.Name = "dragBar_SurfaceGui"
	SurfaceGui.Enabled = true
	SurfaceGui.CanvasSize = Vector2.new(Part.Size.X, Part.Size.Y) * Constants_upvr.VR_PANEL_RESOLUTION_MULTIPLIER
	SurfaceGui.AlwaysOnTop = true
	SurfaceGui.Shape = Enum.SurfaceGuiShape.Flat
	SurfaceGui.HorizontalCurvature = 0
	SurfaceGui.Active = true
	SurfaceGui.Adornee = Part
	SurfaceGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	SurfaceGui.LightInfluence = 0
	SurfaceGui.ZOffset = 0
	SurfaceGui.Face = Enum.NormalId.Back
	local ImageLabel = Instance.new("ImageLabel")
	ImageLabel.Image = "rbxasset://textures/ui/InGameMenu/DragBar_Bright.png"
	ImageLabel.Parent = SurfaceGui
	ImageLabel.BackgroundTransparency = 1
	ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
	ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
	ImageLabel.Size = UDim2.new(0.5, 0, 0.25, 0)
	ImageLabel.ImageColor3 = Color3.new(1, 1, 1)
	DragDetector.RunLocally = true
	if arg1.dragFunction then
		DragDetector.DragContinue:Connect(arg1.dragFunction)
	end
	if arg1.dragStartFunction then
		DragDetector.DragStart:Connect(arg1.dragStartFunction)
	end
	if arg1.dragEndFunction then
		DragDetector.DragEnd:Connect(arg1.dragEndFunction)
	end
	return DragBar_upvr.new(Part, ImageLabel)
end