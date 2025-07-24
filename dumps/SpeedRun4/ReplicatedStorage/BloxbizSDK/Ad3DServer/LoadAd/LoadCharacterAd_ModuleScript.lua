-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:08:59
-- Luau version 6, Types version 3
-- Time taken: 0.002177 seconds

local Bloxbiz3DAdAssets_upvr = game:GetService("ReplicatedStorage"):WaitForChild("Bloxbiz3DAdAssets")
local RBLXSerialize_upvr = require(script.Parent.Parent.Parent.Utils.RBLXSerialize)
local Utils_upvr = require(script.Parent.Parent.Parent.Utils)
return function(arg1) -- Line 10
	--[[ Upvalues[3]:
		[1]: Bloxbiz3DAdAssets_upvr (readonly)
		[2]: RBLXSerialize_upvr (readonly)
		[3]: Utils_upvr (readonly)
	]]
	local SOME = Bloxbiz3DAdAssets_upvr:FindFirstChild(arg1.bloxbiz_ad_id)
	if not SOME then
		local pcall_result1, pcall_result2 = pcall(RBLXSerialize_upvr.Decode, arg1.ad_serialized_model)
		if pcall_result1 then
			pcall_result2.Name = arg1.bloxbiz_ad_id
			for _, v in pairs(pcall_result2:GetChildren()) do
				local CustomCameraPositionPart = v:FindFirstChild("CustomCameraPositionPart")
				if CustomCameraPositionPart then
					local CFrameValue = Instance.new("CFrameValue")
					CFrameValue.Name = "CustomCameraCf"
					CFrameValue.Value = pcall_result2.PrimaryPart.CFrame:ToObjectSpace(CustomCameraPositionPart.CFrame)
					CFrameValue.Parent = v
					CustomCameraPositionPart:Destroy()
				end
			end
			for _, v_2 in pairs(pcall_result2:GetDescendants()) do
				if v_2:IsA("BasePart") and string.find(v_2.Name, "CanCollide") then
					local string_find_result1, string_find_result2 = string.find(v_2.Name, "CanCollide")
					v_2.CanCollide = true
					v_2.Name = string.sub(v_2.Name, 1, string_find_result1 - 1)..string.sub(v_2.Name, string_find_result2 + 1, #v_2.Name)
				elseif v_2:IsA("BasePart") then
					v_2.CanCollide = false
				elseif v_2.Name == "Adornee" then
					v_2.Parent.Adornee = pcall_result2:FindFirstChild(v_2.Value, true)
				end
			end
			pcall_result2.Parent = Bloxbiz3DAdAssets_upvr
			return SOME
		end
		Utils_upvr.pprint("[SuperBiz] Error: "..pcall_result2)
	end
	return SOME
end