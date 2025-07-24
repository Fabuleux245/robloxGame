-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:42
-- Luau version 6, Types version 3
-- Time taken: 0.020003 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local module = {}
local UserInputService_upvr = game:GetService("UserInputService")
local ContextActionService_upvr = game:GetService("ContextActionService")
local GuiService_upvr = game:GetService("GuiService")
local RobloxGui_upvr = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local Modules = RobloxGui_upvr:WaitForChild("Modules")
local var7_upvw
function getViewportSize() -- Line 28
	while not game.Workspace.CurrentCamera do
		game.Workspace.Changed:Wait()
	end
	assert(game.Workspace.CurrentCamera, "")
	while not (game.Workspace.CurrentCamera.ViewportSize == Vector2.new(0, 0) or game.Workspace.CurrentCamera.ViewportSize ~= Vector2.new(1, 1)) do
		game.Workspace.CurrentCamera.Changed:Wait()
	end
	return game.Workspace.CurrentCamera.ViewportSize
end
local any_IsEnabled_result1_upvr = require(Modules:WaitForChild("TenFootInterface")):IsEnabled()
local var9_upvw = false
local var10 = false
local var11
if UserInputService_upvr.TouchEnabled == true then
	if UserInputService_upvr.MouseEnabled ~= false then
		var10 = false
	else
		var10 = true
	end
end
local var12 = var10
if var12 then
	var11 = getViewportSize().Y
	if var11 > 370 then
	else
	end
end
var11 = var10
if var11 then
end
local var13_upvw = false
local var14_upvw = false
local var15_upvw = false
local var16_upvw = false
local var17_upvw = false
local tbl_upvr = {
	WindowTitle = "Confirm";
	MainText = "Is this okay?";
	ConfirmationText = "Confirm";
	CancelText = "Cancel";
	CancelActive = true;
	StripeColor = Color3.new(0.01, 0.72, 0.34);
	Image = nil;
	ImageConsoleVR = nil;
	PromptCompletedCallback = nil;
}
local var19_upvw
local var20_upvw
if any_IsEnabled_result1_upvr or var9_upvw then
	-- KONSTANTWARNING: GOTO [232] #184
end
-- KONSTANTERROR: Expression was reused, decompilation is incorrect
if true then
	local _ = UDim2.new(0.05, 0, -0.9, 0)
elseif not true then
end
local var22_upvw = 52
-- KONSTANTERROR: Expression was reused, decompilation is incorrect
if true then
	var22_upvw = 44
end
local var23_upvw = 24
if any_IsEnabled_result1_upvr or var9_upvw then
	var23_upvw = 42
end
local function createFrame_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 119, Named "createFrame"
	local Frame = Instance.new("Frame")
	Frame.Name = arg1
	Frame.Size = arg2
	local var25 = arg3
	if not var25 then
		var25 = UDim2.new(0, 0, 0, 0)
	end
	Frame.Position = var25
	Frame.BackgroundTransparency = arg4
	var25 = arg5
	local var26 = var25
	if not var26 then
		var26 = Color3.new()
	end
	Frame.BackgroundColor3 = var26
	Frame.BorderSizePixel = 0
	Frame.ZIndex = 8
	return Frame
