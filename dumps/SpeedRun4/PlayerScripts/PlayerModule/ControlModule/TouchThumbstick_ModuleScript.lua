-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:39:19
-- Luau version 6, Types version 3
-- Time taken: 0.009453 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_upvr = require(script.Parent:WaitForChild("BaseCharacterController"))
local setmetatable_result1_upvr = setmetatable({}, module_upvr)
setmetatable_result1_upvr.__index = setmetatable_result1_upvr
function setmetatable_result1_upvr.new() -- Line 29
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: setmetatable_result1_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable(module_upvr.new(), setmetatable_result1_upvr)
	setmetatable_result1.isFollowStick = false
	setmetatable_result1.thumbstickFrame = nil
	setmetatable_result1.moveTouchObject = nil
	setmetatable_result1.onTouchMovedConn = nil
	setmetatable_result1.onTouchEndedConn = nil
	setmetatable_result1.screenPos = nil
	setmetatable_result1.stickImage = nil
	setmetatable_result1.thumbstickSize = nil
	return setmetatable_result1
end
function setmetatable_result1_upvr.Enable(arg1, arg2, arg3) -- Line 44
	if arg2 == nil then
		return false
	end
	if arg2 then
	else
	end
	local var6 = false
	if arg1.enabled == var6 then
		return true
	end
	arg1.moveVector = Vector3.new(0, 0, 0)
	arg1.isJumping = false
	if var6 then
		if not arg1.thumbstickFrame then
			arg1:Create(arg3)
		end
		arg1.thumbstickFrame.Visible = true
	else
		arg1.thumbstickFrame.Visible = false
		arg1:OnInputEnded()
	end
	arg1.enabled = var6
end
function setmetatable_result1_upvr.OnInputEnded(arg1) -- Line 65
	arg1.thumbstickFrame.Position = arg1.screenPos
	arg1.stickImage.Position = UDim2.new(0, arg1.thumbstickFrame.Size.X.Offset / 2 - arg1.thumbstickSize / 4, 0, arg1.thumbstickFrame.Size.Y.Offset / 2 - arg1.thumbstickSize / 4)
	arg1.moveVector = Vector3.new(0, 0, 0)
	arg1.isJumping = false
	arg1.thumbstickFrame.Position = arg1.screenPos
	arg1.moveTouchObject = nil
