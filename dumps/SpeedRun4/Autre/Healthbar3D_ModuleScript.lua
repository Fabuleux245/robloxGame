-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:23
-- Luau version 6, Types version 3
-- Time taken: 0.008501 seconds

local Color3_new_result1_2_upvr = Color3.new(1, 0.10980392156862745, 0)
local Color3_new_result1 = Color3.new(0.9803921568627451, 0.9215686274509803, 0)
local Color3_new_result1_upvr = Color3.new(0.10588235294117647, 0.9882352941176471, 0.4196078431372549)
local Players_upvr = game:GetService("Players")
local UserInputService_upvr = game:GetService("UserInputService")
local Frame_upvr = Instance.new("Frame")
Frame_upvr.Name = "HealthbarContainer"
Frame_upvr.BackgroundTransparency = 1
Frame_upvr.Size = UDim2.new(1, 0, 1, 0)
local ImageLabel_upvr_2 = Instance.new("ImageLabel")
ImageLabel_upvr_2.ImageColor3 = Color3.new(0.8941176470588236, 0.9254901960784314, 0.9647058823529412)
ImageLabel_upvr_2.BackgroundTransparency = 1
ImageLabel_upvr_2.ScaleType = Enum.ScaleType.Slice
ImageLabel_upvr_2.SliceCenter = Rect.new(10, 10, 10, 10)
ImageLabel_upvr_2.Name = "HealthbarBack"
ImageLabel_upvr_2.Image = "rbxasset://textures/ui/VR/rectBackgroundWhite.png"
ImageLabel_upvr_2.Size = UDim2.new(1, 0, 0.3, 0)
ImageLabel_upvr_2.Position = UDim2.new(0, 0, 0.7, 0)
ImageLabel_upvr_2.Parent = Frame_upvr
local ImageLabel_upvr = Instance.new("ImageLabel")
ImageLabel_upvr.ImageColor3 = Color3_new_result1_upvr
ImageLabel_upvr.BackgroundTransparency = 1
ImageLabel_upvr.ScaleType = Enum.ScaleType.Slice
ImageLabel_upvr.SliceCenter = Rect.new(10, 10, 10, 10)
ImageLabel_upvr.Size = UDim2.new(1, 0, 1, 0)
ImageLabel_upvr.Position = UDim2.new(0, 0, 0, 0)
ImageLabel_upvr.Name = "HealthbarFill"
ImageLabel_upvr.Image = "rbxasset://textures/ui/VR/rectBackgroundWhite.png"
ImageLabel_upvr.Parent = ImageLabel_upvr_2
local TextLabel_upvr = Instance.new("TextLabel")
TextLabel_upvr.Name = "PlayerName"
TextLabel_upvr.BackgroundTransparency = 1
TextLabel_upvr.TextColor3 = Color3.new(1, 1, 1)
TextLabel_upvr.Text = ""
TextLabel_upvr.Font = Enum.Font.SourceSansBold
TextLabel_upvr.FontSize = Enum.FontSize.Size24
TextLabel_upvr.TextXAlignment = Enum.TextXAlignment.Left
TextLabel_upvr.Size = UDim2.new(1, 0, 0, 14)
TextLabel_upvr.Parent = Frame_upvr
local function _(arg1) -- Line 67, Named "Color3ToVec3"
	return Vector3.new(arg1.r, arg1.g, arg1.b)
end
local function FindChildOfType_upvr(arg1, arg2) -- Line 71, Named "FindChildOfType"
	for _, v in pairs(arg1:GetChildren()) do
		if v:IsA(arg2) then
			return v
		end
	end
