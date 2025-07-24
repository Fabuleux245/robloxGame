-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:39:23
-- Luau version 6, Types version 3
-- Time taken: 0.008752 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module = require(ReplicatedStorage:WaitForChild("FeatureFlags"))
local Players_upvr = game:GetService("Players")
local module_upvr = require(script.Parent:WaitForChild("BaseCharacterController"))
local setmetatable_result1_2_upvr = setmetatable({}, module_upvr)
setmetatable_result1_2_upvr.__index = setmetatable_result1_2_upvr
function setmetatable_result1_2_upvr.new() -- Line 28
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: setmetatable_result1_2_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable(module_upvr.new(), setmetatable_result1_2_upvr)
	setmetatable_result1.parentUIFrame = nil
	setmetatable_result1.jumpButton = nil
	setmetatable_result1.characterAddedConn = nil
	setmetatable_result1.humanoidStateEnabledChangedConn = nil
	setmetatable_result1.humanoidJumpPowerConn = nil
	setmetatable_result1.humanoidParentConn = nil
	setmetatable_result1.externallyEnabled = false
	setmetatable_result1.jumpPower = 0
	setmetatable_result1.jumpStateEnabled = true
	setmetatable_result1.isJumping = false
	setmetatable_result1.humanoid = nil
	return setmetatable_result1
end
local UserFixTouchJumpBug_upvr = module.UserFixTouchJumpBug
function setmetatable_result1_2_upvr.EnableButton(arg1, arg2) -- Line 46
	--[[ Upvalues[2]:
		[1]: Players_upvr (readonly)
		[2]: UserFixTouchJumpBug_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [34] 24. Error Block 10 start (CF ANALYSIS FAILED)
	arg1.jumpButton.Visible = true
	do
		return
	end
	-- KONSTANTERROR: [34] 24. Error Block 10 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [40] 28. Error Block 16 start (CF ANALYSIS FAILED)
	arg1.jumpButton.Visible = false
	if UserFixTouchJumpBug_upvr then
		arg1.touchObject = nil
	end
	arg1.isJumping = false
	arg1.jumpButton.ImageRectOffset = Vector2.new(1, 146)
	-- KONSTANTERROR: [40] 28. Error Block 16 end (CF ANALYSIS FAILED)
end
function setmetatable_result1_2_upvr.UpdateEnabled(arg1) -- Line 69
	if 0 < arg1.jumpPower and arg1.jumpStateEnabled then
		arg1:EnableButton(true)
	else
		arg1:EnableButton(false)
	end
end
function setmetatable_result1_2_upvr.HumanoidChanged(arg1, arg2) -- Line 77
	--[[ Upvalues[1]:
		[1]: Players_upvr (readonly)
	]]
	local Character = Players_upvr.LocalPlayer.Character
	if Character then
		Character = Players_upvr.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	end
	if Character then
		if arg2 == "JumpPower" then
			arg1.jumpPower = Character.JumpPower
			arg1:UpdateEnabled()
			return
		end
		if arg2 == "Parent" and not Character.Parent then
			arg1.humanoidChangeConn:Disconnect()
		end
	end
end
function setmetatable_result1_2_upvr.HumanoidStateEnabledChanged(arg1, arg2, arg3) -- Line 91
	if arg2 == Enum.HumanoidStateType.Jumping then
		arg1.jumpStateEnabled = arg3
		arg1:UpdateEnabled()
	end
end
function setmetatable_result1_2_upvr.CharacterAdded(arg1, arg2) -- Line 98
	local var9_upvw
	if var9_upvw then
		var9_upvw = arg1.humanoidChangeConn:Disconnect
		var9_upvw()
		var9_upvw = nil
		arg1.humanoidChangeConn = var9_upvw
	end
	var9_upvw = arg2:FindFirstChildOfClass("Humanoid")
	while not var9_upvw do
		arg2.ChildAdded:wait()
		var9_upvw = arg2:FindFirstChildOfClass("Humanoid")
	end
	arg1.humanoid = var9_upvw
	arg1.humanoidJumpPowerConn = var9_upvw:GetPropertyChangedSignal("JumpPower"):Connect(function() -- Line 113
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: var9_upvw (read and write)
		]]
		if arg1.humanoid ~= var9_upvw then
		else
			arg1.jumpPower = var9_upvw.JumpPower
			arg1:UpdateEnabled()
		end
	end)
	arg1.humanoidParentConn = var9_upvw:GetPropertyChangedSignal("Parent"):Connect(function() -- Line 122
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: var9_upvw (read and write)
		]]
		if arg1.humanoid ~= var9_upvw then
		elseif not var9_upvw.Parent then
			arg1.humanoidJumpPowerConn:Disconnect()
			arg1.humanoidJumpPowerConn = nil
			arg1.humanoidParentConn:Disconnect()
			arg1.humanoidParentConn = nil
		end
	end)
	arg1.humanoidStateEnabledChangedConn = var9_upvw.StateEnabledChanged:Connect(function(arg1_2, arg2_2) -- Line 135
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: var9_upvw (read and write)
		]]
		if arg1.humanoid ~= var9_upvw then
		else
			arg1:HumanoidStateEnabledChanged(arg1_2, arg2_2)
		end
	end)
	arg1.jumpPower = var9_upvw.JumpPower
	arg1.jumpStateEnabled = var9_upvw:GetStateEnabled(Enum.HumanoidStateType.Jumping)
	arg1:UpdateEnabled()
