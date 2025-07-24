-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:42:02
-- Luau version 6, Types version 3
-- Time taken: 0.024928 seconds

local Players_upvr = game:GetService("Players")
local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local BloxbizRemotes = ReplicatedStorage_upvr:WaitForChild("BloxbizRemotes")
local CatalogOnApplyOutfit_upvr = BloxbizRemotes:WaitForChild("CatalogOnApplyOutfit")
local CatalogOnApplyToRealHumanoid_upvr = BloxbizRemotes:WaitForChild("CatalogOnApplyToRealHumanoid")
local Parent = script.Parent.Parent.Parent
local Utils = Parent:WaitForChild("Utils")
local var7_2_upvr = require(Utils)
local LocalPlayer_upvr = Players_upvr.LocalPlayer
local var10_upvw
local BindableEvent_upvr = Instance.new("BindableEvent")
local any_read_result1_upvr = require(Parent:WaitForChild("ConfigReader")):read("CatalogPersistentWear")
local tbl_4_upvr = {
	Pants = 855781078;
	Shirt = 855766176;
}
local module_8_upvr = {Enum.AccessoryType.Shirt, Enum.AccessoryType.Jacket, Enum.AccessoryType.TShirt, Enum.AccessoryType.Sweater}
local module_7_upvr = {Enum.AccessoryType.Pants, Enum.AccessoryType.Shorts, Enum.AccessoryType.DressSkirt}
local tbl_9_upvr = {-- : First try: K:0: attempt to index nil with 't'

local tbl_5_upvr = {-- : First try: K:0: attempt to index nil with 't'

local tbl_7_upvr = {"HeadColor", "LeftArmColor", "LeftLegColor", "RightArmColor", "RightLegColor", "TorsoColor"}
local tbl_2_upvr = {Enum.AccessoryType.Unknown, -- : First try: K:0: attempt to index nil with 't'

local function _(arg1) -- Line 225, Named "GetItemProperty"
	--[[ Upvalues[1]:
		[1]: tbl_9_upvr (readonly)
	]]
	return tbl_9_upvr[arg1]
end
local function _(arg1) -- Line 229, Named "GetAccessoryType"
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	return tbl_2_upvr[arg1]
end
local function _(arg1) -- Line 233, Named "IsValidEmote"
	--[[ Upvalues[1]:
		[1]: tbl_5_upvr (readonly)
	]]
	local var24 = tbl_5_upvr[arg1]
	if not var24 then
		if arg1 ~= 61 then
			var24 = false
		else
			var24 = true
		end
	end
	return var24
end
local function _(arg1) -- Line 237, Named "GetCamera"
	local CurrentCamera = arg1.CurrentCamera
	if not CurrentCamera then
		CurrentCamera = Instance.new("Camera")
		arg1.CurrentCamera = CurrentCamera
	end
	return CurrentCamera
end
local function _(arg1) -- Line 247, Named "ReplicateAssets"
	--[[ Upvalues[2]:
		[1]: any_read_result1_upvr (readonly)
		[2]: CatalogOnApplyToRealHumanoid_upvr (readonly)
	]]
	if not any_read_result1_upvr then
	else
		CatalogOnApplyToRealHumanoid_upvr:FireServer(arg1)
	end
end
local var26_upvw
local module_11_upvr = {
	AccessoryTypes = tbl_2_upvr;
}
local function _(arg1) -- Line 262, Named "getViewportComponents"
	if not arg1 then
		return nil, nil, nil
	end
	local WorldModel_4 = arg1:FindFirstChild("WorldModel")
	return WorldModel_4, WorldModel_4:FindFirstChild("PlayerModel"), WorldModel_4:FindFirstChild("Pivot")
end
local TweenService_upvr = game:GetService("TweenService")
function module_11_upvr.UpdateViewportRender(arg1, arg2, arg3) -- Line 274
	--[[ Upvalues[1]:
		[1]: TweenService_upvr (readonly)
	]]
	if not arg1 then
		local _
		local _
	else
		local WorldModel = arg1:FindFirstChild("WorldModel")
	end
	if not WorldModel or not WorldModel:FindFirstChild("PlayerModel") then
	else
		if not WorldModel:FindFirstChild("Pivot") or not WorldModel:FindFirstChild("Pivot"):GetPivot() then
		end
		local var33 = WorldModel:FindFirstChild("PlayerModel"):GetPivot() - Vector3.new(0, 0.33333, 0)
		local any_GetExtentsSize_result1 = WorldModel:FindFirstChild("PlayerModel"):GetExtentsSize()
		local CurrentCamera_2 = arg1.CurrentCamera
		if not CurrentCamera_2 then
			CurrentCamera_2 = Instance.new("Camera")
			arg1.CurrentCamera = CurrentCamera_2
		end
		local var36 = CurrentCamera_2
		local var37 = math.max(any_GetExtentsSize_result1.X, any_GetExtentsSize_result1.Y) / 2
		if arg2 then
			var37 = 1
		else
			var37 = 1.05
		end
		local var38 = math.clamp(var37 / math.tan(math.rad(var36.FieldOfView) / 2) * var37, 7, 11) / (arg3 or 1)
		if arg2 then
			local cameraOffset = cameraOffset
			if not cameraOffset then
				cameraOffset = Vector3.new()
			end
			var36.CFrame = (var33 + var33.LookVector * var38) * CFrame.Angles(0, math.pi, 0) + cameraOffset
			return
		end
		local tbl_14 = {}
		local cameraOffset_2 = cameraOffset
		if not cameraOffset_2 then
			cameraOffset_2 = Vector3.new()
		end
		tbl_14.CFrame = (var33 + var33.LookVector * var38) * CFrame.Angles(0, math.pi, 0) + cameraOffset_2
		TweenService_upvr:Create(var36, TweenInfo.new(0.2), tbl_14):Play()
	end
end
function module_11_upvr.GetIdleAnimationId(arg1) -- Line 300
	local Animate_2 = arg1:FindFirstChild("Animate")
	local var43
	if Animate_2 then
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var43 = Animate_2:FindFirstChild("idle"):FindFirstChild("Animation1")
			return var43
		end
		if not Animate_2:FindFirstChild("idle") or not INLINED() then
			var43 = nil
		end
		if var43 then
			return var43.AnimationId
		end
	end
end
function module_11_upvr.GetAnimationTrack(arg1, arg2) -- Line 313
	local Animator_5_upvr = arg1:FindFirstChild("Humanoid"):FindFirstChild("Animator")
	local var46_upvw
	if Animator_5_upvr then
		if type(var46_upvw) == "number" then
			var46_upvw = Instance.new("Animation")
			var46_upvw.AnimationId = string.format("rbxassetid://%s", var46_upvw)
		end
		arg1.Parent = workspace
		local pcall_result1, pcall_result2 = pcall(function() -- Line 330
			--[[ Upvalues[2]:
				[1]: Animator_5_upvr (readonly)
				[2]: var46_upvw (read and write)
			]]
			return Animator_5_upvr:LoadAnimation(var46_upvw)
		end)
		if pcall_result1 then
			arg1.Parent = arg1.Parent
			pcall_result2.Looped = true
			pcall_result2.Priority = Enum.AnimationPriority.Action4
			return pcall_result2
		end
	end
end
local module_9_upvr = require(Utils:WaitForChild("Fusion"))
function module_11_upvr.RenderInViewport(arg1, arg2, arg3, arg4, arg5) -- Line 344
	--[[ Upvalues[2]:
		[1]: module_9_upvr (readonly)
		[2]: module_11_upvr (readonly)
	]]
	if arg4 == nil then
	end
	local WorldModel_2_upvr = arg2:FindFirstChild("WorldModel")
	if not WorldModel_2_upvr then
	else
		if WorldModel_2_upvr:FindFirstChild("PlayerModel") then
			WorldModel_2_upvr.PlayerModel:Destroy()
		end
		local Animate = arg1:FindFirstChild("Animate")
		local var64_upvw
		if Animate then
			Animate.Disabled = true
			local var65_upvr
			if not arg3 then
				local function INLINED_3() -- Internal function, doesn't exist in bytecode
					var65_upvr = Animate:FindFirstChild("idle"):FindFirstChild("Animation1")
					return var65_upvr
				end
				if not Animate:FindFirstChild("idle") or not INLINED_3() then
					var65_upvr = nil
				end
				if var65_upvr then
					local Animator_2_upvr = arg1:FindFirstChild("Humanoid"):FindFirstChild("Animator")
					if Animator_2_upvr then
						if arg5 then
							local var69_upvw
							var64_upvw = module_9_upvr.Observer(arg5):onChange(function() -- Line 385
								--[[ Upvalues[6]:
									[1]: arg5 (readonly)
									[2]: var69_upvw (read and write)
									[3]: arg1 (readonly)
									[4]: Animator_2_upvr (readonly)
									[5]: var65_upvr (readonly)
									[6]: WorldModel_2_upvr (readonly)
								]]
								if arg5:get() then
									if not var69_upvw then
										arg1.Parent = workspace
										var69_upvw = Animator_2_upvr:LoadAnimation(var65_upvr)
										arg1.Parent = WorldModel_2_upvr
										var69_upvw.Looped = true
									end
									var69_upvw:Play()
								else
									var69_upvw:Stop()
								end
							end)
						end
					end
				end
			end
		end
		arg1.Parent = WorldModel_2_upvr
		arg1.Destroying:Connect(function() -- Line 409
			--[[ Upvalues[1]:
				[1]: var64_upvw (read and write)
			]]
			if var64_upvw then
				var64_upvw:Disconnect()
			end
		end)
		if WorldModel_2_upvr:FindFirstChild("Pivot") then
			WorldModel_2_upvr:FindFirstChild("Pivot"):Destroy()
		end
		local clone = arg1.PrimaryPart:Clone()
		clone.Parent = WorldModel_2_upvr
		clone.Name = "Pivot"
		clone.Anchored = true
		clone.Transparency = 1
		clone:ClearAllChildren()
		local CurrentCamera_3 = arg2.CurrentCamera
		if not CurrentCamera_3 then
			Animator_2_upvr = Instance.new("Camera")
			CurrentCamera_3 = Animator_2_upvr
			arg2.CurrentCamera = CurrentCamera_3
		end
		CurrentCamera_3.Parent = arg2
		Animator_2_upvr = module_11_upvr
		Animator_2_upvr = arg2
		Animator_2_upvr.UpdateViewportRender(Animator_2_upvr, arg3)
	end
end
local tbl_11_upvr = {}
local MarketplaceService_upvr = game:GetService("MarketplaceService")
function module_11_upvr.GetItemDataTable(arg1, arg2, arg3) -- Line 434
	--[[ Upvalues[3]:
		[1]: tbl_11_upvr (readonly)
		[2]: var7_2_upvr (readonly)
		[3]: MarketplaceService_upvr (readonly)
	]]
	if not arg3 and tbl_11_upvr[arg1] then
		return tbl_11_upvr[arg1]
	end
	local function var75() -- Line 443
		--[[ Upvalues[2]:
			[1]: MarketplaceService_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return MarketplaceService_upvr:GetProductInfo(tonumber(arg1))
	end
	local any_callWithRetry_result1 = var7_2_upvr.callWithRetry(var75, arg2 or 3)
	if not any_callWithRetry_result1 then return end
	var75 = 0
	local var77 = var75
	if any_callWithRetry_result1.IsLimitedUnique then
		var77 = 1
	elseif any_callWithRetry_result1.IsLimited then
		var77 = 2
	end
	local module_6 = {
		Name = any_callWithRetry_result1.Name;
		Price = any_callWithRetry_result1.PriceInRobux;
		AssetId = tonumber(arg1);
		BundleId = any_callWithRetry_result1.BundleId;
		AssetType = any_callWithRetry_result1.AssetTypeId;
		IsForSale = any_callWithRetry_result1.IsForSale;
		IsLimited = var77;
		Available = any_callWithRetry_result1.Remaining;
		Purchased = any_callWithRetry_result1.Sales;
	}
	tbl_11_upvr[arg1] = module_6
	return module_6
end
function module_11_upvr.BuildItemData(arg1, arg2) -- Line 476
	--[[ Upvalues[1]:
		[1]: module_11_upvr (readonly)
	]]
	local var79
	if not arg1.AssetType then return end
	local var80 = 0
	if arg1.ItemRestrictions then
		var79 = "LimitedUnique"
		local function INLINED_4() -- Internal function, doesn't exist in bytecode
			var79 = "Collectible"
			return table.find(arg1.ItemRestrictions, var79)
		end
		if table.find(arg1.ItemRestrictions, var79) or INLINED_4() then
			var80 = 1
		else
			var79 = "Limited"
			if table.find(arg1.ItemRestrictions, var79) then
				var80 = 2
			end
		end
	end
	local AssetType = arg1.AssetType
	var79 = AssetType
	if type(var79) == "string" then
		var79 = module_11_upvr
		var79 = AssetType
		AssetType = var79.GetAssetTypeIdFromString(var79, arg2)
	end
	local module_2 = {}
	var79 = arg1.Name
	module_2.Name = var79
	var79 = arg1.LowestPrice
	if not var79 then
		var79 = arg1.Price
	end
	module_2.Price = var79
	if not arg1.Id then
	end
	module_2.AssetId = arg1.AssetId
	module_2.AssetType = AssetType
	if arg1.PriceStatus == "Off sale" then
	else
	end
	module_2.IsForSale = true
	module_2.IsLimited = var80
	module_2.Available = arg1.UnitsAvailableForConsumption
	module_2.Purchased = arg1.PurchaseCount
	return module_2
end
function module_11_upvr.BuildBundleData(arg1) -- Line 510
	if not arg1.BundleType then return end
	local module_10 = {
		Name = arg1.Name;
	}
	local LowestPrice = arg1.LowestPrice
	if not LowestPrice then
		LowestPrice = arg1.Price
	end
	module_10.Price = LowestPrice
	module_10.BundleId = arg1.Id
	module_10.BundleType = arg1.BundleType
	return module_10
end
function module_11_upvr.GetCurrentOutfit(arg1, arg2, arg3) -- Line 523
	--[[ Upvalues[5]:
		[1]: var10_upvw (read and write)
		[2]: BindableEvent_upvr (readonly)
		[3]: module_11_upvr (readonly)
		[4]: tbl_9_upvr (readonly)
		[5]: tbl_5_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 35 start (CF ANALYSIS FAILED)
	if not arg3 then
		local var85 = arg2
		if not var85 then
			var85 = var10_upvw
		end
		if not var85 then
			BindableEvent_upvr.Event:Wait()
			local var86 = var10_upvw
		end
	end
	if not var86 or not var86:GetAppliedDescription() then
		local var87_upvr = arg3
	end
	local tbl_6_upvr = {}
	local tbl_12_upvr = {}
	local var90_upvw = false
	local var91_upvw = false
	local var92_upvw = false
	local any_GetAccessories_result1_2_upvr = var87_upvr:GetAccessories(true)
	task.spawn(function() -- Line 547
		--[[ Upvalues[6]:
			[1]: any_GetAccessories_result1_2_upvr (readonly)
			[2]: tbl_12_upvr (readonly)
			[3]: arg1 (readonly)
			[4]: tbl_6_upvr (readonly)
			[5]: module_11_upvr (copied, readonly)
			[6]: var90_upvw (read and write)
		]]
		for _, v in pairs(any_GetAccessories_result1_2_upvr) do
			local AssetId_2 = v.AssetId
			if AssetId_2 ~= 0 then
				table.insert(tbl_12_upvr, AssetId_2)
				if not arg1[AssetId_2] then
					table.insert(tbl_6_upvr, module_11_upvr.GetItemDataTable(AssetId_2))
				end
			end
		end
		var90_upvw = true
	end)
	task.spawn(function() -- Line 566
		--[[ Upvalues[7]:
			[1]: tbl_9_upvr (copied, readonly)
			[2]: var87_upvr (readonly)
			[3]: tbl_12_upvr (readonly)
			[4]: arg1 (readonly)
			[5]: tbl_6_upvr (readonly)
			[6]: module_11_upvr (copied, readonly)
			[7]: var92_upvw (read and write)
		]]
		for _, v_2 in pairs(tbl_9_upvr) do
			local var119 = var87_upvr[v_2]
			if var119 ~= 0 then
				table.insert(tbl_12_upvr, var119)
				if not arg1[var119] then
					table.insert(tbl_6_upvr, module_11_upvr.GetItemDataTable(var119))
				end
			end
		end
		var92_upvw = true
	end)
	task.spawn(function() -- Line 585
		--[[ Upvalues[7]:
			[1]: tbl_5_upvr (copied, readonly)
			[2]: var87_upvr (readonly)
			[3]: tbl_12_upvr (readonly)
			[4]: arg1 (readonly)
			[5]: tbl_6_upvr (readonly)
			[6]: module_11_upvr (copied, readonly)
			[7]: var91_upvw (read and write)
		]]
		for _, v_3 in pairs(tbl_5_upvr) do
			local var126 = var87_upvr[v_3]
			if var126 ~= 0 then
				table.insert(tbl_12_upvr, var126)
				if not arg1[var126] then
					table.insert(tbl_6_upvr, module_11_upvr.GetItemDataTable(var126))
				end
			end
		end
		var91_upvw = true
	end)
	repeat
		task.wait()
	until not var90_upvw or not var91_upvw or var92_upvw
	local _, _, _ = pairs(arg1)
	-- KONSTANTERROR: [0] 1. Error Block 35 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [76] 65. Error Block 17 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [76] 65. Error Block 17 end (CF ANALYSIS FAILED)
end
local AssetService_upvr = game:GetService("AssetService")
local any_new_result1_upvr = require(Utils:WaitForChild("FunctionQueue")).new(60, 100)
function module_11_upvr.GetHumDescFromBundle(arg1, arg2, arg3) -- Line 625
	--[[ Upvalues[4]:
		[1]: AssetService_upvr (readonly)
		[2]: any_new_result1_upvr (readonly)
		[3]: module_11_upvr (readonly)
		[4]: Players_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 45 start (CF ANALYSIS FAILED)
	local any_GetBundleDetailsAsync_result1_2 = AssetService_upvr:GetBundleDetailsAsync(arg2.BundleId)
	if arg2.BundleType == 2 then
		for _, v_4_upvr in any_GetBundleDetailsAsync_result1_2.Items do
			if v_4_upvr.Type ~= "UserOutfit" then
				arg1[v_4_upvr.Name:match("%s(.+)").."Animation":gsub(' ', "")] = v_4_upvr.Id
				if arg3 then
					local module_3_upvr = {}
					any_new_result1_upvr:Add(function() -- Line 644
						--[[ Upvalues[3]:
							[1]: module_3_upvr (readonly)
							[2]: module_11_upvr (copied, readonly)
							[3]: v_4_upvr (readonly)
						]]
						table.insert(module_3_upvr, module_11_upvr.GetItemDataTable(v_4_upvr.Id))
					end):Wait()
				end
			end
		end
		return arg1, module_3_upvr
	end
	module_3_upvr = false
	-- KONSTANTERROR: [0] 1. Error Block 45 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [80] 59. Error Block 15 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [80] 59. Error Block 15 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [62] 47. Error Block 9 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [62] 47. Error Block 9 end (CF ANALYSIS FAILED)
end
function module_11_upvr.IsValidAssetType(arg1) -- Line 693
	--[[ Upvalues[2]:
		[1]: tbl_9_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
	]]
	if tbl_9_upvr[arg1] then
		return true
	end
	if tbl_2_upvr[arg1] then
		return true
	end
	return false
end
function module_11_upvr.GetAssetTypeIdFromString(arg1, arg2) -- Line 705
	--[[ Upvalues[3]:
		[1]: tbl_2_upvr (readonly)
		[2]: tbl_9_upvr (readonly)
		[3]: var7_2_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 2. Error Block 38 start (CF ANALYSIS FAILED)
	if not arg2 or not Enum.AccessoryType.TShirt then
	end
	do
		return 2
	end
	-- KONSTANTERROR: [2] 2. Error Block 38 end (CF ANALYSIS FAILED)
end
local var142_upvw
function module_11_upvr.GetRealHumDesc() -- Line 735
	--[[ Upvalues[4]:
		[1]: var142_upvw (read and write)
		[2]: var7_2_upvr (readonly)
		[3]: Players_upvr (readonly)
		[4]: LocalPlayer_upvr (readonly)
	]]
	var142_upvw = var7_2_upvr.callWithRetry(function() -- Line 736
		--[[ Upvalues[2]:
			[1]: Players_upvr (copied, readonly)
			[2]: LocalPlayer_upvr (copied, readonly)
		]]
		return Players_upvr:GetHumanoidDescriptionFromUserId(math.max(LocalPlayer_upvr.UserId, 1))
	end, 5)
	return var142_upvw
end
function module_11_upvr.OutfitToHumDesc(arg1, arg2) -- Line 743
	--[[ Upvalues[4]:
		[1]: tbl_5_upvr (readonly)
		[2]: tbl_9_upvr (readonly)
		[3]: tbl_2_upvr (readonly)
		[4]: var7_2_upvr (readonly)
	]]
	if not arg2 or not arg2:Clone() then
		local HumanoidDescription = Instance.new("HumanoidDescription")
	end
	HumanoidDescription.Shirt = nil
	HumanoidDescription.Pants = nil
	HumanoidDescription.Head = nil
	HumanoidDescription.LeftArm = nil
	HumanoidDescription.RightArm = nil
	HumanoidDescription.LeftLeg = nil
	HumanoidDescription.RightLeg = nil
	HumanoidDescription.Torso = nil
	for i_5, v_5 in pairs(arg1.BodyColors) do
		HumanoidDescription[i_5] = v_5
	end
	if not arg2 or not arg2:GetAccessories(true) then
	end
	local var159
	for i_6, v_6 in pairs(arg1) do
		if i_6 ~= "BodyColors" then
			local AssetId_3_upvr = v_6.AssetId
			local AssetType_3 = v_6.AssetType
			local tonumber_result1_4 = tonumber(AssetType_3)
			var159 = tbl_5_upvr[tonumber_result1_4]
			if not var159 then
				if tonumber_result1_4 ~= 61 then
					var159 = false
				else
					var159 = true
				end
			end
			local var163 = tbl_9_upvr[tonumber(AssetType_3)]
			local var164 = tbl_2_upvr[tonumber(AssetType_3)]
			if var163 then
				HumanoidDescription[var163] = AssetId_3_upvr
			elseif var164 then
				local any_search_result1 = var7_2_upvr.search({}, function(arg1_2) -- Line 774
					--[[ Upvalues[1]:
						[1]: AssetId_3_upvr (readonly)
					]]
					local var166
					if arg1_2.AssetId ~= AssetId_3_upvr then
						var166 = false
					else
						var166 = true
					end
					return var166
				end)
				if not any_search_result1 then
					any_search_result1 = {
						AccessoryType = var164;
						AssetId = AssetId_3_upvr;
					}
				end
				table.insert({}, any_search_result1)
			elseif var159 then
			else
				var7_2_upvr.pprint("[SuperBiz] Asset is not an accessory, emote or a valid HumDesc property")
				var7_2_upvr.pprint(AssetType_3)
			end
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	HumanoidDescription:SetAccessories({}, true)
	return HumanoidDescription
end
function module_11_upvr.GetModel(arg1) -- Line 797
	--[[ Upvalues[2]:
		[1]: module_11_upvr (readonly)
		[2]: Players_upvr (readonly)
	]]
	local var169 = arg1
	if not var169 then
		var169 = module_11_upvr.GetRealHumDesc()
	end
	local any_CreateHumanoidModelFromDescription_result1 = Players_upvr:CreateHumanoidModelFromDescription(var169, Enum.HumanoidRigType.R15)
	local Humanoid = any_CreateHumanoidModelFromDescription_result1:FindFirstChild("Humanoid")
	if Humanoid then
		Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
	end
	any_CreateHumanoidModelFromDescription_result1.Name = "PlayerModel"
	return any_CreateHumanoidModelFromDescription_result1
end
local module_4_upvr = require(Parent:WaitForChild("CatalogClient").Libraries:WaitForChild("BodyScaleValues"))
function module_11_upvr.GetCurrentBodyScales(arg1) -- Line 811
	--[[ Upvalues[1]:
		[1]: module_4_upvr (readonly)
	]]
	local module_5 = {}
	for i_7, v_7 in pairs(module_4_upvr) do
		local var181 = arg1[i_7]
		module_5[i_7] = {
			Percent = math.ceil(var181 * 100);
			DragBarSize = (var181 - v_7.Min) / (v_7.Max - v_7.Min);
		}
	end
	return module_5
end
function module_11_upvr.SetBodyScale(arg1, arg2, arg3) -- Line 834
	arg1[arg2.."Scale"] = arg3
	return arg3
end
function module_11_upvr.GetCurrentBodyColors(arg1) -- Line 841
	--[[ Upvalues[1]:
		[1]: tbl_7_upvr (readonly)
	]]
	local module = {}
	for _, v_8 in tbl_7_upvr do
		module[v_8] = arg1[v_8]
	end
	return module
end
function module_11_upvr.SetBodyColor(arg1, arg2) -- Line 850
	--[[ Upvalues[3]:
		[1]: tbl_7_upvr (readonly)
		[2]: any_read_result1_upvr (readonly)
		[3]: CatalogOnApplyToRealHumanoid_upvr (readonly)
	]]
	for _, v_9 in tbl_7_upvr do
		arg1[v_9] = arg2
	end
	local tbl_13 = {}
	tbl_13.BodyColor = arg2
	if not any_read_result1_upvr then
	else
		CatalogOnApplyToRealHumanoid_upvr:FireServer(tbl_13)
	end
end
function module_11_upvr.SetBodyColors(arg1, arg2, arg3) -- Line 858
	--[[ Upvalues[2]:
		[1]: any_read_result1_upvr (readonly)
		[2]: CatalogOnApplyToRealHumanoid_upvr (readonly)
	]]
	if not arg2 then
	else
		for i_11, v_11 in arg2 do
			arg1[i_11] = v_11
		end
		if not arg3 then
			local tbl = {}
			tbl.BodyColor = arg2
			if not any_read_result1_upvr then return end
			i_11 = tbl
			CatalogOnApplyToRealHumanoid_upvr:FireServer(i_11)
		end
	end
end
function module_11_upvr.TryItem(arg1, arg2, arg3, arg4) -- Line 876
	--[[ Upvalues[2]:
		[1]: any_read_result1_upvr (readonly)
		[2]: CatalogOnApplyToRealHumanoid_upvr (readonly)
	]]
	local tonumber_result1 = tonumber(arg2)
	arg1[arg3] = tonumber_result1
	if not arg4 then
		local tbl_8 = {}
		tbl_8.Property = arg3
		tbl_8.AssetId = tonumber_result1
		if not any_read_result1_upvr then
			return arg1[arg3]
		end
		CatalogOnApplyToRealHumanoid_upvr:FireServer(tbl_8)
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return arg1[arg3]
end
function module_11_upvr.RemoveItem(arg1, arg2) -- Line 894
	--[[ Upvalues[6]:
		[1]: var7_2_upvr (readonly)
		[2]: module_7_upvr (readonly)
		[3]: tbl_4_upvr (readonly)
		[4]: any_read_result1_upvr (readonly)
		[5]: CatalogOnApplyToRealHumanoid_upvr (readonly)
		[6]: module_8_upvr (readonly)
	]]
	local var196 = false
	arg1[arg2] = 0
	if arg2 == "Pants" then
		if not var7_2_upvr.search(arg1:GetAccessories(true), function(arg1_3) -- Line 901
			--[[ Upvalues[1]:
				[1]: module_7_upvr (copied, readonly)
			]]
			return table.find(module_7_upvr, arg1_3.AccessoryType)
		end) then
			var196 = true
			arg1.Pants = tbl_4_upvr.Pants
			if not any_read_result1_upvr then
			else
				CatalogOnApplyToRealHumanoid_upvr:FireServer({
					Property = "Pants";
					AssetId = tbl_4_upvr.Pants;
				})
			end
			-- KONSTANTWARNING: GOTO [80] #62
		end
	elseif arg2 == "Shirt" then
		local var199 = true
		if 0 >= arg1.Shirt then
			var199 = var7_2_upvr.search
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			var199 = var199(arg1:GetAccessories(true), function(arg1_4) -- Line 911
				--[[ Upvalues[1]:
					[1]: module_8_upvr (copied, readonly)
				]]
				return table.find(module_8_upvr, arg1_4.AccessoryType)
			end)
		end
		if not var199 then
			var196 = true
			arg1.Shirt = tbl_4_upvr.Shirt
			if not any_read_result1_upvr then
			else
				CatalogOnApplyToRealHumanoid_upvr:FireServer({
					Property = "Shirt";
					AssetId = tbl_4_upvr.Shirt;
				})
			end
		end
	end
	local tbl_3 = {}
	tbl_3.Property = arg2
	tbl_3.AssetId = arg1[arg2]
	if not any_read_result1_upvr then
		return var196
	end
	CatalogOnApplyToRealHumanoid_upvr:FireServer(tbl_3)
	return var196
end
function module_11_upvr.TryAccessory(arg1, arg2, arg3, arg4, arg5) -- Line 926
	--[[ Upvalues[2]:
		[1]: any_read_result1_upvr (readonly)
		[2]: CatalogOnApplyToRealHumanoid_upvr (readonly)
	]]
	if arg5 == nil then
	end
	local any_GetAccessories_result1 = arg1:GetAccessories(true)
	local tbl_10 = {}
	tbl_10.AccessoryType = arg3
	tbl_10.AssetId = tonumber(arg2)
	tbl_10.Order = 1
	table.insert(any_GetAccessories_result1, tbl_10)
	arg1:SetAccessories(any_GetAccessories_result1, true)
	if not arg4 then
		if not any_read_result1_upvr then return end
		CatalogOnApplyToRealHumanoid_upvr:FireServer({
			AccessoryData = tbl_10;
		})
	end
end
function module_11_upvr.RemoveAccessory(arg1, arg2) -- Line 954
	--[[ Upvalues[5]:
		[1]: module_7_upvr (readonly)
		[2]: tbl_4_upvr (readonly)
		[3]: module_8_upvr (readonly)
		[4]: any_read_result1_upvr (readonly)
		[5]: CatalogOnApplyToRealHumanoid_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local pairs_result1_5, pairs_result2_4, pairs_result3_3 = pairs(arg1:GetAccessories(true))
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [54] 38. Error Block 9 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [54] 38. Error Block 9 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 9. Error Block 39 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [54.9]
	if nil == arg2 then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if nil then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if nil == 0 then
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		if nil and nil == 0 then
			-- KONSTANTWARNING: GOTO [56] #39
		end
		-- KONSTANTWARNING: GOTO [56] #39
	end
	-- KONSTANTERROR: [10] 9. Error Block 39 end (CF ANALYSIS FAILED)
end
local CatalogOnLoadEmoteRequest_upvr = BloxbizRemotes:WaitForChild("CatalogOnLoadEmoteRequest")
function module_11_upvr.TryEmote(arg1, arg2) -- Line 986
	--[[ Upvalues[3]:
		[1]: var26_upvw (read and write)
		[2]: ReplicatedStorage_upvr (readonly)
		[3]: CatalogOnLoadEmoteRequest_upvr (readonly)
	]]
	local var215
	if var215 then
		var215 = var26_upvw:Stop
		var215()
		var215 = nil
		var26_upvw = var215
	end
	var215 = nil
	local BloxbizCatalogEmotes = ReplicatedStorage_upvr:FindFirstChild("BloxbizCatalogEmotes")
	if BloxbizCatalogEmotes then
		var215 = BloxbizCatalogEmotes:FindFirstChild(arg2)
	end
	if not var215 then
		if not CatalogOnLoadEmoteRequest_upvr:InvokeServer(arg2) then return end
	end
	local var217
	local Animator_4 = arg1:FindFirstChild("Animator")
	if Animator_4 then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var217 = Animator_4:LoadAnimation(CatalogOnLoadEmoteRequest_upvr:InvokeServer(arg2))
	end
	if var217 then
		var217.Looped = false
		var217:Play()
		var26_upvw = var217
	end
end
function module_11_upvr.RemoveEmote() -- Line 1019
	--[[ Upvalues[1]:
		[1]: var26_upvw (read and write)
	]]
	if var26_upvw then
		var26_upvw:Stop()
		var26_upvw = nil
	end
end
function module_11_upvr.ReplicateBundle(arg1) -- Line 1026
	--[[ Upvalues[2]:
		[1]: any_read_result1_upvr (readonly)
		[2]: CatalogOnApplyOutfit_upvr (readonly)
	]]
	if not any_read_result1_upvr then
	else
		CatalogOnApplyOutfit_upvr:FireServer(arg1)
	end
end
local any_map_result1_upvr_2 = var7_2_upvr.map({Enum.AssetType.Pants, Enum.AssetType.PantsAccessory, Enum.AssetType.ShortsAccessory, Enum.AssetType.DressSkirtAccessory}, function(arg1) -- Line 50
	return arg1.Value
end)
local any_map_result1_upvr = var7_2_upvr.map({Enum.AssetType.Shirt, Enum.AssetType.ShirtAccessory, Enum.AssetType.JacketAccessory, Enum.AssetType.TShirtAccessory, Enum.AssetType.SweaterAccessory}, function(arg1) -- Line 42
	return arg1.Value
end)
function module_11_upvr.TryOutfit(arg1, arg2, arg3, arg4, arg5) -- Line 1034
	--[[ Upvalues[5]:
		[1]: any_map_result1_upvr_2 (readonly)
		[2]: any_map_result1_upvr (readonly)
		[3]: tbl_4_upvr (readonly)
		[4]: any_read_result1_upvr (readonly)
		[5]: CatalogOnApplyOutfit_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_GetAppliedDescription_result1_2 = arg2:GetAppliedDescription()
	any_GetAppliedDescription_result1_2:SetAccessories({}, true)
	arg1.SetBodyColors(any_GetAppliedDescription_result1_2, arg3.BodyColors, arg4)
	arg2:ApplyDescription(any_GetAppliedDescription_result1_2)
	local var230
	for i_10, v_10 in arg3 do
		if i_10 ~= "BodyColors" then
			local AssetType_2 = v_10.AssetType
			arg1:TryOn(arg2, v_10.AssetId, AssetType_2, arg4, v_10.Order)
			if table.find(any_map_result1_upvr_2, AssetType_2) then
			elseif table.find(any_map_result1_upvr, AssetType_2) then
			end
		end
	end
	if nil then
		v_10 = tbl_4_upvr
		i_10 = v_10.Pants
		v_10 = Enum.AssetType.Pants.Value
		arg1:TryOn(arg2, i_10, v_10, arg4)
	end
	if false then
		v_10 = tbl_4_upvr
		i_10 = v_10.Shirt
		v_10 = Enum.AssetType.Shirt.Value
		arg1:TryOn(arg2, i_10, v_10, arg4)
	end
	if any_read_result1_upvr and not arg4 then
		CatalogOnApplyOutfit_upvr:FireServer(arg5)
	end
end
function module_11_upvr.TryOn(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 1081
	--[[ Upvalues[4]:
		[1]: tbl_5_upvr (readonly)
		[2]: tbl_9_upvr (readonly)
		[3]: tbl_2_upvr (readonly)
		[4]: var7_2_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local tonumber_result1_3 = tonumber(arg4)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [11] 10. Error Block 18 start (CF ANALYSIS FAILED)
	if tonumber_result1_3 ~= 61 then
	else
	end
	-- KONSTANTERROR: [11] 10. Error Block 18 end (CF ANALYSIS FAILED)
end
function module_11_upvr.Remove(arg1, arg2, arg3, arg4) -- Line 1117
	--[[ Upvalues[4]:
		[1]: tbl_5_upvr (readonly)
		[2]: tbl_9_upvr (readonly)
		[3]: tbl_2_upvr (readonly)
		[4]: var7_2_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_GetAppliedDescription_result1 = arg2:GetAppliedDescription()
	local tonumber_result1_2 = tonumber(arg4)
	local var235 = tbl_5_upvr[tonumber_result1_2]
	if not var235 then
		if tonumber_result1_2 ~= 61 then
			var235 = false
		else
			var235 = true
		end
	end
	local var236 = tbl_9_upvr[tonumber(arg4)]
	if var236 then
		arg2:ApplyDescription(any_GetAppliedDescription_result1)
		return arg1.RemoveItem(any_GetAppliedDescription_result1, var236)
	end
	if tbl_2_upvr[tonumber(arg4)] then
		local any_RemoveAccessory_result1 = arg1.RemoveAccessory(any_GetAppliedDescription_result1, arg3)
		arg2:ApplyDescription(any_GetAppliedDescription_result1)
		return any_RemoveAccessory_result1
	end
	if var235 then
		arg1.RemoveEmote()
		return any_RemoveAccessory_result1
	end
	var7_2_upvr.pprint("[SuperBiz] Asset is not an accessory, emote or a valid HumDesc property")
	var7_2_upvr.pprint(arg3)
	return any_RemoveAccessory_result1
end
LocalPlayer_upvr.CharacterAdded:Connect(function(arg1) -- Line 1142
	--[[ Upvalues[2]:
		[1]: var10_upvw (read and write)
		[2]: BindableEvent_upvr (readonly)
	]]
	var10_upvw = arg1:WaitForChild("Humanoid")
	BindableEvent_upvr:Fire()
end)
if LocalPlayer_upvr.Character then
	var10_upvw = LocalPlayer_upvr.Character:WaitForChild("Humanoid")
	BindableEvent_upvr:Fire()
end
return module_11_upvr