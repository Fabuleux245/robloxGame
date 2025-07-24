-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:29
-- Luau version 6, Types version 3
-- Time taken: 0.000783 seconds

local any_CreateHumanoidModelFromDescription_result1 = game:GetService("Players"):CreateHumanoidModelFromDescription(Instance.new("HumanoidDescription"), Enum.HumanoidRigType.R15)
local class_Humanoid_upvr = any_CreateHumanoidModelFromDescription_result1:FindFirstChildOfClass("Humanoid")
assert(class_Humanoid_upvr, "Humanoid must exist in character model")
class_Humanoid_upvr:FindFirstChild("BodyTypeScale").Value = 0
class_Humanoid_upvr:FindFirstChild("BodyProportionScale").Value = 0
for _, v in pairs(any_CreateHumanoidModelFromDescription_result1:GetDescendants()) do
	if v:IsA("BasePart") then
		for _, v_2 in v:GetChildren() do
			if v_2:IsA("Attachment") then
				({})[v_2.Name] = class_Humanoid_upvr:GetBodyPartR15(v)
			end
		end
	end
end
local module_upvr = {}
return function(arg1, arg2) -- Line 28
	--[[ Upvalues[2]:
		[1]: class_Humanoid_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	return class_Humanoid_upvr:GetAccessoryHandleScale(arg1, module_upvr[arg2.Name])
end