end
function setmetatable_result1_2_upvr.SetupCharacterAddedFunction(arg1) -- Line 148
	--[[ Upvalues[1]:
		[1]: Players_upvr (readonly)
	]]
	arg1.characterAddedConn = Players_upvr.LocalPlayer.CharacterAdded:Connect(function(arg1_3) -- Line 149
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:CharacterAdded(arg1_3)
	end)
	if Players_upvr.LocalPlayer.Character then
		arg1:CharacterAdded(Players_upvr.LocalPlayer.Character)
	end
end
function setmetatable_result1_2_upvr.Enable(arg1, arg2, arg3) -- Line 157
	if arg3 then
		arg1.parentUIFrame = arg3
	end
	arg1.externallyEnabled = arg2
	arg1:EnableButton(arg2)
end
local UserResizeAwareTouchControls_upvr = module.UserResizeAwareTouchControls
local module_upvr_2 = require(ReplicatedStorage:WaitForChild("Settings"))
local GuiService_upvr = game:GetService("GuiService")
function setmetatable_result1_2_upvr.Create(arg1) -- Line 165
	--[[ Upvalues[3]:
		[1]: UserResizeAwareTouchControls_upvr (readonly)
		[2]: module_upvr_2 (readonly)
		[3]: GuiService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if not arg1.parentUIFrame then
	else
		local var17
		if UserResizeAwareTouchControls_upvr then
			if arg1.jumpButton then
				arg1.jumpButton:Destroy()
				arg1.jumpButton = nil
			end
			if arg1.absoluteSizeChangedConn then
				arg1.absoluteSizeChangedConn:Disconnect()
				arg1.absoluteSizeChangedConn = nil
			end
			arg1.jumpButton = Instance.new("ImageButton")
			arg1.jumpButton.Name = "JumpButton"
			arg1.jumpButton.Visible = false
			arg1.jumpButton.BackgroundTransparency = 1
			arg1.jumpButton.Image = "rbxasset://textures/ui/Input/TouchControlsSheetV2.png"
			var17 = 1
			arg1.jumpButton.ImageRectOffset = Vector2.new(var17, 146)
			var17 = 144
			arg1.jumpButton.ImageRectSize = Vector2.new(var17, 144)
			local function ResizeJumpButton() -- Line 188
				--[[ Upvalues[2]:
					[1]: arg1 (readonly)
					[2]: module_upvr_2 (copied, readonly)
				]]
				-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
				local x = arg1.parentUIFrame.AbsoluteSize.x
				local var19
				if math.min(x, arg1.parentUIFrame.AbsoluteSize.y) > var19 then
					x = false
				else
					x = true
				end
				local function INLINED() -- Internal function, doesn't exist in bytecode
					var19 = module_upvr_2.InputMobileThumbstickSizeSmall
					return var19
				end
				if not x or not INLINED() then
					var19 = module_upvr_2.InputMobileThumbstickSizeLarge
				end
				arg1.jumpButton.Size = UDim2.new(0, var19, 0, var19)
				if not x or not UDim2.new(1, -(var19 * 1.5 - 10), 1, -var19 - 20) then
				end
				arg1.jumpButton.Position = UDim2.new(1, -(var19 * 1.5 - 10), 1, -var19 * 1.75)
			end
			ResizeJumpButton()
			arg1.absoluteSizeChangedConn = arg1.parentUIFrame:GetPropertyChangedSignal("AbsoluteSize"):Connect(ResizeJumpButton)
		else
			if arg1.jumpButton then
				arg1.jumpButton:Destroy()
				arg1.jumpButton = nil
			end
			var17 = arg1.parentUIFrame.AbsoluteSize
			local x_2 = var17.x
			var17 = arg1.parentUIFrame.AbsoluteSize.y
			var17 = 500
			if math.min(x_2, var17) > var17 then
				x_2 = false
			else
				x_2 = true
			end
			local function INLINED_2() -- Internal function, doesn't exist in bytecode
				var17 = module_upvr_2.InputMobileThumbstickSizeSmall
				return var17
			end
			if not x_2 or not INLINED_2() then
				var17 = module_upvr_2.InputMobileThumbstickSizeLarge
			end
			arg1.jumpButton = Instance.new("ImageButton")
			arg1.jumpButton.Name = "JumpButton"
			arg1.jumpButton.Visible = false
			arg1.jumpButton.BackgroundTransparency = 1
			arg1.jumpButton.Image = "rbxasset://textures/ui/Input/TouchControlsSheetV2.png"
			arg1.jumpButton.ImageRectOffset = Vector2.new(1, 146)
			arg1.jumpButton.ImageRectSize = Vector2.new(144, 144)
			arg1.jumpButton.Size = UDim2.new(0, var17, 0, var17)
			if not x_2 or not UDim2.new(1, -(var17 * 1.5 - 10), 1, -var17 - 20) then
			end
			arg1.jumpButton.Position = UDim2.new(1, -(var17 * 1.5 - 10), 1, -var17 * 1.75)
		end
		arg1.touchObject = nil
		arg1.jumpButton.InputBegan:connect(function(arg1_4) -- Line 229
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.touchObject or arg1_4.UserInputType ~= Enum.UserInputType.Touch or arg1_4.UserInputState ~= Enum.UserInputState.Begin then
			else
				arg1.touchObject = arg1_4
				arg1.jumpButton.ImageRectOffset = Vector2.new(146, 146)
				arg1.isJumping = true
			end
		end)
		local function _() -- Line 242
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.touchObject = nil
			arg1.isJumping = false
			arg1.jumpButton.ImageRectOffset = Vector2.new(1, 146)
		end
		arg1.jumpButton.InputEnded:connect(function(arg1_5) -- Line 248
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1_5 == arg1.touchObject then
				arg1.touchObject = nil
				arg1.isJumping = false
				arg1.jumpButton.ImageRectOffset = Vector2.new(1, 146)
			end
		end)
		GuiService_upvr.MenuOpened:connect(function() -- Line 254
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.touchObject then
				arg1.touchObject = nil
				arg1.isJumping = false
				arg1.jumpButton.ImageRectOffset = Vector2.new(1, 146)
			end
		end)
		if not arg1.characterAddedConn then
			arg1:SetupCharacterAddedFunction()
		end
		arg1.jumpButton.Parent = arg1.parentUIFrame
	end
end
return setmetatable_result1_2_upvr