end
local function createTextLabel_upvr(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 132, Named "createTextLabel"
	local TextLabel = Instance.new("TextLabel")
	TextLabel.Name = arg1
	local var28 = arg2
	if not var28 then
		var28 = UDim2.new(0, 0, 0, 0)
	end
	TextLabel.Size = var28
	TextLabel.Position = arg3
	TextLabel.BackgroundTransparency = 1
	TextLabel.Font = arg4
	TextLabel.TextSize = arg5
	TextLabel.TextColor3 = Color3.new(1, 1, 1)
	TextLabel.Text = arg6
	TextLabel.ZIndex = 8
	return TextLabel
end
local TextService_upvr = game:GetService("TextService")
local function createScrollingTextLabel_upvr(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 147, Named "createScrollingTextLabel"
	--[[ Upvalues[2]:
		[1]: createTextLabel_upvr (readonly)
		[2]: TextService_upvr (readonly)
	]]
	local createTextLabel_upvr_result1_3 = createTextLabel_upvr(arg1, arg2, arg3, arg4, arg5, arg6)
	createTextLabel_upvr_result1_3.TextXAlignment = Enum.TextXAlignment.Left
	createTextLabel_upvr_result1_3.TextYAlignment = Enum.TextYAlignment.Top
	createTextLabel_upvr_result1_3.TextWrapped = true
	if arg2.Y.Offset < TextService_upvr:GetTextSize(arg6, arg5, arg4, Vector2.new(arg2.X.Offset, 10000)).Y then
		local vector2 = Vector2.new((arg2.X.Offset) - (arg7 + 20), 10000)
		local any_GetTextSize_result1 = TextService_upvr:GetTextSize(arg6, arg5, arg4, vector2)
		local Frame_2_upvr = Instance.new("Frame")
		Frame_2_upvr.Name = "ScrollingTextParent"
		Frame_2_upvr.BackgroundTransparency = 1
		Frame_2_upvr.BackgroundColor3 = Color3.new(1, 1, 1)
		Frame_2_upvr.BorderSizePixel = 0
		Frame_2_upvr.Position = arg3
		Frame_2_upvr.Size = arg2 - UDim2.new(0, arg7 * 2, 0, 0)
		local ScrollingFrame = Instance.new("ScrollingFrame")
		ScrollingFrame.Selectable = true
		ScrollingFrame.Name = "ScrollingFrame"
		ScrollingFrame.BackgroundTransparency = 1
		ScrollingFrame.BackgroundColor3 = Color3.new(1, 1, 1)
		ScrollingFrame.BorderSizePixel = 0
		ScrollingFrame.Position = UDim2.new(0, 0, 0, 0)
		ScrollingFrame.Size = arg2
		ScrollingFrame.CanvasSize = UDim2.new(0, vector2.X - arg7 * 2, 0, any_GetTextSize_result1.Y)
		ScrollingFrame.ScrollBarThickness = arg7
		ScrollingFrame.SelectionImageObject = Instance.new("ImageLabel")
		ScrollingFrame.SelectionImageObject.Name = "EmptySelectionImage"
		ScrollingFrame.SelectionImageObject.BackgroundTransparency = 1
		ScrollingFrame.SelectionImageObject.Image = ""
		ScrollingFrame.Active = false
		ScrollingFrame.SelectionGained:connect(function() -- Line 183
			--[[ Upvalues[1]:
				[1]: Frame_2_upvr (readonly)
			]]
			Frame_2_upvr.BackgroundTransparency = 0.15
		end)
		ScrollingFrame.SelectionLost:connect(function() -- Line 187
			--[[ Upvalues[1]:
				[1]: Frame_2_upvr (readonly)
			]]
			Frame_2_upvr.BackgroundTransparency = 1
		end)
		createTextLabel_upvr_result1_3.Position = UDim2.new(0, 10, 0, 0)
		createTextLabel_upvr_result1_3.Size = UDim2.new(0, vector2.X, 0, any_GetTextSize_result1.Y)
		createTextLabel_upvr_result1_3.Parent = ScrollingFrame
		ScrollingFrame.Parent = Frame_2_upvr
		return Frame_2_upvr
	end
	return createTextLabel_upvr_result1_3
end
local function _(arg1, arg2, arg3, arg4, arg5) -- Line 204, Named "createImageLabel"
	local ImageLabel_2 = Instance.new("ImageLabel")
	ImageLabel_2.Name = arg1
	ImageLabel_2.Size = arg2
	ImageLabel_2.BackgroundTransparency = 1
	ImageLabel_2.Position = arg3
	ImageLabel_2.Image = arg4
	if arg5 then
		arg5(ImageLabel_2)
	end
	return ImageLabel_2
end
local function createImageButtonWithText_upvr(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 219, Named "createImageButtonWithText"
	--[[ Upvalues[2]:
		[1]: createTextLabel_upvr (readonly)
		[2]: var23_upvw (read and write)
	]]
	local ImageButton_upvr = Instance.new("ImageButton")
	ImageButton_upvr.Name = arg1
	ImageButton_upvr.Size = arg2
	ImageButton_upvr.Position = arg3
	ImageButton_upvr.Image = arg4
	ImageButton_upvr.BackgroundTransparency = 1
	ImageButton_upvr.AutoButtonColor = false
	ImageButton_upvr.ZIndex = 8
	ImageButton_upvr.Modal = true
	ImageButton_upvr.Selectable = true
	ImageButton_upvr.SelectionImageObject = Instance.new("ImageLabel")
	ImageButton_upvr.SelectionImageObject.Name = "EmptySelectionImage"
	ImageButton_upvr.SelectionImageObject.BackgroundTransparency = 1
	ImageButton_upvr.SelectionImageObject.Image = ""
	local createTextLabel_upvr_result1_4 = createTextLabel_upvr(arg1.."Text", UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 0, 0), arg7, var23_upvw, arg6)
	createTextLabel_upvr_result1_4.ZIndex = 9
	createTextLabel_upvr_result1_4.Parent = ImageButton_upvr
	ImageButton_upvr.MouseEnter:connect(function() -- Line 239
		--[[ Upvalues[2]:
			[1]: ImageButton_upvr (readonly)
			[2]: arg5 (readonly)
		]]
		ImageButton_upvr.Image = arg5
	end)
	ImageButton_upvr.MouseLeave:connect(function() -- Line 242
		--[[ Upvalues[2]:
			[1]: ImageButton_upvr (readonly)
			[2]: arg4 (readonly)
		]]
		ImageButton_upvr.Image = arg4
	end)
	ImageButton_upvr.MouseButton1Click:connect(function() -- Line 245
		--[[ Upvalues[2]:
			[1]: ImageButton_upvr (readonly)
			[2]: arg4 (readonly)
		]]
		ImageButton_upvr.Image = arg4
	end)
	ImageButton_upvr.SelectionGained:connect(function() -- Line 248
		--[[ Upvalues[2]:
			[1]: ImageButton_upvr (readonly)
			[2]: arg5 (readonly)
		]]
		ImageButton_upvr.Image = arg5
	end)
	ImageButton_upvr.SelectionLost:connect(function() -- Line 251
		--[[ Upvalues[2]:
			[1]: ImageButton_upvr (readonly)
			[2]: arg4 (readonly)
		]]
		ImageButton_upvr.Image = arg4
	end)
	return ImageButton_upvr
end
local createFrame_result1_upvr_2 = createFrame_upvr("PromptDialog", UDim2.new(0, 400, 0, 305), UDim2.new(0.5, -200, 0, -305), 1, nil)
createFrame_result1_upvr_2.Visible = false
createFrame_result1_upvr_2.Parent = RobloxGui_upvr
createFrame_result1_upvr_2.Active = true
local createFrame_result1_upvr = createFrame_upvr("ContainerFrame", UDim2.new(1, 0, 1, 0), nil, 0.36, Color3.new(0, 0, 0))
createFrame_result1_upvr.ZIndex = 8
createFrame_result1_upvr.Parent = createFrame_result1_upvr_2
function AddDefaultsToPromptOptions(arg1, arg2) -- Line 268
	for i, v in pairs(arg2) do
		if arg1[i] == nil then
			arg1[i] = v
		end
	end
end
function CreatePromptVRorConsole(arg1) -- Line 277
	--[[ Upvalues[5]:
		[1]: createFrame_result1_upvr (readonly)
		[2]: createTextLabel_upvr (readonly)
		[3]: createFrame_upvr (readonly)
		[4]: createScrollingTextLabel_upvr (readonly)
		[5]: createImageButtonWithText_upvr (readonly)
	]]
	local var52 = 90
	if arg1.ImageConsoleVR then
		local FetchImageFunctionConsoleVR = arg1.FetchImageFunctionConsoleVR
		local ImageLabel = Instance.new("ImageLabel")
		ImageLabel.Name = "Image"
		ImageLabel.Size = UDim2.new(0, 600, 0, 600)
		ImageLabel.BackgroundTransparency = 1
		ImageLabel.Position = UDim2.new(0, 100, 0, 45)
		ImageLabel.Image = arg1.ImageConsoleVR
		if FetchImageFunctionConsoleVR then
			FetchImageFunctionConsoleVR(ImageLabel)
		end
		local var55 = ImageLabel
		var55.ZIndex = 9
		var55.Parent = createFrame_result1_upvr
		var52 = 800
	end
	local createTextLabel_upvr_result1 = createTextLabel_upvr("WindowTitle", UDim2.new(0, 800, 0, 60), UDim2.new(0, var52, 0, 60), Enum.Font.SourceSansBold, 48, arg1.WindowTitle)
	createTextLabel_upvr_result1.TextXAlignment = Enum.TextXAlignment.Left
	createTextLabel_upvr_result1.TextYAlignment = Enum.TextYAlignment.Center
	createTextLabel_upvr_result1.Parent = createFrame_result1_upvr
	createTextLabel_upvr_result1.ZIndex = 9
	local createFrame_upvr_result1_2 = createFrame_upvr("ColorStripe", UDim2.new(0, 832, 0, 4), UDim2.new(0, var52, 0, 120), 0, arg1.StripeColor)
	createFrame_upvr_result1_2.ZIndex = 9
	createFrame_upvr_result1_2.Parent = createFrame_result1_upvr
	createScrollingTextLabel_upvr("MainText", UDim2.new(0, 800, 0, 450), UDim2.new(0, var52, 0, 152), Enum.Font.SourceSansBold, 44, arg1.MainText, 16).Parent = createFrame_result1_upvr
	local Rect_new_result1 = Rect.new(8, 8, 56, 56)
	local Slice = Enum.ScaleType.Slice
	local createImageButtonWithText_result1_2 = createImageButtonWithText_upvr("ConfirmButton", UDim2.new(0, 320, 0, 80), UDim2.new(0, var52, 1, -125), "rbxasset://textures/ui/VR/button.png", "rbxasset://textures/ui/VR/buttonSelected.png", arg1.ConfirmationText, Enum.Font.SourceSans)
	createImageButtonWithText_result1_2.Parent = createFrame_result1_upvr
	createImageButtonWithText_result1_2.ScaleType = Slice
	createImageButtonWithText_result1_2.SliceCenter = Rect_new_result1
	createImageButtonWithText_result1_2.MouseButton1Click:connect(function() -- Line 314
		OnPromptEnded(true)
	end)
	if arg1.CancelActive then
		local createImageButtonWithText_result1 = createImageButtonWithText_upvr("CancelButton", UDim2.new(0, 320, 0, 80), UDim2.new(0, var52 + 340, 1, -125), "rbxasset://textures/ui/VR/button.png", "rbxasset://textures/ui/VR/buttonSelected.png", arg1.CancelText, Enum.Font.SourceSans)
		createImageButtonWithText_result1.Parent = createFrame_result1_upvr
		createImageButtonWithText_result1.ScaleType = Slice
		createImageButtonWithText_result1.SliceCenter = Rect_new_result1
		createImageButtonWithText_result1.MouseButton1Click:connect(function() -- Line 326
			OnPromptEnded(false)
		end)
	end
end
local var64_upvr = not true
function CreatePromptPCorTablet(arg1) -- Line 332
	--[[ Upvalues[7]:
		[1]: createTextLabel_upvr (readonly)
		[2]: var22_upvw (read and write)
		[3]: createFrame_result1_upvr (readonly)
		[4]: createFrame_upvr (readonly)
		[5]: var64_upvr (readonly)
		[6]: createScrollingTextLabel_upvr (readonly)
		[7]: createImageButtonWithText_upvr (readonly)
	]]
	local createTextLabel_result1 = createTextLabel_upvr("WindowTitle", UDim2.new(1, 0, 0, var22_upvw), UDim2.new(0, 0, 0, 0), Enum.Font.SourceSansBold, 24, arg1.WindowTitle)
	createTextLabel_result1.Parent = createFrame_result1_upvr
	createTextLabel_result1.ZIndex = 9
	local createFrame_upvr_result1 = createFrame_upvr("ColorStripe", UDim2.new(1, 0, 0, 2), nil, 0, arg1.StripeColor)
	createFrame_upvr_result1.Position = UDim2.new(0, 0, 0, var22_upvw)
	createFrame_upvr_result1.ZIndex = 9
	createFrame_upvr_result1.Parent = createFrame_result1_upvr
	local var67
	if arg1.Image then
		local FetchImageFunction_2 = arg1.FetchImageFunction
		local ImageLabel_3 = Instance.new("ImageLabel")
		ImageLabel_3.Name = "Image"
		ImageLabel_3.Size = UDim2.new(0, 150, 0, 150)
		ImageLabel_3.BackgroundTransparency = 1
		ImageLabel_3.Position = UDim2.new(0, 15, 0, var22_upvw + 17)
		ImageLabel_3.Image = arg1.Image
		if FetchImageFunction_2 then
			FetchImageFunction_2(ImageLabel_3)
		end
		local var70 = ImageLabel_3
		var70.ZIndex = 9
		var70.Parent = createFrame_result1_upvr
		if var64_upvr then
			var67 = createScrollingTextLabel_upvr("MainText", UDim2.new(0, 195, 0, 150), UDim2.new(0, 185, 0, var22_upvw + 17), Enum.Font.SourceSansBold, 22, arg1.MainText, 8)
		else
			var67 = createScrollingTextLabel_upvr("MainText", UDim2.new(0, 233, 0, 150), UDim2.new(0, 185, 0, var22_upvw + 17), Enum.Font.SourceSansBold, 22, arg1.MainText, 8)
		end
	elseif var64_upvr then
		var67 = createScrollingTextLabel_upvr("MainText", UDim2.new(0, 360, 0, 150), UDim2.new(0, 20, 0, var22_upvw + 17), Enum.Font.SourceSansBold, 22, arg1.MainText, 8)
	else
		var67 = createScrollingTextLabel_upvr("MainText", UDim2.new(0, 398, 0, 150), UDim2.new(0, 20, 0, var22_upvw + 17), Enum.Font.SourceSansBold, 22, arg1.MainText, 8)
	end
	var67.Parent = createFrame_result1_upvr
	local Rect_new_result1_3 = Rect.new(8, 8, 56, 56)
	local Slice_3 = Enum.ScaleType.Slice
	local var73
	if var64_upvr then
		if arg1.CancelActive then
			var73 = createImageButtonWithText_upvr("ConfirmButton", UDim2.new(0, 128, 0, 44), UDim2.new(0.5, -138, 1, -59), "rbxasset://textures/ui/VR/button.png", "rbxasset://textures/ui/VR/buttonSelected.png", arg1.ConfirmationText, Enum.Font.SourceSansBold)
		else
			var73 = createImageButtonWithText_upvr("ConfirmButton", UDim2.new(0, 128, 0, 44), UDim2.new(0.5, -64, 1, -59), "rbxasset://textures/ui/VR/button.png", "rbxasset://textures/ui/VR/buttonSelected.png", arg1.ConfirmationText, Enum.Font.SourceSans)
		end
	elseif arg1.CancelActive then
		var73 = createImageButtonWithText_upvr("ConfirmButton", UDim2.new(0, 128, 0, 38), UDim2.new(0.5, -138, 1, -53), "rbxasset://textures/ui/VR/button.png", "rbxasset://textures/ui/VR/buttonSelected.png", arg1.ConfirmationText, Enum.Font.SourceSansBold)
	else
		var73 = createImageButtonWithText_upvr("ConfirmButton", UDim2.new(0, 128, 0, 38), UDim2.new(0.5, -64, 1, -53), "rbxasset://textures/ui/VR/button.png", "rbxasset://textures/ui/VR/buttonSelected.png", arg1.ConfirmationText, Enum.Font.SourceSans)
	end
	var73.Parent = createFrame_result1_upvr
	var73.ScaleType = Slice_3
	var73.SliceCenter = Rect_new_result1_3
	var73.MouseButton1Click:connect(function() -- Line 398
		OnPromptEnded(true)
	end)
	if arg1.CancelActive then
		local var75
		if var64_upvr then
			var75 = createImageButtonWithText_upvr("CancelButton", UDim2.new(0, 128, 0, 44), UDim2.new(0.5, 10, 1, -59), "rbxasset://textures/ui/VR/button.png", "rbxasset://textures/ui/VR/buttonSelected.png", arg1.CancelText, Enum.Font.SourceSans)
		else
			var75 = createImageButtonWithText_upvr("CancelButton", UDim2.new(0, 128, 0, 38), UDim2.new(0.5, 10, 1, -53), "rbxasset://textures/ui/VR/button.png", "rbxasset://textures/ui/VR/buttonSelected.png", arg1.CancelText, Enum.Font.SourceSans)
		end
		var75.Parent = createFrame_result1_upvr
		var75.ScaleType = Slice_3
		var75.SliceCenter = Rect_new_result1_3
		var75.MouseButton1Click:connect(function() -- Line 416
			OnPromptEnded(false)
		end)
		var75.NextSelectionLeft = var73
		var73.NextSelectionRight = var75
	end
end
function CreatePromptPhone(arg1) -- Line 425
	--[[ Upvalues[6]:
		[1]: createTextLabel_upvr (readonly)
		[2]: var22_upvw (read and write)
		[3]: createFrame_result1_upvr (readonly)
		[4]: createFrame_upvr (readonly)
		[5]: createScrollingTextLabel_upvr (readonly)
		[6]: createImageButtonWithText_upvr (readonly)
	]]
	local createTextLabel_upvr_result1_2 = createTextLabel_upvr("WindowTitle", UDim2.new(1, 0, 0, var22_upvw), UDim2.new(0, 0, 0, 0), Enum.Font.SourceSansBold, 24, arg1.WindowTitle)
	createTextLabel_upvr_result1_2.Parent = createFrame_result1_upvr
	createTextLabel_upvr_result1_2.ZIndex = 9
	local createFrame_upvr_result1_3 = createFrame_upvr("ColorStripe", UDim2.new(1, 0, 0, 2), nil, 0, arg1.StripeColor)
	createFrame_upvr_result1_3.Position = UDim2.new(0, 0, 0, var22_upvw)
	createFrame_upvr_result1_3.ZIndex = 9
	createFrame_upvr_result1_3.Parent = createFrame_result1_upvr
	local var79
	if arg1.Image then
		local FetchImageFunction = arg1.FetchImageFunction
		local ImageLabel_4 = Instance.new("ImageLabel")
		ImageLabel_4.Name = "Image"
		ImageLabel_4.Size = UDim2.new(0, 120, 0, 120)
		ImageLabel_4.BackgroundTransparency = 1
		ImageLabel_4.Position = UDim2.new(0, 15, 0, var22_upvw + 17)
		ImageLabel_4.Image = arg1.Image
		if FetchImageFunction then
			FetchImageFunction(ImageLabel_4)
		end
		local var82 = ImageLabel_4
		var82.ZIndex = 9
		var82.Parent = createFrame_result1_upvr
		var79 = createScrollingTextLabel_upvr("MainText", UDim2.new(0, createFrame_result1_upvr.AbsoluteSize.X - 175, 0, 120), UDim2.new(0, 155, 0, var22_upvw + 17), Enum.Font.SourceSansBold, 20, arg1.MainText, 8)
	else
		var79 = createScrollingTextLabel_upvr("MainText", UDim2.new(1, createFrame_result1_upvr.AbsoluteSize.X - 40, 0, 120), UDim2.new(0, 20, 0, var22_upvw + 17), Enum.Font.SourceSansBold, 20, arg1.MainText, 8)
	end
	var79.Parent = createFrame_result1_upvr
	local Rect_new_result1_2 = Rect.new(8, 8, 56, 56)
	local Slice_2 = Enum.ScaleType.Slice
	local var85
	if arg1.CancelActive then
		var85 = createImageButtonWithText_upvr("ConfirmButton", UDim2.new(0, 128, 0, 44), UDim2.new(0.5, -138, 1, -59), "rbxasset://textures/ui/VR/button.png", "rbxasset://textures/ui/VR/buttonSelected.png", arg1.ConfirmationText, Enum.Font.SourceSansBold)
	else
		var85 = createImageButtonWithText_upvr("ConfirmButton", UDim2.new(0, 128, 0, 44), UDim2.new(0.5, -64, 1, -59), "rbxasset://textures/ui/VR/button.png", "rbxasset://textures/ui/VR/buttonSelected.png", arg1.ConfirmationText, Enum.Font.SourceSans)
	end
	var85.Parent = createFrame_result1_upvr
	var85.ScaleType = Slice_2
	var85.SliceCenter = Rect_new_result1_2
	var85.MouseButton1Click:connect(function() -- Line 471
		OnPromptEnded(true)
	end)
	if arg1.CancelActive then
		local createImageButtonWithText_result1_3 = createImageButtonWithText_upvr("CancelButton", UDim2.new(0, 128, 0, 44), UDim2.new(0.5, 10, 1, -59), "rbxasset://textures/ui/VR/button.png", "rbxasset://textures/ui/VR/buttonSelected.png", arg1.CancelText, Enum.Font.SourceSans)
		createImageButtonWithText_result1_3.Parent = createFrame_result1_upvr
		createImageButtonWithText_result1_3.ScaleType = Slice_2
		createImageButtonWithText_result1_3.SliceCenter = Rect_new_result1_2
		createImageButtonWithText_result1_3.MouseButton1Click:connect(function() -- Line 482
			OnPromptEnded(false)
		end)
	end
end
local var89_upvr = true
function CreatePromptFromOptions(arg1) -- Line 488
	--[[ Upvalues[4]:
		[1]: createFrame_result1_upvr (readonly)
		[2]: var9_upvw (read and write)
		[3]: any_IsEnabled_result1_upvr (readonly)
		[4]: var89_upvr (readonly)
	]]
	createFrame_result1_upvr:ClearAllChildren()
	if var9_upvw or any_IsEnabled_result1_upvr then
		CreatePromptVRorConsole(arg1)
	else
		if var89_upvr then
			CreatePromptPhone(arg1)
			return
		end
		CreatePromptPCorTablet(arg1)
	end
end
function SetSelectedObject() -- Line 500
	--[[ Upvalues[2]:
		[1]: createFrame_result1_upvr (readonly)
		[2]: GuiService_upvr (readonly)
	]]
	local CancelButton = createFrame_result1_upvr:FindFirstChild("CancelButton")
	if CancelButton then
		GuiService_upvr.SelectedCoreObject = CancelButton
	else
		local ConfirmButton = createFrame_result1_upvr:FindFirstChild("ConfirmButton")
		if ConfirmButton then
			GuiService_upvr.SelectedCoreObject = ConfirmButton
		end
	end
end
function OnTweenInFinished() -- Line 512
	--[[ Upvalues[2]:
		[1]: var14_upvw (read and write)
		[2]: any_IsEnabled_result1_upvr (readonly)
	]]
	if var14_upvw or any_IsEnabled_result1_upvr then
		SetSelectedObject()
	end
end
local udim2_upvw = UDim2.new(0.5, -200, 0.5, -152)
function ShowPrompt() -- Line 518
	--[[ Upvalues[6]:
		[1]: createFrame_result1_upvr_2 (readonly)
		[2]: any_IsEnabled_result1_upvr (readonly)
		[3]: UserInputService_upvr (readonly)
		[4]: var9_upvw (read and write)
		[5]: udim2_upvw (read and write)
		[6]: var7_upvw (read and write)
	]]
	createFrame_result1_upvr_2.Visible = true
	if any_IsEnabled_result1_upvr then
		UserInputService_upvr.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.ForceHide
	end
	if var9_upvw then
		createFrame_result1_upvr_2.Position = udim2_upvw
		var7_upvw:SetContent(createFrame_result1_upvr_2)
		var7_upvw:Show(true)
		DisableControllerMovement()
	else
		createFrame_result1_upvr_2:TweenPosition(udim2_upvw, Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, 0.3, true, OnTweenInFinished)
		DisableControllerMovement()
		EnableControllerInput()
	end
end
local udim2_upvw_2 = UDim2.new(0.5, -200, 0, -305)
function HidePrompt() -- Line 535
	--[[ Upvalues[11]:
		[1]: createFrame_result1_upvr_2 (readonly)
		[2]: var13_upvw (read and write)
		[3]: GuiService_upvr (readonly)
		[4]: var15_upvw (read and write)
		[5]: var16_upvw (read and write)
		[6]: var17_upvw (read and write)
		[7]: any_IsEnabled_result1_upvr (readonly)
		[8]: UserInputService_upvr (readonly)
		[9]: var9_upvw (read and write)
		[10]: udim2_upvw_2 (read and write)
		[11]: var7_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [43] 37. Error Block 3 start (CF ANALYSIS FAILED)
	UserInputService_upvr.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.None
	do
		return
	end
	-- KONSTANTERROR: [43] 37. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [49] 41. Error Block 4 start (CF ANALYSIS FAILED)
	createFrame_result1_upvr_2:TweenPosition(udim2_upvw_2, Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, 0.3, true, function() -- Line 536, Named "onClosed"
		--[[ Upvalues[8]:
			[1]: createFrame_result1_upvr_2 (copied, readonly)
			[2]: var13_upvw (copied, read and write)
			[3]: GuiService_upvr (copied, readonly)
			[4]: var15_upvw (copied, read and write)
			[5]: var16_upvw (copied, read and write)
			[6]: var17_upvw (copied, read and write)
			[7]: any_IsEnabled_result1_upvr (copied, readonly)
			[8]: UserInputService_upvr (copied, readonly)
		]]
		createFrame_result1_upvr_2.Visible = false
		var13_upvw = false
		GuiService_upvr.CoreGuiNavigationEnabled = var15_upvw
		GuiService_upvr.GuiNavigationEnabled = var16_upvw
		GuiService_upvr.AutoSelectGuiEnabled = var17_upvw
		GuiService_upvr.SelectedCoreObject = nil
		if any_IsEnabled_result1_upvr then
			UserInputService_upvr.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.None
		end
	end)
	-- KONSTANTERROR: [49] 41. Error Block 4 end (CF ANALYSIS FAILED)
end
function DoCreatePrompt(arg1) -- Line 556
	--[[ Upvalues[3]:
		[1]: var19_upvw (read and write)
		[2]: tbl_upvr (readonly)
		[3]: var20_upvw (read and write)
	]]
	var19_upvw = arg1.PromptCompletedCallback
	AddDefaultsToPromptOptions(arg1, tbl_upvr)
	var20_upvw = arg1
	CreatePromptFromOptions(arg1)
	ShowPrompt()
end
function OnPromptEnded(arg1) -- Line 564
	--[[ Upvalues[2]:
		[1]: var19_upvw (read and write)
		[2]: var20_upvw (read and write)
	]]
	if var19_upvw then
		if var20_upvw.CancelActive then
			spawn(function() -- Line 567
				--[[ Upvalues[2]:
					[1]: var19_upvw (copied, read and write)
					[2]: arg1 (readonly)
				]]
				var19_upvw(arg1)
			end)
		else
			spawn(function() -- Line 569
				--[[ Upvalues[1]:
					[1]: var19_upvw (copied, read and write)
				]]
				var19_upvw(true)
			end)
		end
	end
	HidePrompt()
	EnableControllerMovement()
	DisableControllerInput()
end
function NoOpFunc() -- Line 579
end
function EnableControllerMovement() -- Line 581
	--[[ Upvalues[1]:
		[1]: ContextActionService_upvr (readonly)
	]]
	ContextActionService_upvr:UnbindCoreAction("doNothingThumbstick2PromptCreator")
	ContextActionService_upvr:UnbindCoreAction("doNothingAButtonPromptCreator")
end
function DisableControllerMovement() -- Line 586
	--[[ Upvalues[1]:
		[1]: ContextActionService_upvr (readonly)
	]]
	ContextActionService_upvr:BindCoreAction("doNothingThumbstick2PromptCreator", NoOpFunc, false, Enum.KeyCode.Thumbstick2)
	ContextActionService_upvr:BindCoreAction("doNothingAButtonPromptCreator", NoOpFunc, false, Enum.KeyCode.ButtonA)
end
function EnableControllerInput() -- Line 591
	--[[ Upvalues[3]:
		[1]: ContextActionService_upvr (readonly)
		[2]: var20_upvw (read and write)
		[3]: GuiService_upvr (readonly)
	]]
	ContextActionService_upvr:BindCoreAction("CoreScriptPromptCreatorCancel", function(arg1, arg2, arg3) -- Line 595
		--[[ Upvalues[1]:
			[1]: var20_upvw (copied, read and write)
		]]
		if arg2 ~= Enum.UserInputState.Begin then
		elseif var20_upvw.CancelActive then
			OnPromptEnded(false)
		end
	end, false, Enum.KeyCode.ButtonB)
	ContextActionService_upvr:BindCoreAction("CoreScriptPromptCreatorSelect", function(arg1, arg2, arg3) -- Line 608
		--[[ Upvalues[1]:
			[1]: GuiService_upvr (copied, readonly)
		]]
		if arg2 ~= Enum.UserInputState.Begin then
		elseif GuiService_upvr.SelectedCoreObject == nil then
			SetSelectedObject()
		end
	end, false, Enum.KeyCode.ButtonSelect)
end
function DisableControllerInput() -- Line 620
	--[[ Upvalues[1]:
		[1]: ContextActionService_upvr (readonly)
	]]
	ContextActionService_upvr:UnbindCoreAction("CoreScriptPromptCreatorCancel")
	ContextActionService_upvr:UnbindCoreAction("CoreScriptPromptCreatorSelect")
end
function valueInTable(arg1, arg2) -- Line 625
	for _, v_2 in pairs(arg2) do
		if v_2 == arg1 then
			return true
		end
	end
	return false
end
function OnInputChanged(arg1) -- Line 634
	--[[ Upvalues[2]:
		[1]: var9_upvw (read and write)
		[2]: var14_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local UserInputType = Enum.UserInputType
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 5. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 5. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [71] 45. Error Block 11 start (CF ANALYSIS FAILED)
	var14_upvw = true
	do
		return
	end
	-- KONSTANTERROR: [71] 45. Error Block 11 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [74] 48. Error Block 12 start (CF ANALYSIS FAILED)
	var14_upvw = false
	-- KONSTANTERROR: [74] 48. Error Block 12 end (CF ANALYSIS FAILED)
end
UserInputService_upvr.InputChanged:connect(OnInputChanged)
UserInputService_upvr.InputBegan:connect(OnInputChanged)
local module_upvr = require(Modules:WaitForChild("VR"):WaitForChild("Dialog"))
function OnVREnabled(arg1) -- Line 653
	--[[ Upvalues[5]:
		[1]: var7_upvw (read and write)
		[2]: module_upvr (readonly)
		[3]: createFrame_result1_upvr_2 (readonly)
		[4]: var9_upvw (read and write)
		[5]: RobloxGui_upvr (readonly)
	]]
	if arg1 then
		if not var7_upvw then
			var7_upvw = module_upvr.new()
		end
		var7_upvw:SetContent(createFrame_result1_upvr_2)
		var9_upvw = true
	else
		var9_upvw = false
		if var7_upvw then
			var7_upvw:SetContent(nil)
		end
		createFrame_result1_upvr_2.Parent = RobloxGui_upvr
	end
end
spawn(function() -- Line 669
	--[[ Upvalues[1]:
		[1]: UserInputService_upvr (readonly)
	]]
	OnVREnabled(UserInputService_upvr.VREnabled)
end)
UserInputService_upvr.Changed:connect(function(arg1) -- Line 673
	--[[ Upvalues[1]:
		[1]: UserInputService_upvr (readonly)
	]]
	if arg1 == "VREnabled" then
		OnVREnabled(UserInputService_upvr.VREnabled)
	end
end)
GuiService_upvr.Changed:connect(function(arg1) -- Line 679
	--[[ Upvalues[5]:
		[1]: var13_upvw (read and write)
		[2]: GuiService_upvr (readonly)
		[3]: var15_upvw (read and write)
		[4]: var16_upvw (read and write)
		[5]: var17_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 4. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 4. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [20] 15. Error Block 6 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [20] 15. Error Block 6 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [34] 25. Error Block 12 start (CF ANALYSIS FAILED)
	if arg1 == "AutoSelectGuiEnabled" and GuiService_upvr.AutoSelectGuiEnabled ~= false then
		var17_upvw = GuiService_upvr.AutoSelectGuiEnabled
		GuiService_upvr.AutoSelectGuiEnabled = false
	end
	-- KONSTANTERROR: [34] 25. Error Block 12 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [49] 35. Error Block 11 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [49] 35. Error Block 11 end (CF ANALYSIS FAILED)
end)
function SetupGamepadSelection() -- Line 700
	--[[ Upvalues[4]:
		[1]: var15_upvw (read and write)
		[2]: GuiService_upvr (readonly)
		[3]: var16_upvw (read and write)
		[4]: var17_upvw (read and write)
	]]
	var15_upvw = GuiService_upvr.CoreGuiNavigationEnabled
	var16_upvw = GuiService_upvr.GuiNavigationEnabled
	var17_upvw = GuiService_upvr.AutoSelectGuiEnabled
	GuiService_upvr.SelectedCoreObject = nil
	GuiService_upvr.CoreGuiNavigationEnabled = true
	GuiService_upvr.GuiNavigationEnabled = false
	GuiService_upvr.AutoSelectGuiEnabled = false
end
function module.CreatePrompt(arg1, arg2) -- Line 712
	--[[ Upvalues[1]:
		[1]: var13_upvw (read and write)
	]]
	if var13_upvw then
		return false
	end
	var13_upvw = true
	SetupGamepadSelection()
	DoCreatePrompt(arg2)
	return true
end
function module.IsCurrentlyPrompting(arg1) -- Line 722
	--[[ Upvalues[1]:
		[1]: var13_upvw (read and write)
	]]
	return var13_upvw
end
return module