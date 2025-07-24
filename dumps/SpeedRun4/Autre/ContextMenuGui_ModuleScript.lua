-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:34
-- Luau version 6, Types version 3
-- Time taken: 0.006791 seconds

local RobloxGui_upvr = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local AvatarContextMenu_upvr = RobloxGui_upvr:WaitForChild("Modules"):WaitForChild("AvatarContextMenu")
local var4_upvw
local BindableEvent_upvr = Instance.new("BindableEvent")
local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.CreateContextMenuHolder(arg1, arg2) -- Line 33
	--[[ Upvalues[1]:
		[1]: RobloxGui_upvr (readonly)
	]]
	local Frame_3 = Instance.new("Frame")
	Frame_3.Name = "AvatarContextMenu"
	Frame_3.Position = UDim2.new(0, 0, 0, 0)
	Frame_3.Size = UDim2.new(1, 0, 1, 0)
	Frame_3.BackgroundTransparency = 1
	Frame_3.Parent = RobloxGui_upvr
	Frame_3.AutoLocalize = false
	return Frame_3
end
function module_upvr.CreateLeaveMenuButton(arg1, arg2, arg3) -- Line 44
	local ImageButton_2 = Instance.new("ImageButton")
	ImageButton_2.Name = "CloseMenuButton"
	ImageButton_2.BackgroundTransparency = 1
	ImageButton_2.AnchorPoint = Vector2.new(1, 0)
	ImageButton_2.Position = UDim2.new(1, -10, 0, 10)
	ImageButton_2.Size = UDim2.new(0.05, 0, 0.1, 0)
	ImageButton_2.Image = arg3.LeaveMenuImage
	ImageButton_2.Selectable = false
	ImageButton_2.Activated:Connect(function() -- Line 45, Named "closeMenu"
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.CloseMenuFunc()
	end)
	local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
	UIAspectRatioConstraint.AspectType = Enum.AspectType.FitWithinMaxSize
	UIAspectRatioConstraint.DominantAxis = Enum.DominantAxis.Height
	UIAspectRatioConstraint.AspectRatio = 1
	UIAspectRatioConstraint.Parent = ImageButton_2
	ImageButton_2.Parent = arg2
	return ImageButton_2
end
local function _(arg1) -- Line 71, Named "listenToViewportChange"
	if arg1 == nil then
	else
		local var10_upvw
		local function updateCamera() -- Line 76
			--[[ Upvalues[2]:
				[1]: var10_upvw (read and write)
				[2]: arg1 (readonly)
			]]
			if var10_upvw then
				var10_upvw:Disconnect()
			end
			var10_upvw = workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(arg1)
			arg1()
		end
		workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(updateCamera)
		if var10_upvw then
			var10_upvw:Disconnect()
		end
		var10_upvw = workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(arg1)
		arg1()
	end
