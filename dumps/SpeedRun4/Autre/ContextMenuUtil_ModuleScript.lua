-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:35
-- Luau version 6, Types version 3
-- Time taken: 0.008127 seconds

local Players_upvr = game:GetService("Players")
local ContextActionService_upvr = game:GetService("ContextActionService")
local GuiService_upvr = game:GetService("GuiService")
local UserInputService_upvr = game:GetService("UserInputService")
local var5_upvw
while not var5_upvw do
	Players_upvr.PlayerAdded:Wait()
	var5_upvw = Players_upvr.LocalPlayer
end
local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.GetHeadshotForPlayer(arg1, arg2) -- Line 47
	return "rbxthumb://type=AvatarHeadShot&id="..arg2.UserId.."&w=150&h=150"
end
function module_upvr.HasOrGettingHeadShot(arg1, arg2) -- Line 51
	local var7
	if arg1.HeadShotUrlCache[arg2] == nil then
		var7 = false
	else
		var7 = true
	end
	return var7
end
function module_upvr.FindPlayerFromPart(arg1, arg2) -- Line 55
	--[[ Upvalues[1]:
		[1]: Players_upvr (readonly)
	]]
	if arg2 then
		local var9
		if var9 then
			var9 = arg2
			while var9 and not var9:IsA("Model") do
				var9 = var9.Parent
			end
			if var9 then
				return Players_upvr:GetPlayerFromCharacter(var9)
			end
		end
	end
	return nil
end
function module_upvr.GetPlayerPosition(arg1, arg2) -- Line 68
	if arg2.Character then
		local HumanoidRootPart_2 = arg2.Character:FindFirstChild("HumanoidRootPart")
		if HumanoidRootPart_2 then
			return HumanoidRootPart_2.Position
		end
	end
	return nil
end
local var12_upvw = true
function module_upvr.DisablePlayerMovement(arg1) -- Line 80
	--[[ Upvalues[2]:
		[1]: var12_upvw (read and write)
		[2]: ContextActionService_upvr (readonly)
	]]
	if not var12_upvw then
	else
		var12_upvw = false
		ContextActionService_upvr:BindCoreActionAtPriority("AvatarContextMenuStopInput", function(arg1_2, arg2) -- Line 84
			if arg2 == Enum.UserInputState.End then
				return Enum.ContextActionResult.Pass
			end
			return Enum.ContextActionResult.Sink
		end, false, Enum.ContextActionPriority.Low.Value, Enum.PlayerActions.CharacterForward, Enum.PlayerActions.CharacterBackward, Enum.PlayerActions.CharacterLeft, Enum.PlayerActions.CharacterRight, Enum.PlayerActions.CharacterJump, Enum.UserInputType.Gamepad1, Enum.UserInputType.Gamepad2, Enum.UserInputType.Gamepad3, Enum.UserInputType.Gamepad4)
	end
end
function module_upvr.EnablePlayerMovement(arg1) -- Line 101
	--[[ Upvalues[2]:
		[1]: var12_upvw (read and write)
		[2]: ContextActionService_upvr (readonly)
	]]
	if var12_upvw then
	else
		var12_upvw = true
		ContextActionService_upvr:UnbindCoreAction("AvatarContextMenuStopInput")
	end
end
function module_upvr.GetFriendStatus(arg1, arg2) -- Line 108
	--[[ Upvalues[1]:
		[1]: var5_upvw (read and write)
	]]
	local pcall_result1, pcall_result2 = pcall(function() -- Line 109
		--[[ Upvalues[2]:
			[1]: var5_upvw (copied, read and write)
			[2]: arg2 (readonly)
		]]
		return var5_upvw:GetFriendStatus(arg2)
	end)
	if pcall_result1 then
		return pcall_result2
	end
	return Enum.FriendStatus.NotFriend
end
local module_upvr_2 = {}
local RobloxReplicatedStorage_upvr = game:GetService("RobloxReplicatedStorage")
coroutine.wrap(function() -- Line 121
	--[[ Upvalues[2]:
		[1]: RobloxReplicatedStorage_upvr (readonly)
		[2]: module_upvr_2 (readonly)
	]]
	RobloxReplicatedStorage_upvr:WaitForChild("CanChatWith", math.huge).OnClientEvent:Connect(function(...) -- Line 124
		--[[ Upvalues[1]:
			[1]: module_upvr_2 (copied, readonly)
		]]
		local args_list = {...}
		if #args_list == 1 then
			for i, v in pairs(args_list[1]) do
				module_upvr_2[i] = v
			end
		elseif #args_list == 2 then
			module_upvr_2[args_list[1]] = args_list[2]
		end
	end)
end)()
local BlockingUtility_upvr = require(game:GetService("CorePackages").Workspace.Packages.BlockingUtility)
function module_upvr.GetCanChatWith(arg1, arg2) -- Line 140
	--[[ Upvalues[2]:
		[1]: BlockingUtility_upvr (readonly)
		[2]: module_upvr_2 (readonly)
	]]
	if BlockingUtility_upvr:IsPlayerBlockedByUserId(arg2.UserId) then
		return false
	end
	if module_upvr_2[arg2.UserId] ~= nil then
		return module_upvr_2[arg2.UserId]
	end
	return true
