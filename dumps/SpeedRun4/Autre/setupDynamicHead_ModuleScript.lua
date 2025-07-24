-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:44
-- Luau version 6, Types version 3
-- Time taken: 0.002104 seconds

local tbl_upvr = {
	LeftArm = 11714033534;
	LeftLeg = 11714035598;
	RightArm = 11714037276;
	RightLeg = 11714039415;
	Torso = 11714041015;
}
local tbl_upvr_2 = {"Head", "Torso", "LeftLeg", "RightLeg", "RightArm", "LeftArm"}
local Color3_fromRGB_result1_upvr = Color3.fromRGB(163, 162, 165)
local Players_upvr = game:GetService("Players")
local function getDefaultCharacter_upvr() -- Line 22, Named "getDefaultCharacter"
	--[[ Upvalues[4]:
		[1]: tbl_upvr_2 (readonly)
		[2]: Color3_fromRGB_result1_upvr (readonly)
		[3]: Players_upvr (readonly)
		[4]: tbl_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 30 start (CF ANALYSIS FAILED)
	local HumanoidDescription = Instance.new("HumanoidDescription")
	local var14
	for _, v in tbl_upvr_2 do
		HumanoidDescription[v..nil] = Color3_fromRGB_result1_upvr
	end
	local any_CreateHumanoidModelFromDescription_result1 = Players_upvr:CreateHumanoidModelFromDescription(HumanoidDescription, Enum.HumanoidRigType.R15)
	any_CreateHumanoidModelFromDescription_result1:FindFirstChild("Humanoid").DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
	local function _(arg1, arg2) -- Line 31, Named "getObjects"
		return game:GetObjectsAllOrNone("https://assetdelivery.roblox.com/v1/asset/?id="..tostring(arg2).."&expectedAssetType="..arg1)
	end
	local function _(arg1, arg2) -- Line 40, Named "getInstance"
		for _, v_2 in pairs(arg1) do
			if v_2.Name == arg2 then
				return v_2
			end
		end
		return nil
	end
	-- KONSTANTERROR: [0] 1. Error Block 30 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [69] 56. Error Block 34 start (CF ANALYSIS FAILED)
	local var21
	if not var21 then
		return nil
	end
	for _, v_3 in var21:GetChildren() do
		local class_SurfaceAppearance = v_3:FindFirstChildWhichIsA("SurfaceAppearance")
		if class_SurfaceAppearance then
			class_SurfaceAppearance:Destroy()
		end
		local SOME = any_CreateHumanoidModelFromDescription_result1:FindFirstChild(v_3.Name)
		if SOME then
			SOME:Destroy()
		end
		v_3.Parent = any_CreateHumanoidModelFromDescription_result1
	end
	-- KONSTANTERROR: [69] 56. Error Block 34 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [36] 30. Error Block 27 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [98.10]
	if not nil then
	end
	-- KONSTANTERROR: [36] 30. Error Block 27 end (CF ANALYSIS FAILED)
end
local function _(arg1, arg2) -- Line 80, Named "swapHead"
	arg1:FindFirstChild("Head"):Destroy()
	arg2.Parent = arg1
	arg1:FindFirstChild("Humanoid"):BuildRigFromAttachments()
end
local function hideNotHead_upvr(arg1) -- Line 87, Named "hideNotHead"
	for _, v_4 in arg1:GetChildren() do
		if v_4:IsA("MeshPart") and v_4.Name ~= "Head" then
			v_4.Transparency = 1
		end
	end
end
return function(arg1) -- Line 95
	--[[ Upvalues[2]:
		[1]: getDefaultCharacter_upvr (readonly)
		[2]: hideNotHead_upvr (readonly)
	]]
	local getDefaultCharacter_result1 = getDefaultCharacter_upvr()
	if not getDefaultCharacter_result1 then
		return nil
	end
	getDefaultCharacter_result1:FindFirstChild("Head"):Destroy()
	arg1.Parent = getDefaultCharacter_result1
	getDefaultCharacter_result1:FindFirstChild("Humanoid"):BuildRigFromAttachments()
	hideNotHead_upvr(getDefaultCharacter_result1)
	return getDefaultCharacter_result1
end