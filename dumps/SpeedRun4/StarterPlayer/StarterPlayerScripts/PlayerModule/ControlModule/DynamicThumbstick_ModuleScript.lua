-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:39:02
-- Luau version 6, Types version 3
-- Time taken: 0.032651 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module = require(ReplicatedStorage:WaitForChild("FeatureFlags"))
local module_2_upvr = require(ReplicatedStorage:WaitForChild("Settings"))
local tbl_upvr = {0.10999999999999999, 0.30000000000000004, 0.4, 0.5, 0.6, 0.7, 0.75}
local len_upvr = #tbl_upvr
local Players = game:GetService("Players")
local UserInputService_upvr = game:GetService("UserInputService")
local ContextActionService_upvr = game:GetService("ContextActionService")
local TweenService_upvr = game:GetService("TweenService")
local UserDynamicThumbstickMoveOverButtons2_upvr = module.UserDynamicThumbstickMoveOverButtons2
local LocalPlayer_upvw = Players.LocalPlayer
if not LocalPlayer_upvw then
	Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
	LocalPlayer_upvw = Players.LocalPlayer
end
local module_3_upvr = require(script.Parent:WaitForChild("BaseCharacterController"))
local setmetatable_result1_upvr = setmetatable({}, module_3_upvr)
setmetatable_result1_upvr.__index = setmetatable_result1_upvr
function setmetatable_result1_upvr.new() -- Line 57
	--[[ Upvalues[2]:
		[1]: module_3_upvr (readonly)
		[2]: setmetatable_result1_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable(module_3_upvr.new(), setmetatable_result1_upvr)
	setmetatable_result1.moveTouchObject = nil
	setmetatable_result1.moveTouchLockedIn = false
	setmetatable_result1.moveTouchFirstChanged = false
	setmetatable_result1.moveTouchStartPosition = nil
	setmetatable_result1.startImage = nil
	setmetatable_result1.endImage = nil
	setmetatable_result1.middleImages = {}
	setmetatable_result1.startImageFadeTween = nil
	setmetatable_result1.endImageFadeTween = nil
	setmetatable_result1.middleImageFadeTweens = {}
	setmetatable_result1.isFirstTouch = true
	setmetatable_result1.thumbstickFrame = nil
	setmetatable_result1.onRenderSteppedConn = nil
	setmetatable_result1.fadeInAndOutBalance = 0.5
	setmetatable_result1.fadeInAndOutHalfDuration = 0.3
	setmetatable_result1.hasFadedBackgroundInPortrait = false
	setmetatable_result1.hasFadedBackgroundInLandscape = false
	setmetatable_result1.tweenInAlphaStart = nil
	setmetatable_result1.tweenOutAlphaStart = nil
	return setmetatable_result1
end
function setmetatable_result1_upvr.GetIsJumping(arg1) -- Line 92
	arg1.isJumping = false
	return arg1.isJumping
end
function setmetatable_result1_upvr.Enable(arg1, arg2, arg3) -- Line 98
	--[[ Upvalues[2]:
		[1]: UserDynamicThumbstickMoveOverButtons2_upvr (readonly)
		[2]: ContextActionService_upvr (readonly)
	]]
	if arg2 == nil then
		return false
	end
	if arg2 then
	else
	end
	local var15 = false
	if arg1.enabled == var15 then
		return true
	end
	if var15 then
		if not arg1.thumbstickFrame then
			arg1:Create(arg3)
		end
		arg1:BindContextActions()
	else
		if UserDynamicThumbstickMoveOverButtons2_upvr then
			arg1:UnbindContextActions()
		else
			ContextActionService_upvr:UnbindAction("DynamicThumbstickAction")
		end
		arg1:OnInputEnded()
	end
	arg1.enabled = var15
	arg1.thumbstickFrame.Visible = var15
	return nil
end
function setmetatable_result1_upvr.OnInputEnded(arg1) -- Line 127
	arg1.moveTouchObject = nil
	arg1.moveVector = Vector3.new(0, 0, 0)
	arg1:FadeThumbstick(false)
end
local TweenInfo_new_result1_2_upvr = TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
function setmetatable_result1_upvr.FadeThumbstick(arg1, arg2) -- Line 133
	--[[ Upvalues[3]:
		[1]: TweenService_upvr (readonly)
		[2]: TweenInfo_new_result1_2_upvr (readonly)
		[3]: tbl_upvr (readonly)
	]]
	if not arg2 and arg1.moveTouchObject then
	else
		if arg1.isFirstTouch then return end
		if arg1.startImageFadeTween then
			arg1.startImageFadeTween:Cancel()
		end
		if arg1.endImageFadeTween then
			arg1.endImageFadeTween:Cancel()
		end
		for i_4 = 1, #arg1.middleImages do
			if arg1.middleImageFadeTweens[i_4] then
				arg1.middleImageFadeTweens[i_4]:Cancel()
			end
		end
		if arg2 then
			i_4 = arg1.startImage
			arg1.startImageFadeTween = TweenService_upvr:Create(i_4, TweenInfo_new_result1_2_upvr, {
				ImageTransparency = 0;
			})
			arg1.startImageFadeTween:Play()
			i_4 = arg1.endImage
			arg1.endImageFadeTween = TweenService_upvr:Create(i_4, TweenInfo_new_result1_2_upvr, {
				ImageTransparency = 0.2;
			})
			arg1.endImageFadeTween:Play()
			i_4 = 1
			for i_5 = i_4, #arg1.middleImages do
				arg1.middleImageFadeTweens[i_5] = TweenService_upvr:Create(arg1.middleImages[i_5], TweenInfo_new_result1_2_upvr, {
					ImageTransparency = tbl_upvr[i_5];
				})
				arg1.middleImageFadeTweens[i_5]:Play()
			end
			return
		end
		arg1.startImageFadeTween = TweenService_upvr:Create(arg1.startImage, TweenInfo_new_result1_2_upvr, {
			ImageTransparency = 1;
		})
		arg1.startImageFadeTween:Play()
		arg1.endImageFadeTween = TweenService_upvr:Create(arg1.endImage, TweenInfo_new_result1_2_upvr, {
			ImageTransparency = 1;
		})
		arg1.endImageFadeTween:Play()
		for i_6 = 1, #arg1.middleImages do
			arg1.middleImageFadeTweens[i_6] = TweenService_upvr:Create(arg1.middleImages[i_6], TweenInfo_new_result1_2_upvr, {
				ImageTransparency = 1;
			})
			arg1.middleImageFadeTweens[i_6]:Play()
		end
	end
end
function setmetatable_result1_upvr.FadeThumbstickFrame(arg1, arg2, arg3) -- Line 176
	arg1.fadeInAndOutHalfDuration = arg2 * 0.5
	arg1.fadeInAndOutBalance = arg3
	arg1.tweenInAlphaStart = tick()
end
function setmetatable_result1_upvr.InputInFrame(arg1, arg2) -- Line 182
	local AbsolutePosition = arg1.thumbstickFrame.AbsolutePosition
	local var27 = AbsolutePosition + arg1.thumbstickFrame.AbsoluteSize
	local Position = arg2.Position
	if AbsolutePosition.X <= Position.X and AbsolutePosition.Y <= Position.Y and Position.X <= var27.X and Position.Y <= var27.Y then
		return true
	end
	return false
end
function setmetatable_result1_upvr.DoFadeInBackground(arg1) -- Line 194
	--[[ Upvalues[1]:
		[1]: LocalPlayer_upvw (read and write)
	]]
	local class_PlayerGui = LocalPlayer_upvw:FindFirstChildOfClass("PlayerGui")
	local var30 = false
	if class_PlayerGui then
		if class_PlayerGui.CurrentScreenOrientation == Enum.ScreenOrientation.LandscapeLeft or class_PlayerGui.CurrentScreenOrientation == Enum.ScreenOrientation.LandscapeRight then
			var30 = arg1.hasFadedBackgroundInLandscape
			arg1.hasFadedBackgroundInLandscape = true
		elseif class_PlayerGui.CurrentScreenOrientation == Enum.ScreenOrientation.Portrait then
			var30 = arg1.hasFadedBackgroundInPortrait
			arg1.hasFadedBackgroundInPortrait = true
		end
	end
	if not var30 then
		arg1.fadeInAndOutHalfDuration = 0.3
		arg1.fadeInAndOutBalance = 0.5
		arg1.tweenInAlphaStart = tick()
	end
end
function setmetatable_result1_upvr.DoMove(arg1, arg2) -- Line 217
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local var31
	local var32 = arg2.Magnitude - module_2_upvr.InputMobileThumbstickDeadzoneMinimum
	if var32 <= 0 then
		var31 = Vector3.new(0, 0, 0)
	else
		local var33 = arg2.Unit * math.min(var32 / (module_2_upvr.InputMobileThumbstickDeadzoneMaximum - module_2_upvr.InputMobileThumbstickDeadzoneMinimum), 1)
		var31 = Vector3.new(var33.X, 0, var33.Y)
	end
	arg1.moveVector = var31
end
function setmetatable_result1_upvr.LayoutMiddleImages(arg1, arg2, arg3) -- Line 259
	--[[ Upvalues[1]:
		[1]: len_upvr (readonly)
	]]
	local var36 = arg1.thumbstickSize / 2 + arg1.middleSize
	local var37 = arg3 - arg2
	local var38 = var37.Magnitude - arg1.thumbstickRingSize / 2 - arg1.middleSize
	local var39
	if arg1.middleSpacing * len_upvr < var38 then
		var39 = var38 / len_upvr
	end
	for i = 1, len_upvr do
		local var40 = arg1.middleImages[i]
		local var41 = var36 + var39 * (i - 1)
		if var36 + var39 * (i - 2) < var38 then
			local var42 = arg3 - var37.Unit * var41
			local clamped = math.clamp(1 - (var41 - var38) / var39, 0, 1)
			var40.Visible = true
			var40.Position = UDim2.new(0, var42.X, 0, var42.Y)
			var40.Size = UDim2.new(0, arg1.middleSize * clamped, 0, arg1.middleSize * clamped)
		else
			var40.Visible = false
		end
	end
end
function setmetatable_result1_upvr.MoveStick(arg1, arg2) -- Line 290
	local var44 = Vector2.new(arg2.X, arg2.Y) - arg1.thumbstickFrame.AbsolutePosition
	arg1.endImage.Position = UDim2.new(0, var44.X, 0, var44.Y)
	arg1:LayoutMiddleImages(Vector2.new(arg1.moveTouchStartPosition.X, arg1.moveTouchStartPosition.Y) - arg1.thumbstickFrame.AbsolutePosition, var44)
end
local Value_upvr = Enum.ContextActionPriority.High.Value
function setmetatable_result1_upvr.BindContextActions(arg1) -- Line 298
	--[[ Upvalues[5]:
		[1]: TweenService_upvr (readonly)
		[2]: UserDynamicThumbstickMoveOverButtons2_upvr (readonly)
		[3]: ContextActionService_upvr (readonly)
		[4]: Value_upvr (readonly)
		[5]: UserInputService_upvr (readonly)
	]]
	local function inputBegan_upvr(arg1_2) -- Line 299, Named "inputBegan"
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: TweenService_upvr (copied, readonly)
		]]
		if arg1.moveTouchObject then
			return Enum.ContextActionResult.Pass
		end
		if not arg1:InputInFrame(arg1_2) then
			return Enum.ContextActionResult.Pass
		end
		if arg1.isFirstTouch then
			arg1.isFirstTouch = false
			local TweenInfo_new_result1 = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0)
			TweenService_upvr:Create(arg1.startImage, TweenInfo_new_result1, {
				Size = UDim2.new(0, 0, 0, 0);
			}):Play()
			TweenService_upvr:Create(arg1.endImage, TweenInfo_new_result1, {
				Size = UDim2.new(0, arg1.thumbstickSize, 0, arg1.thumbstickSize);
				ImageColor3 = Color3.new(0, 0, 0);
			}):Play()
		end
		arg1.moveTouchLockedIn = false
		arg1.moveTouchObject = arg1_2
		arg1.moveTouchStartPosition = arg1_2.Position
		arg1.moveTouchFirstChanged = true
		arg1:DoFadeInBackground()
		return Enum.ContextActionResult.Pass
	end
	local function inputChanged_upvr(arg1_3) -- Line 331, Named "inputChanged"
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1_3 == arg1.moveTouchObject then
			if arg1.moveTouchFirstChanged then
				arg1.moveTouchFirstChanged = false
				local vector2 = Vector2.new(arg1_3.Position.X - arg1.thumbstickFrame.AbsolutePosition.X, arg1_3.Position.Y - arg1.thumbstickFrame.AbsolutePosition.Y)
				arg1.startImage.Visible = true
				arg1.startImage.Position = UDim2.new(0, vector2.X, 0, vector2.Y)
				arg1.endImage.Visible = true
				arg1.endImage.Position = arg1.startImage.Position
				arg1:FadeThumbstick(true)
				arg1:MoveStick(arg1_3.Position)
			end
			arg1.moveTouchLockedIn = true
			local vector2_2 = Vector2.new(arg1_3.Position.X - arg1.moveTouchStartPosition.X, arg1_3.Position.Y - arg1.moveTouchStartPosition.Y)
			if 0 < math.abs(vector2_2.X) or 0 < math.abs(vector2_2.Y) then
				arg1:DoMove(vector2_2)
				arg1:MoveStick(arg1_3.Position)
			end
			return Enum.ContextActionResult.Sink
		end
		return Enum.ContextActionResult.Pass
	end
	local function _(arg1_4) -- Line 364, Named "inputEnded"
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1_4 == arg1.moveTouchObject then
			arg1:OnInputEnded()
			if arg1.moveTouchLockedIn then
				return Enum.ContextActionResult.Sink
			end
		end
		return Enum.ContextActionResult.Pass
	end
	ContextActionService_upvr:BindActionAtPriority("DynamicThumbstickAction", function(arg1_5, arg2, arg3) -- Line 374, Named "handleInput"
		--[[ Upvalues[4]:
			[1]: inputBegan_upvr (readonly)
			[2]: UserDynamicThumbstickMoveOverButtons2_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: inputChanged_upvr (readonly)
		]]
		if arg2 == Enum.UserInputState.Begin then
			return inputBegan_upvr(arg3)
		end
		if arg2 == Enum.UserInputState.Change then
			if UserDynamicThumbstickMoveOverButtons2_upvr then
				if arg3 == arg1.moveTouchObject then
					return Enum.ContextActionResult.Sink
				end
				return Enum.ContextActionResult.Pass
			end
			return inputChanged_upvr(arg3)
		end
		if arg2 == Enum.UserInputState.End then
			if arg3 == arg1.moveTouchObject then
				arg1:OnInputEnded()
				if arg1.moveTouchLockedIn then
					return Enum.ContextActionResult.Sink
				end
			end
			return Enum.ContextActionResult.Pass
		end
		if arg2 == Enum.UserInputState.Cancel then
			arg1:OnInputEnded()
		end
	end, false, Value_upvr, Enum.UserInputType.Touch)
	if UserDynamicThumbstickMoveOverButtons2_upvr then
		arg1.TouchMovedCon = UserInputService_upvr.TouchMoved:Connect(function(arg1_6, arg2) -- Line 402
			--[[ Upvalues[1]:
				[1]: inputChanged_upvr (readonly)
			]]
			inputChanged_upvr(arg1_6)
		end)
	end