end
local ImageLabel_upvr = Instance.new("ImageLabel")
ImageLabel_upvr.Image = ""
ImageLabel_upvr.BackgroundTransparency = 1
local function MakeDefaultButton_upvr(arg1, arg2, arg3, arg4) -- Line 156, Named "MakeDefaultButton"
	--[[ Upvalues[3]:
		[1]: ImageLabel_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
		[3]: GuiService_upvr (readonly)
	]]
	local ImageButton_upvr = Instance.new("ImageButton")
	ImageButton_upvr.Name = arg1
	ImageButton_upvr.Image = arg4.ButtonImage
	ImageButton_upvr.ScaleType = arg4.ButtonImageScaleType
	ImageButton_upvr.SliceCenter = arg4.ButtonImageSliceCenter
	ImageButton_upvr.BackgroundColor3 = arg4.ButtonColor
	ImageButton_upvr.BackgroundTransparency = arg4.ButtonTransparency
	ImageButton_upvr.AutoButtonColor = false
	ImageButton_upvr.Size = arg2
	ImageButton_upvr.ZIndex = 2
	ImageButton_upvr.SelectionImageObject = ImageLabel_upvr
	ImageButton_upvr.BorderSizePixel = 0
	local Frame = Instance.new("Frame")
	Frame.Name = "Underline"
	Frame.BackgroundColor3 = arg4.ButtonUnderlineColor
	Frame.AnchorPoint = Vector2.new(0.5, 1)
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(0.5, 0, 1, 0)
	Frame.Size = UDim2.new(0.95, 0, 0, 1)
	Frame.Parent = ImageButton_upvr
	if arg3 then
		ImageButton_upvr.MouseButton1Click:Connect(function() -- Line 181
			--[[ Upvalues[2]:
				[1]: arg3 (readonly)
				[2]: UserInputService_upvr (copied, readonly)
			]]
			arg3(UserInputService_upvr:GetLastInputType())
		end)
	end
	local function _(arg1_3) -- Line 186, Named "isPointerInput"
		local var32 = true
		if arg1_3.UserInputType ~= Enum.UserInputType.MouseMovement then
			if arg1_3.UserInputType ~= Enum.UserInputType.Touch then
				var32 = false
			else
				var32 = true
			end
		end
		return var32
	end
	local function _() -- Line 190, Named "selectButton"
		--[[ Upvalues[2]:
			[1]: ImageButton_upvr (readonly)
			[2]: arg4 (readonly)
		]]
		ImageButton_upvr.BackgroundColor3 = arg4.ButtonHoverColor
		ImageButton_upvr.BackgroundTransparency = arg4.ButtonHoverTransparency
	end
	local function _() -- Line 195, Named "deselectButton"
		--[[ Upvalues[2]:
			[1]: ImageButton_upvr (readonly)
			[2]: arg4 (readonly)
		]]
		ImageButton_upvr.BackgroundColor3 = arg4.ButtonColor
		ImageButton_upvr.BackgroundTransparency = arg4.ButtonTransparency
	end
	ImageButton_upvr.InputBegan:Connect(function(arg1_4) -- Line 200
		--[[ Upvalues[2]:
			[1]: ImageButton_upvr (readonly)
			[2]: arg4 (readonly)
		]]
		if ImageButton_upvr.Selectable then
			local var34 = true
			if arg1_4.UserInputType ~= Enum.UserInputType.MouseMovement then
				if arg1_4.UserInputType ~= Enum.UserInputType.Touch then
					var34 = false
				else
					var34 = true
				end
			end
			if var34 then
				ImageButton_upvr.BackgroundColor3 = arg4.ButtonHoverColor
				ImageButton_upvr.BackgroundTransparency = arg4.ButtonHoverTransparency
				arg1_4:GetPropertyChangedSignal("UserInputState"):connect(function() -- Line 203
					--[[ Upvalues[3]:
						[1]: arg1_4 (readonly)
						[2]: ImageButton_upvr (copied, readonly)
						[3]: arg4 (copied, readonly)
					]]
					if arg1_4.UserInputState == Enum.UserInputState.End then
						ImageButton_upvr.BackgroundColor3 = arg4.ButtonColor
						ImageButton_upvr.BackgroundTransparency = arg4.ButtonTransparency
					end
				end)
			end
		end
	end)
	ImageButton_upvr.InputEnded:Connect(function(arg1_5) -- Line 210
		--[[ Upvalues[3]:
			[1]: ImageButton_upvr (readonly)
			[2]: GuiService_upvr (copied, readonly)
			[3]: arg4 (readonly)
		]]
		if ImageButton_upvr.Selectable and GuiService_upvr.SelectedCoreObject ~= ImageButton_upvr then
			local var37 = true
			if arg1_5.UserInputType ~= Enum.UserInputType.MouseMovement then
				if arg1_5.UserInputType ~= Enum.UserInputType.Touch then
					var37 = false
				else
					var37 = true
				end
			end
			if var37 then
				ImageButton_upvr.BackgroundColor3 = arg4.ButtonColor
				ImageButton_upvr.BackgroundTransparency = arg4.ButtonTransparency
			end
		end
	end)
	ImageButton_upvr.SelectionGained:Connect(function() -- Line 216
		--[[ Upvalues[2]:
			[1]: ImageButton_upvr (readonly)
			[2]: arg4 (readonly)
		]]
		ImageButton_upvr.BackgroundColor3 = arg4.ButtonHoverColor
		ImageButton_upvr.BackgroundTransparency = arg4.ButtonHoverTransparency
	end)
	ImageButton_upvr.SelectionLost:Connect(function() -- Line 219
		--[[ Upvalues[2]:
			[1]: ImageButton_upvr (readonly)
			[2]: arg4 (readonly)
		]]
		ImageButton_upvr.BackgroundColor3 = arg4.ButtonColor
		ImageButton_upvr.BackgroundTransparency = arg4.ButtonTransparency
	end)
	local function _(arg1_6) -- Line 223
		--[[ Upvalues[3]:
			[1]: GuiService_upvr (copied, readonly)
			[2]: ImageButton_upvr (readonly)
			[3]: arg4 (readonly)
		]]
		if arg1_6 ~= "SelectedCoreObject" then
		else
			if GuiService_upvr.SelectedCoreObject == nil or GuiService_upvr.SelectedCoreObject ~= ImageButton_upvr then
				ImageButton_upvr.BackgroundColor3 = arg4.ButtonColor
				ImageButton_upvr.BackgroundTransparency = arg4.ButtonTransparency
				return
			end
			if ImageButton_upvr.Selectable then
				ImageButton_upvr.BackgroundColor3 = arg4.ButtonHoverColor
				ImageButton_upvr.BackgroundTransparency = arg4.ButtonHoverTransparency
			end
		end
	end
	return ImageButton_upvr
