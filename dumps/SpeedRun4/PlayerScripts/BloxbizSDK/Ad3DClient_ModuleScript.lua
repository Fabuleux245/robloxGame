-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:40:40
-- Luau version 6, Types version 3
-- Time taken: 0.004828 seconds

local module_upvr = {}
module_upvr.__index = module_upvr
local ReplicatedStorage = game:GetService("ReplicatedStorage")
function module_upvr.findPartName(arg1, arg2) -- Line 15
	local any_split_result1 = arg2:split('.')
	table.remove(any_split_result1, 1)
	local var11
	for _, v in ipairs(any_split_result1) do
		var11 = var11:FindFirstChild(v)
		if not var11 then break end
	end
	return var11
end
local ModelScale_upvr = require(script.Parent.Utils.ModelScale)
local Bloxbiz3DAdAssets_upvr = ReplicatedStorage:WaitForChild("Bloxbiz3DAdAssets")
local Utils_upvr = require(script.Parent.Utils)
local CharacterAd_upvr = require(script.CharacterAd)
function module_upvr.updateAd(arg1, arg2) -- Line 32
	--[[ Upvalues[4]:
		[1]: ModelScale_upvr (readonly)
		[2]: Bloxbiz3DAdAssets_upvr (readonly)
		[3]: Utils_upvr (readonly)
		[4]: CharacterAd_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if arg1.adModels then
		for _, v_2 in ipairs(arg1.adModels) do
			v_2:destroy()
		end
		arg1.adModelGroup:Destroy()
	end
	local clone = Bloxbiz3DAdAssets_upvr:FindFirstChild(tostring(arg2.bloxbiz_ad_id)):Clone()
	clone.Name = "AdModel"
	clone.Parent = arg1.adBoxModel
	Utils_upvr.appendToRaycastFilterList(clone)
	local any_GetBoundingBox_result1, _ = clone:GetBoundingBox()
	if not clone:FindFirstChild("AdCenterPart") then
		local Part = Instance.new("Part")
		Part.Name = "AdCenterPart"
		Part.Anchored = true
		Part.CanCollide = false
		Part.CanTouch = false
		Part.Transparency = 1
		Part.Size = Vector3.new(0.05000, 0.05000, 0.05000)
		Part.CFrame = any_GetBoundingBox_result1 * CFrame.Angles(0, math.pi, 0)
		Part.Parent = clone
	else
		Part.CFrame = CFrame.new(any_GetBoundingBox_result1.Position) * (Part.CFrame - Part.Position)
	end
	clone.PrimaryPart = Part
	arg1.adModelGroup = clone
	arg1.adModels = {}
	local scaleAdModel_result1 = (function(arg1_2) -- Line 41, Named "scaleAdModel"
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: ModelScale_upvr (copied, readonly)
		]]
		local Size = arg1.adBoxModel.AdBox.Size
		local any_GetExtentsSize_result1 = arg1_2:GetExtentsSize()
		local minimum = math.min(math.min(Size.X, arg2.ad_box_width_max) / any_GetExtentsSize_result1.X, math.min(Size.Y, arg2.ad_box_height_max) / any_GetExtentsSize_result1.Y, math.min(Size.Z, arg2.ad_box_depth_max) / any_GetExtentsSize_result1.Z)
		ModelScale_upvr(arg1_2, minimum)
		return minimum
	end)(clone)
	local CFrame = arg1.adBoxModel.AdBox.CFrame
	clone:SetPrimaryPartCFrame(CFrame.new(CFrame.X, CFrame.Y - arg1.adBoxModel.AdBox.Size.Y / 2 + clone:GetExtentsSize().Y / 2, CFrame.Z) * (CFrame - CFrame.Position))
	if arg2.bloxbiz_ad_id == -1 and not arg2.ad_model_data[1] then
	elseif arg2.ad_type == "Character" then
		require(script.CharacterAd.MetricsClient).init(arg1.adBoxModel, false, arg2)
		for _, v_4 in ipairs(arg2.ad_model_data) do
			table.insert(arg1.adModels, CharacterAd_upvr.new(arg1, arg1.adBoxModel, clone:FindFirstChild(v_4.ad_model_name), arg2, v_4, scaleAdModel_result1))
			local _
		end
	end
end
function module_upvr.destroy(arg1) -- Line 111
	arg1.instanceActive = false
	for _, v_3 in pairs(arg1.adModels) do
		v_3:destroy()
	end
	if arg1.adModelGroup then
		arg1.adModelGroup:Destroy()
	end
end
local Update3DAdEvent_upvr = ReplicatedStorage:WaitForChild("BloxbizRemotes"):WaitForChild("Update3DAdEvent")
function module_upvr.init(arg1, arg2) -- Line 123
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: Update3DAdEvent_upvr (readonly)
	]]
	local setmetatable_result1_upvr = setmetatable({}, module_upvr)
	setmetatable_result1_upvr.adModelBox = nil
	setmetatable_result1_upvr.adModels = nil
	setmetatable_result1_upvr.adModelGroup = nil
	setmetatable_result1_upvr.instanceActive = true
	setmetatable_result1_upvr.adBoxName = arg1
	task.spawn(function() -- Line 131
		--[[ Upvalues[3]:
			[1]: setmetatable_result1_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
		]]
		local var57
		while setmetatable_result1_upvr.instanceActive and not var57 do
			var57 = setmetatable_result1_upvr:findPartName(arg1)
			task.wait(1)
		end
		if var57 then
			setmetatable_result1_upvr.adBoxModel = var57.Parent
			setmetatable_result1_upvr:updateAd(arg2)
		end
	end)
	Update3DAdEvent_upvr.OnClientEvent:Connect(function(arg1_3, ...) -- Line 145
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		if arg1_3 == "Destruct" and ... == setmetatable_result1_upvr.adBoxName then
			setmetatable_result1_upvr:destroy()
		end
	end)
	return setmetatable_result1_upvr
end
return module_upvr