end
local tbl_upvr = {
	[Vector3.new(Color3_new_result1_2_upvr.r, Color3_new_result1_2_upvr.g, Color3_new_result1_2_upvr.b)] = 0.1;
	[Vector3.new(Color3_new_result1.r, Color3_new_result1.g, Color3_new_result1.b)] = 0.5;
	[Vector3.new(Color3_new_result1_upvr.r, Color3_new_result1_upvr.g, Color3_new_result1_upvr.b)] = 0.8;
}
local function HealthbarColorTransferFunction_upvr(arg1) -- Line 87, Named "HealthbarColorTransferFunction"
	--[[ Upvalues[3]:
		[1]: Color3_new_result1_2_upvr (readonly)
		[2]: Color3_new_result1_upvr (readonly)
		[3]: tbl_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var24
	if arg1 <= var24 then
		var24 = Color3_new_result1_2_upvr
		return var24
	end
	var24 = 0.8
	if var24 <= arg1 then
		var24 = Color3_new_result1_upvr
		return var24
	end
	var24 = Vector3.new(0, 0, 0)
	for i_2, v_2 in pairs(tbl_upvr) do
		local var28 = arg1 - v_2
		if var28 == 0 then
			return Color3.new(i_2.x, i_2.y, i_2.z)
		end
		local var29 = (1) / (var28 * var28)
		var24 += var29 * i_2
	end
	local var30 = var24 / (0 + var29)
	return Color3.new(var30.x, var30.y, var30.z)
end
local function _(arg1) -- Line 113, Named "UpdateHealth"
	--[[ Upvalues[2]:
		[1]: ImageLabel_upvr (readonly)
		[2]: HealthbarColorTransferFunction_upvr (readonly)
	]]
	local var31 = arg1.Health / arg1.MaxHealth
	if var31 ~= var31 then
		var31 = 1
	end
	ImageLabel_upvr.ImageColor3 = HealthbarColorTransferFunction_upvr(var31)
	ImageLabel_upvr.Size = UDim2.new(var31, 0, 1, 0)
end
local var32_upvw
local var33_upvw
local function RegisterHumanoid_upvr(arg1) -- Line 124, Named "RegisterHumanoid"
	--[[ Upvalues[6]:
		[1]: var32_upvw (read and write)
		[2]: var33_upvw (read and write)
		[3]: Players_upvr (readonly)
		[4]: RegisterHumanoid_upvr (readonly)
		[5]: ImageLabel_upvr (readonly)
		[6]: HealthbarColorTransferFunction_upvr (readonly)
	]]
	if var32_upvw then
		var32_upvw:disconnect()
		var32_upvw = nil
	end
	if var33_upvw then
		var33_upvw:disconnect()
		var33_upvw = nil
	end
	if arg1 then
		var32_upvw = arg1.AncestryChanged:connect(function(arg1_2, arg2) -- Line 135
			--[[ Upvalues[3]:
				[1]: Players_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: RegisterHumanoid_upvr (copied, readonly)
			]]
			local LocalPlayer_2 = Players_upvr.LocalPlayer
			if arg1_2 == arg1 and (not LocalPlayer_2 or arg2 ~= LocalPlayer_2.Character) then
				RegisterHumanoid_upvr(nil)
			end
		end)
		var33_upvw = arg1.HealthChanged:connect(function() -- Line 141
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: ImageLabel_upvr (copied, readonly)
				[3]: HealthbarColorTransferFunction_upvr (copied, readonly)
			]]
			local var37 = arg1
			local var38 = var37.Health / var37.MaxHealth
			if var38 ~= var38 then
				var38 = 1
			end
			ImageLabel_upvr.ImageColor3 = HealthbarColorTransferFunction_upvr(var38)
			ImageLabel_upvr.Size = UDim2.new(var38, 0, 1, 0)
		end)
		local var39 = arg1.Health / arg1.MaxHealth
		if var39 ~= var39 then
			var39 = 1
		end
		ImageLabel_upvr.ImageColor3 = HealthbarColorTransferFunction_upvr(var39)
		ImageLabel_upvr.Size = UDim2.new(var39, 0, 1, 0)
	end
end
local function OnCharacterChildAdded_upvr(arg1) -- Line 146, Named "OnCharacterChildAdded"
	--[[ Upvalues[2]:
		[1]: Players_upvr (readonly)
		[2]: RegisterHumanoid_upvr (readonly)
	]]
	local LocalPlayer_4 = Players_upvr.LocalPlayer
	if LocalPlayer_4 and arg1.Parent == LocalPlayer_4.Character and arg1:IsA("Humanoid") then
		RegisterHumanoid_upvr(arg1)
	end
end
local var41_upvw
local function OnCharacterAdded_upvr(arg1) -- Line 154, Named "OnCharacterAdded"
	--[[ Upvalues[4]:
		[1]: FindChildOfType_upvr (readonly)
		[2]: RegisterHumanoid_upvr (readonly)
		[3]: var41_upvw (read and write)
		[4]: OnCharacterChildAdded_upvr (readonly)
	]]
	local FindChildOfType_upvr_result1_2 = FindChildOfType_upvr(arg1, "Humanoid")
	if FindChildOfType_upvr_result1_2 then
		RegisterHumanoid_upvr(FindChildOfType_upvr_result1_2)
	end
	if var41_upvw then
		var41_upvw:disconnect()
		var41_upvw = nil
	end
	var41_upvw = arg1.ChildAdded:connect(OnCharacterChildAdded_upvr)