end
local UserResizeAwareTouchControls_upvr = require(ReplicatedStorage:WaitForChild("FeatureFlags")).UserResizeAwareTouchControls
local module_upvr_2 = require(ReplicatedStorage:WaitForChild("Settings"))
local UserInputService_upvr = game:GetService("UserInputService")
local GuiService_upvr = game:GetService("GuiService")
function setmetatable_result1_upvr.Create(arg1, arg2) -- Line 74
	--[[ Upvalues[4]:
		[1]: UserResizeAwareTouchControls_upvr (readonly)
		[2]: module_upvr_2 (readonly)
		[3]: UserInputService_upvr (readonly)
		[4]: GuiService_upvr (readonly)
	]]
	local var11
	if UserResizeAwareTouchControls_upvr then
		if arg1.thumbstickFrame then
			arg1.thumbstickFrame:Destroy()
			arg1.thumbstickFrame = nil
			if arg1.onTouchMovedConn then
				arg1.onTouchMovedConn:Disconnect()
				arg1.onTouchMovedConn = nil
			end
			if arg1.onTouchEndedConn then
				arg1.onTouchEndedConn:Disconnect()
				arg1.onTouchEndedConn = nil
			end
			if arg1.absoluteSizeChangedConn then
				arg1.absoluteSizeChangedConn:Disconnect()
				arg1.absoluteSizeChangedConn = nil
			end
		end
		arg1.thumbstickFrame = Instance.new("Frame")
		arg1.thumbstickFrame.Name = "ThumbstickFrame"
		arg1.thumbstickFrame.Active = true
		arg1.thumbstickFrame.Visible = false
		arg1.thumbstickFrame.BackgroundTransparency = 1
		local ImageLabel_upvr = Instance.new("ImageLabel")
		ImageLabel_upvr.Name = "OuterImage"
		ImageLabel_upvr.Image = "rbxasset://textures/ui/TouchControlsSheet.png"
		ImageLabel_upvr.ImageRectOffset = Vector2.new()
		var11 = 220
		ImageLabel_upvr.ImageRectSize = Vector2.new(var11, 220)
		ImageLabel_upvr.BackgroundTransparency = 1
		var11 = 0
		ImageLabel_upvr.Position = UDim2.new(var11, 0, 0, 0)
		var11 = "ImageLabel"
		arg1.stickImage = Instance.new(var11)
		var11 = "StickImage"
		arg1.stickImage.Name = var11
		var11 = "rbxasset://textures/ui/TouchControlsSheet.png"
		arg1.stickImage.Image = var11
		var11 = Vector2.new(220, 0)
		arg1.stickImage.ImageRectOffset = var11
		var11 = Vector2.new(111, 111)
		arg1.stickImage.ImageRectSize = var11
		var11 = 1
		arg1.stickImage.BackgroundTransparency = var11
		var11 = 2
		arg1.stickImage.ZIndex = var11
		local function ResizeThumbstick() -- Line 115
			--[[ Upvalues[4]:
				[1]: arg2 (readonly)
				[2]: arg1 (readonly)
				[3]: module_upvr_2 (copied, readonly)
				[4]: ImageLabel_upvr (readonly)
			]]
			local X = arg2.AbsoluteSize.X
			local var14
			if math.min(X, arg2.AbsoluteSize.Y) > 500 then
				X = false
			else
				X = true
			end
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var14 = module_upvr_2.InputMobileThumbstickSizeSmall
				return var14
			end
			if not X or not INLINED() then
				var14 = module_upvr_2.InputMobileThumbstickSizeLarge
			end
			arg1.thumbstickSize = var14
			local function INLINED_2() -- Internal function, doesn't exist in bytecode
				var14 = UDim2.new(0, arg1.thumbstickSize / 2 - 10, 1, -arg1.thumbstickSize - 20)
				return var14
			end
			if not X or not INLINED_2() then
				var14 = UDim2.new(0, arg1.thumbstickSize / 2, 1, -arg1.thumbstickSize * 1.75)
			end
			arg1.screenPos = var14
			var14 = arg1
			var14 = UDim2.new(0, arg1.thumbstickSize, 0, arg1.thumbstickSize)
			var14.thumbstickFrame.Size = var14
			var14 = arg1
			var14 = arg1.screenPos
			var14.thumbstickFrame.Position = var14
			var14 = UDim2.new(0, arg1.thumbstickSize, 0, arg1.thumbstickSize)
			ImageLabel_upvr.Size = var14
			var14 = arg1
			var14 = UDim2.new(0, arg1.thumbstickSize / 2, 0, arg1.thumbstickSize / 2)
			var14.stickImage.Size = var14
			var14 = arg1
			var14 = UDim2.new(0, arg1.thumbstickSize / 2 - arg1.thumbstickSize / 4, 0, arg1.thumbstickSize / 2 - arg1.thumbstickSize / 4)
			var14.stickImage.Position = var14
		end
		var11 = ResizeThumbstick
		var11()
		var11 = arg2:GetPropertyChangedSignal("AbsoluteSize"):Connect(ResizeThumbstick)
		arg1.absoluteSizeChangedConn = var11
		var11 = arg1.thumbstickFrame
		ImageLabel_upvr.Parent = var11
		var11 = arg1.stickImage
		var11.Parent = arg1.thumbstickFrame
	else
		ImageLabel_upvr = arg1.thumbstickFrame
		if ImageLabel_upvr then
			ImageLabel_upvr = arg1.thumbstickFrame:Destroy
			ImageLabel_upvr()
			ImageLabel_upvr = nil
			arg1.thumbstickFrame = ImageLabel_upvr
			ImageLabel_upvr = arg1.onTouchMovedConn
			if ImageLabel_upvr then
				ImageLabel_upvr = arg1.onTouchMovedConn:Disconnect
				ImageLabel_upvr()
				ImageLabel_upvr = nil
				arg1.onTouchMovedConn = ImageLabel_upvr
			end
			ImageLabel_upvr = arg1.onTouchEndedConn
			if ImageLabel_upvr then
				ImageLabel_upvr = arg1.onTouchEndedConn:Disconnect
				ImageLabel_upvr()
				ImageLabel_upvr = nil
				arg1.onTouchEndedConn = ImageLabel_upvr
			end
		end
		var11 = arg2.AbsoluteSize
		ResizeThumbstick = var11.X
		local var15 = ResizeThumbstick
		var11 = arg2.AbsoluteSize.Y
		ImageLabel_upvr = math.min(var15, var11)
		var11 = 500
		if ImageLabel_upvr > var11 then
			var15 = false
		else
			var15 = true
		end
		local function INLINED_3() -- Internal function, doesn't exist in bytecode
			var11 = module_upvr_2.InputMobileThumbstickSizeSmall
			return var11
		end
		if not var15 or not INLINED_3() then
			var11 = module_upvr_2.InputMobileThumbstickSizeLarge
		end
		arg1.thumbstickSize = var11
		local function INLINED_4() -- Internal function, doesn't exist in bytecode
			var11 = UDim2.new(0, arg1.thumbstickSize / 2 - 10, 1, -arg1.thumbstickSize - 20)
			return var11
		end
		if not var15 or not INLINED_4() then
			var11 = UDim2.new(0, arg1.thumbstickSize / 2, 1, -arg1.thumbstickSize * 1.75)
		end
		arg1.screenPos = var11
		var11 = Instance.new("Frame")
		arg1.thumbstickFrame = var11
		var11 = arg1.thumbstickFrame
		var11.Name = "ThumbstickFrame"
		var11 = arg1.thumbstickFrame
		var11.Active = true
		var11 = arg1.thumbstickFrame
		var11.Visible = false
		var11 = arg1.thumbstickFrame
		var11.Size = UDim2.new(0, arg1.thumbstickSize, 0, arg1.thumbstickSize)
		var11 = arg1.thumbstickFrame
		var11.Position = arg1.screenPos
		var11 = arg1.thumbstickFrame
		var11.BackgroundTransparency = 1
		var11 = Instance.new("ImageLabel")
		var11.Name = "OuterImage"
		var11.Image = "rbxasset://textures/ui/TouchControlsSheet.png"
		var11.ImageRectOffset = Vector2.new()
		var11.ImageRectSize = Vector2.new(220, 220)
		var11.BackgroundTransparency = 1
		var11.Size = UDim2.new(0, arg1.thumbstickSize, 0, arg1.thumbstickSize)
		var11.Position = UDim2.new(0, 0, 0, 0)
		var11.Parent = arg1.thumbstickFrame
		arg1.stickImage = Instance.new("ImageLabel")
		arg1.stickImage.Name = "StickImage"
		arg1.stickImage.Image = "rbxasset://textures/ui/TouchControlsSheet.png"
		arg1.stickImage.ImageRectOffset = Vector2.new(220, 0)
		arg1.stickImage.ImageRectSize = Vector2.new(111, 111)
		arg1.stickImage.BackgroundTransparency = 1
		arg1.stickImage.Size = UDim2.new(0, arg1.thumbstickSize / 2, 0, arg1.thumbstickSize / 2)
		arg1.stickImage.Position = UDim2.new(0, arg1.thumbstickSize / 2 - arg1.thumbstickSize / 4, 0, arg1.thumbstickSize / 2 - arg1.thumbstickSize / 4)
		arg1.stickImage.ZIndex = 2
		arg1.stickImage.Parent = arg1.thumbstickFrame
	end
	ImageLabel_upvr = nil
	local var16_upvw = ImageLabel_upvr
	local function _(arg1_2) -- Line 190, Named "DoMove"
		--[[ Upvalues[2]:
			[1]: module_upvr_2 (copied, readonly)
			[2]: arg1 (readonly)
		]]
		local var17
		local var18 = arg1_2.Magnitude - module_upvr_2.InputMobileThumbstickDeadzoneMinimum
		if var18 <= 0 then
			var17 = Vector3.new(0, 0, 0)
		else
			local var19 = arg1_2.Unit * math.min(var18 / (module_upvr_2.InputMobileThumbstickDeadzoneMaximum - module_upvr_2.InputMobileThumbstickDeadzoneMinimum), 1)
			var17 = Vector3.new(var19.X, 0, var19.Y)
		end
		arg1.moveVector = var17
	end
	local function MoveStick_upvr(arg1_3) -- Line 236, Named "MoveStick"
		--[[ Upvalues[2]:
			[1]: var16_upvw (read and write)
			[2]: arg1 (readonly)
		]]
		local magnitude = Vector2.new(arg1_3.X - var16_upvw.X, arg1_3.Y - var16_upvw.Y).magnitude
		local var21 = arg1.thumbstickFrame.AbsoluteSize.X / 2
		local var22
		if arg1.isFollowStick and var21 < magnitude then
			local var23 = var22.unit * var21
			arg1.thumbstickFrame.Position = UDim2.new(0, arg1_3.X - arg1.thumbstickFrame.AbsoluteSize.X / 2 - var23.X, 0, arg1_3.Y - arg1.thumbstickFrame.AbsoluteSize.Y / 2 - var23.Y)
		else
			var22 = var22.unit * math.min(magnitude, var21)
		end
		arg1.stickImage.Position = UDim2.new(0, var22.X + arg1.stickImage.AbsoluteSize.X / 2, 0, var22.Y + arg1.stickImage.AbsoluteSize.Y / 2)
	end
	arg1.thumbstickFrame.InputBegan:Connect(function(arg1_4) -- Line 253
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: var16_upvw (read and write)
		]]
		if arg1.moveTouchObject or arg1_4.UserInputType ~= Enum.UserInputType.Touch or arg1_4.UserInputState ~= Enum.UserInputState.Begin then
		else
			arg1.moveTouchObject = arg1_4
			arg1.thumbstickFrame.Position = UDim2.new(0, arg1_4.Position.X - arg1.thumbstickFrame.Size.X.Offset / 2, 0, arg1_4.Position.Y - arg1.thumbstickFrame.Size.Y.Offset / 2)
			var16_upvw = Vector2.new(arg1.thumbstickFrame.AbsolutePosition.X + arg1.thumbstickFrame.AbsoluteSize.X / 2, arg1.thumbstickFrame.AbsolutePosition.Y + arg1.thumbstickFrame.AbsoluteSize.Y / 2)
		end
	end)
	arg1.onTouchMovedConn = UserInputService_upvr.TouchMoved:Connect(function(arg1_5, arg2_2) -- Line 268
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: var16_upvw (read and write)
			[3]: module_upvr_2 (copied, readonly)
			[4]: MoveStick_upvr (readonly)
		]]
		if arg1_5 == arg1.moveTouchObject then
			var16_upvw = Vector2.new(arg1.thumbstickFrame.AbsolutePosition.X + arg1.thumbstickFrame.AbsoluteSize.X / 2, arg1.thumbstickFrame.AbsolutePosition.Y + arg1.thumbstickFrame.AbsoluteSize.Y / 2)
			local vector2 = Vector2.new(arg1_5.Position.X - var16_upvw.X, arg1_5.Position.Y - var16_upvw.Y)
			local var27
			local var28 = vector2.Magnitude - module_upvr_2.InputMobileThumbstickDeadzoneMinimum
			if var28 <= 0 then
				var27 = Vector3.new(0, 0, 0)
			else
				local var29 = vector2.Unit * math.min(var28 / (module_upvr_2.InputMobileThumbstickDeadzoneMaximum - module_upvr_2.InputMobileThumbstickDeadzoneMinimum), 1)
				var27 = Vector3.new(var29.X, 0, var29.Y)
			end
			arg1.moveVector = var27
			MoveStick_upvr(arg1_5.Position)
		end
	end)
	arg1.onTouchEndedConn = UserInputService_upvr.TouchEnded:Connect(function(arg1_6, arg2_3) -- Line 278
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1_6 == arg1.moveTouchObject then
			arg1:OnInputEnded()
		end
	end)
	GuiService_upvr.MenuOpened:Connect(function() -- Line 284
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.moveTouchObject then
			arg1:OnInputEnded()
		end
	end)
	arg1.thumbstickFrame.Parent = arg2
end
return setmetatable_result1_upvr