end
local function getViewportSize_upvr() -- Line 239, Named "getViewportSize"
	while not workspace.CurrentCamera do
		workspace.Changed:Wait()
	end
	assert(workspace.CurrentCamera, "")
	while not (workspace.CurrentCamera.ViewportSize == Vector2.new(0, 0) or workspace.CurrentCamera.ViewportSize ~= Vector2.new(1, 1)) do
		workspace.CurrentCamera.Changed:Wait()
	end
	return workspace.CurrentCamera.ViewportSize
end
local function _() -- Line 255, Named "isSmallTouchScreen"
	--[[ Upvalues[2]:
		[1]: getViewportSize_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
	]]
	local getViewportSize_upvr_result1_2 = getViewportSize_upvr()
	local TouchEnabled = UserInputService_upvr.TouchEnabled
	if TouchEnabled then
		TouchEnabled = true
		if getViewportSize_upvr_result1_2.Y >= 500 then
			if getViewportSize_upvr_result1_2.X >= 700 then
				TouchEnabled = false
			else
				TouchEnabled = true
			end
		end
	end
	return TouchEnabled
end
function module_upvr.MakeStyledButton(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 260
	--[[ Upvalues[4]:
		[1]: MakeDefaultButton_upvr (readonly)
		[2]: getViewportSize_upvr (readonly)
		[3]: UserInputService_upvr (readonly)
		[4]: GuiService_upvr (readonly)
	]]
	local MakeDefaultButton_upvr_result1 = MakeDefaultButton_upvr(arg2, arg4, arg5, arg6)
	local TextLabel_2 = Instance.new("TextLabel")
	TextLabel_2.Name = arg2.."TextLabel"
	TextLabel_2.BackgroundTransparency = 1
	TextLabel_2.BorderSizePixel = 0
	TextLabel_2.Size = UDim2.new(1, 0, 1, -8)
	TextLabel_2.Position = UDim2.new(0, 0, 0, 0)
	TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_2.TextYAlignment = Enum.TextYAlignment.Center
	TextLabel_2.Font = arg6.Font
	TextLabel_2.TextSize = 24 * arg6.TextScale
	local getViewportSize_result1_2 = getViewportSize_upvr()
	local TouchEnabled_2 = UserInputService_upvr.TouchEnabled
	if TouchEnabled_2 then
		TouchEnabled_2 = true
		if getViewportSize_result1_2.Y >= 500 then
			if getViewportSize_result1_2.X >= 700 then
				TouchEnabled_2 = false
			else
				TouchEnabled_2 = true
			end
		end
	end
	if TouchEnabled_2 then
		TextLabel_2.TextSize = 18 * arg6.TextScale
	elseif GuiService_upvr:IsTenFootInterface() then
		TextLabel_2.TextSize = 36 * arg6.TextScale
	end
	TextLabel_2.Text = arg3
	TextLabel_2.TextScaled = true
	TextLabel_2.TextWrapped = true
	TextLabel_2.ZIndex = 2
	TextLabel_2.Parent = MakeDefaultButton_upvr_result1
	Instance.new("UITextSizeConstraint", TextLabel_2).MaxTextSize = TextLabel_2.TextSize
	return MakeDefaultButton_upvr_result1, TextLabel_2
end
function module_upvr.new() -- Line 290
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return setmetatable({}, module_upvr)
end
return module_upvr.new()