end
local function _(arg1) -- Line 167, Named "OnPlayerAdded"
	--[[ Upvalues[6]:
		[1]: TextLabel_upvr (readonly)
		[2]: OnCharacterAdded_upvr (readonly)
		[3]: FindChildOfType_upvr (readonly)
		[4]: RegisterHumanoid_upvr (readonly)
		[5]: var41_upvw (read and write)
		[6]: OnCharacterChildAdded_upvr (readonly)
	]]
	TextLabel_upvr.Text = arg1.Name
	arg1.CharacterAdded:connect(OnCharacterAdded_upvr)
	if arg1.Character then
		local Character_3 = arg1.Character
		local FindChildOfType_upvr_result1_4 = FindChildOfType_upvr(Character_3, "Humanoid")
		if FindChildOfType_upvr_result1_4 then
			RegisterHumanoid_upvr(FindChildOfType_upvr_result1_4)
		end
		if var41_upvw then
			var41_upvw:disconnect()
			var41_upvw = nil
		end
		var41_upvw = Character_3.ChildAdded:connect(OnCharacterChildAdded_upvr)
	end
end
if Players_upvr.LocalPlayer then
	local LocalPlayer_3 = Players_upvr.LocalPlayer
	TextLabel_upvr.Text = LocalPlayer_3.Name
	LocalPlayer_3.CharacterAdded:connect(OnCharacterAdded_upvr)
	if LocalPlayer_3.Character then
		local Character = LocalPlayer_3.Character
		local FindChildOfType_upvr_result1_3 = FindChildOfType_upvr(Character, "Humanoid")
		if FindChildOfType_upvr_result1_3 then
			RegisterHumanoid_upvr(FindChildOfType_upvr_result1_3)
		end
		if var41_upvw then
			var41_upvw:disconnect()
			var41_upvw = nil
		end
		var41_upvw = Character.ChildAdded:connect(OnCharacterChildAdded_upvr)
		-- KONSTANTWARNING: GOTO [342] #255
	end
else
	spawn(function() -- Line 179
		--[[ Upvalues[7]:
			[1]: Players_upvr (readonly)
			[2]: TextLabel_upvr (readonly)
			[3]: OnCharacterAdded_upvr (readonly)
			[4]: FindChildOfType_upvr (readonly)
			[5]: RegisterHumanoid_upvr (readonly)
			[6]: var41_upvw (read and write)
			[7]: OnCharacterChildAdded_upvr (readonly)
		]]
		while not Players_upvr.LocalPlayer do
			Players_upvr.ChildAdded:wait()
		end
		local LocalPlayer = Players_upvr.LocalPlayer
		TextLabel_upvr.Text = LocalPlayer.Name
		LocalPlayer.CharacterAdded:connect(OnCharacterAdded_upvr)
		if LocalPlayer.Character then
			local Character_2 = LocalPlayer.Character
			local FindChildOfType_upvr_result1 = FindChildOfType_upvr(Character_2, "Humanoid")
			if FindChildOfType_upvr_result1 then
				RegisterHumanoid_upvr(FindChildOfType_upvr_result1)
			end
			if var41_upvw then
				var41_upvw:disconnect()
				var41_upvw = nil
			end
			var41_upvw = Character_2.ChildAdded:connect(OnCharacterChildAdded_upvr)
		end
	end)
end
local module_upvr = {
	ModuleName = "Healthbar";
	KeepVRTopbarOpen = false;
	VRIsExclusive = false;
	VRClosesNonExclusive = false;
}
local RobloxGui_upvr = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local CorePackages_upvr = game:GetService("CorePackages")
local StarterGui_upvr = game:GetService("StarterGui")
local var56_upvw
local var57_upvw
local var58_upvw
local function OnVREnabled(arg1) -- Line 195
	--[[ Upvalues[12]:
		[1]: UserInputService_upvr (readonly)
		[2]: RobloxGui_upvr (readonly)
		[3]: CorePackages_upvr (readonly)
		[4]: ImageLabel_upvr_2 (readonly)
		[5]: ImageLabel_upvr (readonly)
		[6]: TextLabel_upvr (readonly)
		[7]: StarterGui_upvr (readonly)
		[8]: var56_upvw (read and write)
		[9]: var57_upvw (read and write)
		[10]: var58_upvw (read and write)
		[11]: Frame_upvr (readonly)
		[12]: module_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [152] 114. Error Block 24 start (CF ANALYSIS FAILED)
	if var56_upvw then
		var56_upvw:disconnect()
		var56_upvw = nil
	end
	if var57_upvw then
		var57_upvw:disconnect()
		var57_upvw = nil
	end
	if var58_upvw then
		var58_upvw:disconnect()
		var58_upvw = nil
	end
	Frame_upvr.Parent = nil
	-- KONSTANTERROR: [152] 114. Error Block 24 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [180] 138. Error Block 18 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [180] 138. Error Block 18 end (CF ANALYSIS FAILED)
end
UserInputService_upvr.Changed:connect(OnVREnabled)
if UserInputService_upvr.VREnabled then
	OnVREnabled("VREnabled")
end
return module_upvr