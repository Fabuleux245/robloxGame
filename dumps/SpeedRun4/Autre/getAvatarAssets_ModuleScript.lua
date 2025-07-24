-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:59:16
-- Luau version 6, Types version 3
-- Time taken: 0.002486 seconds

local Players_upvr = game:GetService("Players")
local function _() -- Line 9, Named "getLocalPlayerCharacter"
	--[[ Upvalues[1]:
		[1]: Players_upvr (readonly)
	]]
	local LocalPlayer = Players_upvr.LocalPlayer
	if not LocalPlayer then
		return nil
	end
	return LocalPlayer.Character
end
local Constants_upvr = require(script.Parent.Parent.Constants)
return function(arg1) -- Line 18
	--[[ Upvalues[2]:
		[1]: Players_upvr (readonly)
		[2]: Constants_upvr (readonly)
	]]
	local module_2 = {}
	local tbl = {}
	local var40
	if not var40 then
		local LocalPlayer_3 = Players_upvr.LocalPlayer
		if not LocalPlayer_3 then
			var40 = nil
		else
			var40 = LocalPlayer_3.Character
		end
	end
	if not var40 then
		return module_2
	end
	local class_Humanoid = var40:FindFirstChildOfClass("Humanoid")
	if not class_Humanoid then
		return module_2
	end
	local class_HumanoidDescription = class_Humanoid:FindFirstChildOfClass("HumanoidDescription")
	if not class_HumanoidDescription then
		return module_2
	end
	for i, v in Constants_upvr.AssetTypeIdStringToHumanoidDescriptionProp do
		if Constants_upvr.AssetTypeIdToAccessoryTypeEnum[i] == nil then
			for _, v_2 in string.split(class_HumanoidDescription[v] or "") do
				local tonumber_result1 = tonumber(v_2)
				if tonumber_result1 and tonumber_result1 ~= 0 and not tbl[tonumber_result1] then
					tbl[tonumber_result1] = true
					table.insert(module_2, tonumber_result1)
				end
			end
		end
	end
	for _, v_3 in class_HumanoidDescription:GetAccessories(true), nil do
		if v_3.AssetId and v_3.AssetId ~= 0 then
			if not tbl[v_3.AssetId] then
				tbl[v_3.AssetId] = true
				table.insert(module_2, v_3.AssetId)
			end
		end
	end
	return module_2
end