-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:39:36
-- Luau version 6, Types version 3
-- Time taken: 0.006629 seconds

local module_upvr = {}
module_upvr.__index = module_upvr
local ReplicatedStorage = game:GetService("ReplicatedStorage")
function module_upvr.findPartName(arg1, arg2) -- Line 14
	local any_split_result1 = arg2:split('.')
	table.remove(any_split_result1, 1)
	local var11
	for _, v in ipairs(any_split_result1) do
		var11 = var11:FindFirstChild(v)
		if not var11 then break end
	end
	return var11
end
function module_upvr.defineOuterPortalModel(arg1) -- Line 31
	local var12
	while arg1.instanceActive and not var12 do
		var12 = arg1:findPartName(arg1.adBoxName)
		task.wait(1)
	end
	if var12 then
		arg1.outerPortalModel = var12.Parent
	end
end
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local PortalTeleportRequestEvent_upvr = ReplicatedStorage:FindFirstChild("BloxbizRemotes"):WaitForChild("PortalTeleportRequestEvent")
function module_upvr.connectPortalTouchedEvent(arg1) -- Line 44
	--[[ Upvalues[2]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: PortalTeleportRequestEvent_upvr (readonly)
	]]
	local destination_place_id_upvr = arg1.adData.destination_place_id
	arg1.portalModel.TeleportPart.Touched:Connect(function(arg1_2) -- Line 47
		--[[ Upvalues[4]:
			[1]: LocalPlayer_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: PortalTeleportRequestEvent_upvr (copied, readonly)
			[4]: destination_place_id_upvr (readonly)
		]]
		local Character = LocalPlayer_upvr.Character
		if Character then
			if LocalPlayer_upvr.Character.Parent == nil then
				Character = false
			else
				Character = true
			end
		end
		if not arg1_2.Parent:FindFirstChild("HumanoidRootPart") or not Character or arg1.teleportStarted then
		else
			arg1.teleportStarted = true
			PortalTeleportRequestEvent_upvr:FireServer(destination_place_id_upvr, arg1.adData.bloxbiz_ad_id)
			task.delay(5, function() -- Line 58
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				arg1.teleportStarted = false
			end)
		end
	end)
end
function module_upvr.activateBillboard(arg1) -- Line 64
	local Billboard = arg1.portalModel.Billboard
	local clone = script.Parent.BillboardClient:Clone()
	clone.Parent = script.Parent
	require(clone):initAd(Billboard:GetFullName(), Billboard, {
		bloxbiz_ad_id = arg1.adData.bloxbiz_ad_id;
	})
end
local function _() -- Line 77, Named "invisiblePart"
	local Part = Instance.new("Part")
	Part.Anchored = true
	Part.CanCollide = false
	Part.Transparency = 1
	Part.CanQuery = false
	Part.Size = Vector3.new(1, 1, 1)
	Part.CanTouch = false
	return Part
end
function module_upvr.buildPortal(arg1) -- Line 89
	local var23 = require(script.CreatePortal)()
	var23.Name = "Portal"
	var23.Parent = arg1.outerPortalModel
	local Part_2 = Instance.new("Part")
	Part_2.Anchored = true
	Part_2.CanCollide = false
	Part_2.Transparency = 1
	Part_2.CanQuery = false
	Part_2.Size = Vector3.new(1, 1, 1)
	Part_2.CanTouch = false
	local var25 = Part_2
	var25.CFrame = var23:GetBoundingBox()
	var25.Parent = var23
	var23.PrimaryPart = var25
	var23:SetPrimaryPartCFrame(arg1.outerPortalModel:GetBoundingBox())
	local AdSurfaceGui = var23.Billboard.AdSurfaceGui
	AdSurfaceGui.HardcodedOverlay.Image = arg1.adData.ad_url[1]
	AdSurfaceGui.ImageLabel.Image = arg1.adData.ad_url[1]
	if arg1.adData.show_ad_disclaimer then
		AdSurfaceGui.DisclaimerHolder.AdDisclaimerLabel.Image = arg1.adData.ad_disclaimer_url
		AdSurfaceGui.DisclaimerHolder.AdDisclaimerLabel.Size = UDim2.new(arg1.adData.ad_disclaimer_scale_x, 0, arg1.adData.ad_disclaimer_scale_y, 0)
	end
	arg1.portalModel = var23
	arg1:activateBillboard()
	arg1:connectPortalTouchedEvent()
end
function module_upvr.updateAd(arg1) -- Line 121
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var29
	if var29 then
		var29 = arg1.adData.ad_url
		if var29 then
			if arg1.adData.ad_url[1] ~= "" then
				var29 = false
			else
				var29 = true
			end
		end
	end
	if arg1.adData.bloxbiz_ad_id == -1 then
	end
	if var29 then
	else
		if arg1.portalModel then
			arg1.portalModel:Destroy()
		end
		arg1:buildPortal()
	end
end
function module_upvr.destructActionRequested(arg1, arg2) -- Line 137
	if arg2 == arg1.adBoxName then
		arg1.instanceActive = false
		if arg1.portalModel then
			arg1.portalModel:Destroy()
		end
	end
end
local UpdatePortalEvent_upvr = ReplicatedStorage:WaitForChild("BloxbizRemotes"):WaitForChild("UpdatePortalEvent")
function module_upvr.connectToUpdatePortalEvent(arg1) -- Line 147
	--[[ Upvalues[1]:
		[1]: UpdatePortalEvent_upvr (readonly)
	]]
	UpdatePortalEvent_upvr.OnClientEvent:Connect(function(arg1_3, ...) -- Line 148
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1_3 == "Destruct" then
			arg1:destructActionRequested(...)
		end
	end)
end
function module_upvr.init(arg1, arg2) -- Line 155
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local setmetatable_result1_upvr = setmetatable({}, module_upvr)
	setmetatable_result1_upvr.instanceActive = true
	setmetatable_result1_upvr.outerPortalModel = nil
	setmetatable_result1_upvr.portalModel = nil
	setmetatable_result1_upvr.adBoxName = arg1
	setmetatable_result1_upvr.adData = nil
	setmetatable_result1_upvr.teleportStarted = false
	task.spawn(function() -- Line 166
		--[[ Upvalues[2]:
			[1]: setmetatable_result1_upvr (readonly)
			[2]: arg2 (readonly)
		]]
		setmetatable_result1_upvr:defineOuterPortalModel()
		local var34
		if setmetatable_result1_upvr.outerPortalModel == nil then
			var34 = false
		else
			var34 = true
		end
		if var34 then
			setmetatable_result1_upvr.adData = arg2
			setmetatable_result1_upvr:updateAd()
		end
	end)
	setmetatable_result1_upvr:connectToUpdatePortalEvent()
	return setmetatable_result1_upvr
end
return module_upvr