end
local GuiService_upvr = game:GetService("GuiService")
function module_upvr.CreateMenuFrame(arg1, arg2) -- Line 89
	--[[ Upvalues[1]:
		[1]: GuiService_upvr (readonly)
	]]
	local ImageButton = Instance.new("ImageButton")
	ImageButton.Name = "Menu"
	ImageButton.AnchorPoint = arg2.AnchorPoint
	ImageButton.Size = arg2.Size
	ImageButton.Position = arg2.OnScreenPosition
	ImageButton.BackgroundTransparency = arg2.BackgroundTransparency
	ImageButton.BackgroundColor3 = arg2.BackgroundColor
	ImageButton.Image = arg2.BackgroundImage
	ImageButton.ScaleType = arg2.BackgroundImageScaleType
	ImageButton.SliceCenter = arg2.BackgroundImageSliceCenter
	ImageButton.AutoButtonColor = false
	ImageButton.BorderSizePixel = 0
	ImageButton.Selectable = false
	ImageButton.Visible = false
	ImageButton.Active = true
	ImageButton.ClipsDescendants = true
	ImageButton.Modal = true
	GuiService_upvr:AddSelectionParent("AvatarContextMenuGroup", ImageButton)
	local UIAspectRatioConstraint_2_upvr = Instance.new("UIAspectRatioConstraint")
	UIAspectRatioConstraint_2_upvr.AspectType = Enum.AspectType.ScaleWithParentSize
	UIAspectRatioConstraint_2_upvr.DominantAxis = Enum.DominantAxis.Height
	UIAspectRatioConstraint_2_upvr.Name = "MenuAspectRatio"
	UIAspectRatioConstraint_2_upvr.AspectRatio = arg2.AspectRatio
	UIAspectRatioConstraint_2_upvr.Parent = ImageButton
	local function updateAspectRatioForViewport_upvr() -- Line 120, Named "updateAspectRatioForViewport"
		--[[ Upvalues[1]:
			[1]: UIAspectRatioConstraint_2_upvr (readonly)
		]]
		local ViewportSize = workspace.CurrentCamera.ViewportSize
		if ViewportSize.x < ViewportSize.y then
			UIAspectRatioConstraint_2_upvr.DominantAxis = Enum.DominantAxis.Width
		else
			UIAspectRatioConstraint_2_upvr.DominantAxis = Enum.DominantAxis.Height
		end
	end
	if updateAspectRatioForViewport_upvr == nil then
	else
		local var15_upvw
		workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function() -- Line 76, Named "updateCamera"
			--[[ Upvalues[2]:
				[1]: var15_upvw (read and write)
				[2]: updateAspectRatioForViewport_upvr (readonly)
			]]
			if var15_upvw then
				var15_upvw:Disconnect()
			end
			var15_upvw = workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(updateAspectRatioForViewport_upvr)
			updateAspectRatioForViewport_upvr()
		end)
		if var15_upvw then
			var15_upvw:Disconnect()
		end
		var15_upvw = workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(updateAspectRatioForViewport_upvr)
		updateAspectRatioForViewport_upvr()
	end
	local UISizeConstraint = Instance.new("UISizeConstraint")
	UISizeConstraint.Name = "MenuSizeConstraint"
	UISizeConstraint.MaxSize = arg2.MaxSize
	UISizeConstraint.MinSize = arg2.MinSize
	UISizeConstraint.Parent = ImageButton
	local Frame = Instance.new("Frame")
	Frame.Name = "Content"
	Frame.Size = UDim2.new(1, 0, 1, 0)
	Frame.BackgroundTransparency = 1
	Frame.Parent = ImageButton
	local UIListLayout = Instance.new("UIListLayout")
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Top
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Parent = Frame
	local ScrollingFrame_upvr = Instance.new("ScrollingFrame")
	ScrollingFrame_upvr.Name = "ContextActionList"
	ScrollingFrame_upvr.AnchorPoint = Vector2.new(0.5, 1)
	ScrollingFrame_upvr.BackgroundColor3 = arg2.ButtonFrameColor
	ScrollingFrame_upvr.BackgroundTransparency = arg2.ButtonFrameTransparency
	ScrollingFrame_upvr.BorderSizePixel = 0
	ScrollingFrame_upvr.LayoutOrder = 2
	ScrollingFrame_upvr.Size = UDim2.new(1, -12, 0.54, 0)
	ScrollingFrame_upvr.CanvasSize = UDim2.new(0, 0, 0, 208)
	ScrollingFrame_upvr.ScrollBarThickness = 4
	ScrollingFrame_upvr.Selectable = false
	ScrollingFrame_upvr.Parent = Frame
	local UIListLayout_upvr = Instance.new("UIListLayout")
	UIListLayout_upvr.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_upvr.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_upvr.VerticalAlignment = Enum.VerticalAlignment.Top
	UIListLayout_upvr:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function() -- Line 166
		--[[ Upvalues[2]:
			[1]: ScrollingFrame_upvr (readonly)
			[2]: UIListLayout_upvr (readonly)
		]]
		ScrollingFrame_upvr.CanvasSize = UDim2.new(0, 0, 0, UIListLayout_upvr.AbsoluteContentSize.Y)
	end)
	UIListLayout_upvr.Parent = ScrollingFrame_upvr
	local TextButton = Instance.new("TextButton")
	TextButton.Name = "NameTag"
	TextButton.AnchorPoint = Vector2.new(0.5, 1)
	TextButton.BackgroundColor3 = arg2.NameTagColor
	TextButton.AutoButtonColor = false
	TextButton.BorderSizePixel = 0
	TextButton.LayoutOrder = 1
	TextButton.Size = UDim2.new(1, -12, 0.16, 0)
	TextButton.Font = arg2.Font
	TextButton.TextColor3 = arg2.TextColor
	TextButton.TextSize = 24 * arg2.TextScale
	TextButton.Text = ""
	TextButton.TextXAlignment = Enum.TextXAlignment.Center
	TextButton.TextYAlignment = Enum.TextYAlignment.Center
	TextButton.Selectable = false
	TextButton.Parent = Frame
	local Frame_2 = Instance.new("Frame")
	Frame_2.Name = "Underline"
	Frame_2.BackgroundColor3 = arg2.NameUnderlineColor
	Frame_2.AnchorPoint = Vector2.new(0, 1)
	Frame_2.BorderSizePixel = 0
	Frame_2.Position = UDim2.new(0, 0, 1, 0)
	Frame_2.Size = UDim2.new(1, 0, 0, 2)
	Frame_2.Parent = TextButton
	arg1:CreateLeaveMenuButton(ImageButton, arg2)
	ImageButton.Parent = arg1:CreateContextMenuHolder()
	arg1.ContextMenuFrame = ImageButton
	return ImageButton