end
function setmetatable_result1_upvr.UnbindContextActions(arg1) -- Line 408
	--[[ Upvalues[1]:
		[1]: ContextActionService_upvr (readonly)
	]]
	ContextActionService_upvr:UnbindAction("DynamicThumbstickAction")
	if arg1.TouchMovedCon then
		arg1.TouchMovedCon:Disconnect()
	end
end
local UserResizeAwareTouchControls_upvr = module.UserResizeAwareTouchControls
local UserDynamicThumbstickSafeAreaUpdate_upvr = module.UserDynamicThumbstickSafeAreaUpdate
local RunService_upvr = game:GetService("RunService")
local GuiService_upvr = game:GetService("GuiService")
function setmetatable_result1_upvr.Create(arg1, arg2) -- Line 416
	--[[ Upvalues[9]:
		[1]: UserResizeAwareTouchControls_upvr (readonly)
		[2]: UserDynamicThumbstickSafeAreaUpdate_upvr (readonly)
		[3]: len_upvr (readonly)
		[4]: tbl_upvr (readonly)
		[5]: module_2_upvr (readonly)
		[6]: RunService_upvr (readonly)
		[7]: UserInputService_upvr (readonly)
		[8]: GuiService_upvr (readonly)
		[9]: LocalPlayer_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local ResizeThumbstick_upvr
	if UserResizeAwareTouchControls_upvr then
		if arg1.thumbstickFrame then
			arg1.thumbstickFrame:Destroy()
			arg1.thumbstickFrame = nil
			if arg1.onRenderSteppedConn then
				arg1.onRenderSteppedConn:Disconnect()
				arg1.onRenderSteppedConn = nil
			end
			if arg1.absoluteSizeChangedConn then
				arg1.absoluteSizeChangedConn:Disconnect()
				arg1.absoluteSizeChangedConn = nil
			end
		end
		if UserDynamicThumbstickSafeAreaUpdate_upvr then
			local _ = 100
		else
		end
		local var105_upvr = 0
		local function layoutThumbstickFrame(arg1_10) -- Line 432
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: var105_upvr (readonly)
			]]
			if arg1_10 then
				arg1.thumbstickFrame.Size = UDim2.new(1, var105_upvr, 0.4, var105_upvr)
				arg1.thumbstickFrame.Position = UDim2.new(0, -var105_upvr, 0.6, 0)
			else
				arg1.thumbstickFrame.Size = UDim2.new(0.4, var105_upvr, 0.6666666666666666, var105_upvr)
				arg1.thumbstickFrame.Position = UDim2.new(0, -var105_upvr, 0.3333333333333333, 0)
			end
		end
		ResizeThumbstick_upvr = Instance.new("Frame")
		arg1.thumbstickFrame = ResizeThumbstick_upvr
		ResizeThumbstick_upvr = arg1.thumbstickFrame
		ResizeThumbstick_upvr.BorderSizePixel = 0
		ResizeThumbstick_upvr = arg1.thumbstickFrame
		ResizeThumbstick_upvr.Name = "DynamicThumbstickFrame"
		ResizeThumbstick_upvr = arg1.thumbstickFrame
		ResizeThumbstick_upvr.Visible = false
		ResizeThumbstick_upvr = arg1.thumbstickFrame
		ResizeThumbstick_upvr.BackgroundTransparency = 1
		ResizeThumbstick_upvr = arg1.thumbstickFrame
		ResizeThumbstick_upvr.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		ResizeThumbstick_upvr = arg1.thumbstickFrame
		ResizeThumbstick_upvr.Active = false
		ResizeThumbstick_upvr = layoutThumbstickFrame
		ResizeThumbstick_upvr(false)
		ResizeThumbstick_upvr = Instance.new("ImageLabel")
		arg1.startImage = ResizeThumbstick_upvr
		ResizeThumbstick_upvr = arg1.startImage
		ResizeThumbstick_upvr.Name = "ThumbstickStart"
		ResizeThumbstick_upvr = arg1.startImage
		ResizeThumbstick_upvr.Visible = true
		ResizeThumbstick_upvr = arg1.startImage
		ResizeThumbstick_upvr.BackgroundTransparency = 1
		ResizeThumbstick_upvr = arg1.startImage
		ResizeThumbstick_upvr.Image = "rbxasset://textures/ui/Input/TouchControlsSheetV2.png"
		ResizeThumbstick_upvr = arg1.startImage
		ResizeThumbstick_upvr.ImageRectOffset = Vector2.new(1, 1)
		ResizeThumbstick_upvr = arg1.startImage
		ResizeThumbstick_upvr.ImageRectSize = Vector2.new(144, 144)
		ResizeThumbstick_upvr = arg1.startImage
		ResizeThumbstick_upvr.ImageColor3 = Color3.new(0, 0, 0)
		ResizeThumbstick_upvr = arg1.startImage
		ResizeThumbstick_upvr.AnchorPoint = Vector2.new(0.5, 0.5)
		ResizeThumbstick_upvr = arg1.startImage
		ResizeThumbstick_upvr.ZIndex = 10
		ResizeThumbstick_upvr = arg1.startImage
		ResizeThumbstick_upvr.Parent = arg1.thumbstickFrame
		ResizeThumbstick_upvr = Instance.new("ImageLabel")
		arg1.endImage = ResizeThumbstick_upvr
		ResizeThumbstick_upvr = arg1.endImage
		ResizeThumbstick_upvr.Name = "ThumbstickEnd"
		ResizeThumbstick_upvr = arg1.endImage
		ResizeThumbstick_upvr.Visible = true
		ResizeThumbstick_upvr = arg1.endImage
		ResizeThumbstick_upvr.BackgroundTransparency = 1
		ResizeThumbstick_upvr = arg1.endImage
		ResizeThumbstick_upvr.Image = "rbxasset://textures/ui/Input/TouchControlsSheetV2.png"
		ResizeThumbstick_upvr = arg1.endImage
		ResizeThumbstick_upvr.ImageRectOffset = Vector2.new(1, 1)
		ResizeThumbstick_upvr = arg1.endImage
		ResizeThumbstick_upvr.ImageRectSize = Vector2.new(144, 144)
		ResizeThumbstick_upvr = arg1.endImage
		ResizeThumbstick_upvr.AnchorPoint = Vector2.new(0.5, 0.5)
		ResizeThumbstick_upvr = arg1.endImage
		ResizeThumbstick_upvr.ZIndex = 10
		ResizeThumbstick_upvr = arg1.endImage
		ResizeThumbstick_upvr.Parent = arg1.thumbstickFrame
		ResizeThumbstick_upvr = len_upvr
		for i_2 = 1, ResizeThumbstick_upvr do
			arg1.middleImages[i_2] = Instance.new("ImageLabel")
			arg1.middleImages[i_2].Name = "ThumbstickMiddle"
			arg1.middleImages[i_2].Visible = false
			arg1.middleImages[i_2].BackgroundTransparency = 1
			arg1.middleImages[i_2].Image = "rbxasset://textures/ui/Input/TouchControlsSheetV2.png"
			arg1.middleImages[i_2].ImageRectOffset = Vector2.new(1, 1)
			arg1.middleImages[i_2].ImageRectSize = Vector2.new(144, 144)
			arg1.middleImages[i_2].ImageTransparency = tbl_upvr[i_2]
			arg1.middleImages[i_2].AnchorPoint = Vector2.new(0.5, 0.5)
			arg1.middleImages[i_2].ZIndex = 9
			arg1.middleImages[i_2].Parent = arg1.thumbstickFrame
		end
		function ResizeThumbstick_upvr() -- Line 488, Named "ResizeThumbstick"
			--[[ Upvalues[4]:
				[1]: arg2 (readonly)
				[2]: module_2_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: var105_upvr (readonly)
			]]
			local var106 = arg2
			local AbsoluteSize = var106.AbsoluteSize
			if 500 >= math.min(AbsoluteSize.X, AbsoluteSize.Y) then
				var106 = false
			else
				var106 = true
			end
			if var106 then
				arg1.thumbstickSize = 90
				arg1.thumbstickRingSize = 40
				arg1.middleSize = 20
				arg1.middleSpacing = 28
				arg1.radiusOfDeadZone = module_2_upvr.InputMobileThumbstickDeadzoneMinimum * 2
				arg1.radiusOfMaxSpeed = module_2_upvr.InputMobileThumbstickDeadzoneMaximum * 2
			else
				arg1.thumbstickSize = 45
				arg1.thumbstickRingSize = 20
				arg1.middleSize = 10
				arg1.middleSpacing = 14
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				arg1.radiusOfDeadZone = module_2_upvr.InputMobileThumbstickDeadzoneMinimum
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				arg1.radiusOfMaxSpeed = module_2_upvr.InputMobileThumbstickDeadzoneMaximum
			end
			arg1.startImage.Position = UDim2.new(0, arg1.thumbstickRingSize * 3.3 + var105_upvr, 1, -arg1.thumbstickRingSize * 2.8 - var105_upvr)
			arg1.startImage.Size = UDim2.new(0, arg1.thumbstickRingSize * 3.7, 0, arg1.thumbstickRingSize * 3.7)
			arg1.endImage.Position = arg1.startImage.Position
			arg1.endImage.Size = UDim2.new(0, arg1.thumbstickSize * 0.8, 0, arg1.thumbstickSize * 0.8)
		end
		ResizeThumbstick_upvr()
		arg1.absoluteSizeChangedConn = arg2:GetPropertyChangedSignal("AbsoluteSize"):Connect(ResizeThumbstick_upvr)
		local var108_upvw
		local function onCurrentCameraChanged() -- Line 532
			--[[ Upvalues[2]:
				[1]: var108_upvw (read and write)
				[2]: layoutThumbstickFrame (readonly)
			]]
			if var108_upvw then
				var108_upvw:Disconnect()
				var108_upvw = nil
			end
			local CurrentCamera_upvr_3 = workspace.CurrentCamera
			local var110
			if CurrentCamera_upvr_3 then
				local function onViewportSizeChanged() -- Line 539
					--[[ Upvalues[2]:
						[1]: CurrentCamera_upvr_3 (readonly)
						[2]: layoutThumbstickFrame (copied, readonly)
					]]
					local var111 = CurrentCamera_upvr_3
					local ViewportSize_5 = var111.ViewportSize
					if ViewportSize_5.X >= ViewportSize_5.Y then
						var111 = false
					else
						var111 = true
					end
					layoutThumbstickFrame(var111)
				end
				var108_upvw = CurrentCamera_upvr_3:GetPropertyChangedSignal("ViewportSize"):Connect(onViewportSizeChanged)
				local ViewportSize_4 = CurrentCamera_upvr_3.ViewportSize
				if ViewportSize_4.X >= ViewportSize_4.Y then
					var110 = false
				else
					var110 = true
				end
				layoutThumbstickFrame(var110)
			end
		end
		workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(onCurrentCameraChanged)
		if workspace.CurrentCamera then
			onCurrentCameraChanged()
		end
	else
		var105_upvr = arg1.thumbstickFrame
		if var105_upvr then
			var105_upvr = arg1.thumbstickFrame:Destroy
			var105_upvr()
			var105_upvr = nil
			arg1.thumbstickFrame = var105_upvr
			var105_upvr = arg1.onRenderSteppedConn
			if var105_upvr then
				var105_upvr = arg1.onRenderSteppedConn:Disconnect
				var105_upvr()
				var105_upvr = nil
				arg1.onRenderSteppedConn = var105_upvr
			end
		end
		var105_upvr = 45
		arg1.thumbstickSize = var105_upvr
		var105_upvr = 20
		arg1.thumbstickRingSize = var105_upvr
		var105_upvr = 10
		arg1.middleSize = var105_upvr
		layoutThumbstickFrame = arg1.middleSize
		local var114 = layoutThumbstickFrame
		var105_upvr = var114 + 4
		arg1.middleSpacing = var105_upvr
		var105_upvr = 2
		arg1.radiusOfDeadZone = var105_upvr
		var105_upvr = 20
		arg1.radiusOfMaxSpeed = var105_upvr
		var105_upvr = arg2.AbsoluteSize
		local var115 = var105_upvr
		ResizeThumbstick_upvr = math.min(var115.X, var115.Y)
		if 500 >= ResizeThumbstick_upvr then
			var114 = false
		else
			var114 = true
		end
		if var114 then
			ResizeThumbstick_upvr = arg1.thumbstickSize * 2
			arg1.thumbstickSize = ResizeThumbstick_upvr
			ResizeThumbstick_upvr = arg1.thumbstickRingSize * 2
			arg1.thumbstickRingSize = ResizeThumbstick_upvr
			ResizeThumbstick_upvr = arg1.middleSize * 2
			arg1.middleSize = ResizeThumbstick_upvr
			ResizeThumbstick_upvr = arg1.middleSpacing * 2
			arg1.middleSpacing = ResizeThumbstick_upvr
			ResizeThumbstick_upvr = arg1.radiusOfDeadZone * 2
			arg1.radiusOfDeadZone = ResizeThumbstick_upvr
			ResizeThumbstick_upvr = arg1.radiusOfMaxSpeed * 2
			arg1.radiusOfMaxSpeed = ResizeThumbstick_upvr
		end
		if UserDynamicThumbstickSafeAreaUpdate_upvr then
			ResizeThumbstick_upvr = 100
		else
			ResizeThumbstick_upvr = 0
		end
		local function longShowBackground_upvr(arg1_11) -- Line 581, Named "layoutThumbstickFrame"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: ResizeThumbstick_upvr (readonly)
			]]
			if arg1_11 then
				arg1.thumbstickFrame.Size = UDim2.new(1, ResizeThumbstick_upvr, 0.4, ResizeThumbstick_upvr)
				arg1.thumbstickFrame.Position = UDim2.new(0, -ResizeThumbstick_upvr, 0.6, 0)
			else
				arg1.thumbstickFrame.Size = UDim2.new(0.4, ResizeThumbstick_upvr, 0.6666666666666666, ResizeThumbstick_upvr)
				arg1.thumbstickFrame.Position = UDim2.new(0, -ResizeThumbstick_upvr, 0.3333333333333333, 0)
			end
		end
		arg1.thumbstickFrame = Instance.new("Frame")
		arg1.thumbstickFrame.BorderSizePixel = 0
		arg1.thumbstickFrame.Name = "DynamicThumbstickFrame"
		arg1.thumbstickFrame.Visible = false
		arg1.thumbstickFrame.BackgroundTransparency = 1
		arg1.thumbstickFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		arg1.thumbstickFrame.Active = false
		longShowBackground_upvr(false)
		arg1.startImage = Instance.new("ImageLabel")
		arg1.startImage.Name = "ThumbstickStart"
		arg1.startImage.Visible = true
		arg1.startImage.BackgroundTransparency = 1
		arg1.startImage.Image = "rbxasset://textures/ui/Input/TouchControlsSheetV2.png"
		arg1.startImage.ImageRectOffset = Vector2.new(1, 1)
		arg1.startImage.ImageRectSize = Vector2.new(144, 144)
		arg1.startImage.ImageColor3 = Color3.new(0, 0, 0)
		arg1.startImage.AnchorPoint = Vector2.new(0.5, 0.5)
		arg1.startImage.Position = UDim2.new(0, arg1.thumbstickRingSize * 3.3 + ResizeThumbstick_upvr, 1, -arg1.thumbstickRingSize * 2.8 - ResizeThumbstick_upvr)
		arg1.startImage.Size = UDim2.new(0, arg1.thumbstickRingSize * 3.7, 0, arg1.thumbstickRingSize * 3.7)
		arg1.startImage.ZIndex = 10
		arg1.startImage.Parent = arg1.thumbstickFrame
		arg1.endImage = Instance.new("ImageLabel")
		arg1.endImage.Name = "ThumbstickEnd"
		arg1.endImage.Visible = true
		arg1.endImage.BackgroundTransparency = 1
		arg1.endImage.Image = "rbxasset://textures/ui/Input/TouchControlsSheetV2.png"
		arg1.endImage.ImageRectOffset = Vector2.new(1, 1)
		arg1.endImage.ImageRectSize = Vector2.new(144, 144)
		arg1.endImage.AnchorPoint = Vector2.new(0.5, 0.5)
		arg1.endImage.Position = arg1.startImage.Position
		arg1.endImage.Size = UDim2.new(0, arg1.thumbstickSize * 0.8, 0, arg1.thumbstickSize * 0.8)
		arg1.endImage.ZIndex = 10
		arg1.endImage.Parent = arg1.thumbstickFrame
		for i_3 = 1, len_upvr do
			arg1.middleImages[i_3] = Instance.new("ImageLabel")
			arg1.middleImages[i_3].Name = "ThumbstickMiddle"
			arg1.middleImages[i_3].Visible = false
			arg1.middleImages[i_3].BackgroundTransparency = 1
			arg1.middleImages[i_3].Image = "rbxasset://textures/ui/Input/TouchControlsSheetV2.png"
			arg1.middleImages[i_3].ImageRectOffset = Vector2.new(1, 1)
			arg1.middleImages[i_3].ImageRectSize = Vector2.new(144, 144)
			arg1.middleImages[i_3].ImageTransparency = tbl_upvr[i_3]
			arg1.middleImages[i_3].AnchorPoint = Vector2.new(0.5, 0.5)
			arg1.middleImages[i_3].ZIndex = 9
			arg1.middleImages[i_3].Parent = arg1.thumbstickFrame
		end
		local var116_upvw
		local function onCurrentCameraChanged() -- Line 642
			--[[ Upvalues[2]:
				[1]: var116_upvw (read and write)
				[2]: longShowBackground_upvr (readonly)
			]]
			if var116_upvw then
				var116_upvw:Disconnect()
				var116_upvw = nil
			end
			local CurrentCamera_upvr_4 = workspace.CurrentCamera
			local var118
			if CurrentCamera_upvr_4 then
				var116_upvw = CurrentCamera_upvr_4:GetPropertyChangedSignal("ViewportSize"):Connect(function() -- Line 649, Named "onViewportSizeChanged"
					--[[ Upvalues[2]:
						[1]: CurrentCamera_upvr_4 (readonly)
						[2]: longShowBackground_upvr (copied, readonly)
					]]
					local var119 = CurrentCamera_upvr_4
					local ViewportSize_3 = var119.ViewportSize
					if ViewportSize_3.X >= ViewportSize_3.Y then
						var119 = false
					else
						var119 = true
					end
					longShowBackground_upvr(var119)
				end)
				local ViewportSize_8 = CurrentCamera_upvr_4.ViewportSize
				if ViewportSize_8.X >= ViewportSize_8.Y then
					var118 = false
				else
					var118 = true
				end
				longShowBackground_upvr(var118)
			end
		end
		workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(onCurrentCameraChanged)
		if workspace.CurrentCamera then
			onCurrentCameraChanged()
		end
	end
	var115 = nil
	arg1.moveTouchStartPosition = var115
	var115 = nil
	arg1.startImageFadeTween = var115
	var115 = nil
	arg1.endImageFadeTween = var115
	var115 = {}
	arg1.middleImageFadeTweens = var115
	var115 = RunService_upvr.RenderStepped
	var115 = var115:Connect(function() -- Line 670
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [36] 26. Error Block 3 start (CF ANALYSIS FAILED)
		arg1.tweenOutAlphaStart = tick()
		arg1.tweenInAlphaStart = nil
		do
			return
		end
		-- KONSTANTERROR: [36] 26. Error Block 3 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [47] 34. Error Block 9 start (CF ANALYSIS FAILED)
		if arg1.tweenOutAlphaStart ~= nil then
			local var123 = tick() - arg1.tweenOutAlphaStart
			local var124 = arg1.fadeInAndOutHalfDuration * 2 - arg1.fadeInAndOutHalfDuration * 2 * arg1.fadeInAndOutBalance
			arg1.thumbstickFrame.BackgroundTransparency = math.min(var123 / var124, 1) * 0.35 + 0.65
			if var124 < var123 then
				arg1.tweenOutAlphaStart = nil
			end
		end
		-- KONSTANTERROR: [47] 34. Error Block 9 end (CF ANALYSIS FAILED)
	end)
	arg1.onRenderSteppedConn = var115
	var115 = UserInputService_upvr.TouchEnded
	var115 = var115:connect(function(arg1_12) -- Line 689
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1_12 == arg1.moveTouchObject then
			arg1:OnInputEnded()
		end
	end)
	arg1.onTouchEndedConn = var115
	var115 = GuiService_upvr.MenuOpened
	var115 = var115:connect
	var115(function() -- Line 695
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.moveTouchObject then
			arg1:OnInputEnded()
		end
	end)
	var115 = LocalPlayer_upvw:FindFirstChildOfClass("PlayerGui")
	while not var115 do
		LocalPlayer_upvw.ChildAdded:wait()
		longShowBackground_upvr = "PlayerGui"
		var115 = LocalPlayer_upvw:FindFirstChildOfClass(longShowBackground_upvr)
		local var127_upvw = var115
	end
	longShowBackground_upvr = var127_upvw.CurrentScreenOrientation
	if longShowBackground_upvr ~= Enum.ScreenOrientation.LandscapeLeft then
		longShowBackground_upvr = var127_upvw.CurrentScreenOrientation
		if longShowBackground_upvr ~= Enum.ScreenOrientation.LandscapeRight then
		else
		end
	end
	function longShowBackground_upvr() -- Line 711, Named "longShowBackground"
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.fadeInAndOutHalfDuration = 2.5
		arg1.fadeInAndOutBalance = 0.05
		arg1.tweenInAlphaStart = tick()
	end
	local var129_upvr = true
	local var130_upvw
	var130_upvw = var127_upvw:GetPropertyChangedSignal("CurrentScreenOrientation"):Connect(function() -- Line 717
		--[[ Upvalues[4]:
			[1]: var129_upvr (readonly)
			[2]: var127_upvw (read and write)
			[3]: var130_upvw (read and write)
			[4]: arg1 (readonly)
		]]
		if var129_upvr and var127_upvw.CurrentScreenOrientation == Enum.ScreenOrientation.Portrait or not var129_upvr and var127_upvw.CurrentScreenOrientation ~= Enum.ScreenOrientation.Portrait then
			var130_upvw:disconnect()
			arg1.fadeInAndOutHalfDuration = 2.5
			arg1.fadeInAndOutBalance = 0.05
			arg1.tweenInAlphaStart = tick()
			if var129_upvr then
				arg1.hasFadedBackgroundInPortrait = true
				return
			end
			arg1.hasFadedBackgroundInLandscape = true
		end
	end)
	arg1.thumbstickFrame.Parent = arg2
	if game:IsLoaded() then
		arg1.fadeInAndOutHalfDuration = 2.5
		arg1.fadeInAndOutBalance = 0.05
		arg1.tweenInAlphaStart = tick()
	else
		coroutine.wrap(function() -- Line 737
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			game.Loaded:Wait()
			arg1.fadeInAndOutHalfDuration = 2.5
			arg1.fadeInAndOutBalance = 0.05
			arg1.tweenInAlphaStart = tick()
		end)()
	end
end
return setmetatable_result1_upvr