end
function module_upvr.UpdateGuiTheme(arg1, arg2) -- Line 206
	--[[ Upvalues[1]:
		[1]: var4_upvw (read and write)
	]]
	arg1.ContextMenuFrame.Size = arg2.Size
	arg1.ContextMenuFrame.AnchorPoint = arg2.AnchorPoint
	arg1.ContextMenuFrame.BackgroundTransparency = arg2.BackgroundTransparency
	arg1.ContextMenuFrame.BackgroundColor3 = arg2.BackgroundColor
	arg1.ContextMenuFrame.Image = arg2.BackgroundImage
	arg1.ContextMenuFrame.ScaleType = arg2.BackgroundImageScaleType
	arg1.ContextMenuFrame.SliceCenter = arg2.BackgroundImageSliceCenter
	arg1.ContextMenuFrame.CloseMenuButton.Image = arg2.LeaveMenuImage
	arg1.ContextMenuFrame.MenuSizeConstraint.MaxSize = arg2.MaxSize
	arg1.ContextMenuFrame.MenuSizeConstraint.MinSize = arg2.MinSize
	arg1.ContextMenuFrame.MenuAspectRatio.AspectRatio = arg2.AspectRatio
	local Content = arg1.ContextMenuFrame.Content
	Content.ContextActionList.BackgroundColor3 = arg2.ButtonFrameColor
	Content.ContextActionList.BackgroundTransparency = arg2.ButtonFrameTransparency
	Content.NameTag.BackgroundColor3 = arg2.NameTagColor
	Content.NameTag.Font = arg2.Font
	Content.NameTag.TextColor3 = arg2.TextColor
	Content.NameTag.TextSize = 24 * arg2.TextScale
	Content.NameTag.Underline.BackgroundColor3 = arg2.NameUnderlineColor
	if var4_upvw then
		var4_upvw:UpdateGuiTheme(arg2)
	end
end
function module_upvr.BuildPlayerCarousel(arg1, arg2, arg3) -- Line 239
	--[[ Upvalues[3]:
		[1]: var4_upvw (read and write)
		[2]: AvatarContextMenu_upvr (readonly)
		[3]: BindableEvent_upvr (readonly)
	]]
	if not var4_upvw then
		var4_upvw = require(AvatarContextMenu_upvr.PlayerCarousel).new(arg3)
		var4_upvw.rbxGui.Parent = arg1.ContextMenuFrame.Content
	end
	var4_upvw:ClearPlayerEntries()
	if arg1.PlayerChangedConnection then
		arg1.PlayerChangedConnection:Disconnect()
	end
	arg1.PlayerChangedConnection = var4_upvw.PlayerChanged:Connect(function(arg1_2) -- Line 251
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: BindableEvent_upvr (copied, readonly)
		]]
		if arg1_2 then
			arg1.ContextMenuFrame.Content.NameTag.Text = arg1_2.Name
		else
			arg1.ContextMenuFrame.Content.NameTag.Text = ""
		end
		BindableEvent_upvr:Fire(arg1_2)
	end)
	for i = 1, #arg2 do
		var4_upvw:CreatePlayerEntry(arg2[i][1], arg2[i][2])
	end
	var4_upvw:FadeTowardsEdges()
	var4_upvw:AddCarouselDivider()
end
function module_upvr.RemovePlayerEntry(arg1, arg2) -- Line 267
	--[[ Upvalues[1]:
		[1]: var4_upvw (read and write)
	]]
	if not var4_upvw then
	else
		var4_upvw:RemovePlayerEntry(arg2)
	end
end
function module_upvr.GetBottomScreenPaddingConstant(arg1) -- Line 273
	return 0.02
end
function module_upvr.SetCloseMenuFunc(arg1, arg2) -- Line 277
	arg1.CloseMenuFunc = arg2
end
function module_upvr.SwitchToPlayerEntry(arg1, arg2, arg3) -- Line 281
	--[[ Upvalues[1]:
		[1]: var4_upvw (read and write)
	]]
	if not var4_upvw then
	else
		var4_upvw:SwitchToPlayerEntry(arg2, arg3)
	end
end
function module_upvr.OffsetPlayerEntry(arg1, arg2) -- Line 286
	--[[ Upvalues[1]:
		[1]: var4_upvw (read and write)
	]]
	if not var4_upvw then
	else
		var4_upvw:OffsetPlayerEntry(arg2)
	end
end
function module_upvr.GetSelectedPlayer(arg1) -- Line 291
	--[[ Upvalues[1]:
		[1]: var4_upvw (read and write)
	]]
	if not var4_upvw then
		return nil
	end
	return var4_upvw:GetSelectedPlayer()
end
function module_upvr.new() -- Line 296
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: BindableEvent_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, module_upvr)
	setmetatable_result1.CloseMenuFunc = nil
	setmetatable_result1.ContextMenuFrame = nil
	setmetatable_result1.LastSetPlayerIcon = nil
	setmetatable_result1.PlayerChangedConnection = nil
	setmetatable_result1.SelectedPlayerChanged = BindableEvent_upvr.Event
	return setmetatable_result1
end
return module_upvr.new()