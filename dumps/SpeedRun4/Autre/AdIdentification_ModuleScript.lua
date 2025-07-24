-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:31:54
-- Luau version 6, Types version 3
-- Time taken: 0.015868 seconds

local TnSAdIdentification = script:FindFirstAncestor("TnSAdIdentification")
local Parent = TnSAdIdentification.Parent
local LoggingProtocol_upvr = require(Parent.LoggingProtocol)
local GetFFlagAvatarIdentificationSafeAreaFix_upvr = require(Parent.SharedFlags).GetFFlagAvatarIdentificationSafeAreaFix
local IdentificationUtils_upvr = require(Parent.AvatarIdentification).IdentificationUtils
local module_2 = {}
function getLocalCharacterPosition(arg1) -- Line 33
	local HumanoidRootPart = arg1:FindFirstChild("HumanoidRootPart")
	if not HumanoidRootPart then
		return nil
	end
	return HumanoidRootPart.Position
end
function checkVisibility(arg1, arg2, arg3, arg4) -- Line 45
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local Position_2 = arg1.CFrame.Position
	local ViewportSize = arg1.ViewportSize
	local RaycastParams_new_result1_2 = RaycastParams.new()
	RaycastParams_new_result1_2.FilterType = Enum.RaycastFilterType.Exclude
	RaycastParams_new_result1_2.FilterDescendantsInstances = arg4
	RaycastParams_new_result1_2.IgnoreWater = true
	local var35
	for i = 1, 4 do
		for i_2 = 1, 4 do
			local var36 = arg3[1] + (arg3[2] - arg3[1]) * (i - 0.5) / 4 + (arg3[3] - arg3[1]) * (i_2 - 0.5) / 4
			local any_WorldToViewportPoint_result1_2, _ = arg1:WorldToViewportPoint(var36)
			if any_WorldToViewportPoint_result1_2.Z >= 0 and any_WorldToViewportPoint_result1_2.X >= 0 and any_WorldToViewportPoint_result1_2.Y >= 0 and ViewportSize.X >= any_WorldToViewportPoint_result1_2.X and ViewportSize.Y >= any_WorldToViewportPoint_result1_2.Y then
				local workspace_Raycast_result1_2 = workspace:Raycast(Position_2, (var36 - Position_2) * 1.1, RaycastParams_new_result1_2)
				if workspace_Raycast_result1_2 and workspace_Raycast_result1_2.Instance == arg2 then
					var35 += 1
				end
			end
		end
	end
	return var35 / (0 + 1)
end
function createSingleVisibleRegionFromWorldSpaceCorners(arg1, arg2, arg3) -- Line 93
	--[[ Upvalues[2]:
		[1]: GetFFlagAvatarIdentificationSafeAreaFix_upvr (readonly)
		[2]: IdentificationUtils_upvr (readonly)
	]]
	local table_create_result1 = table.create(#arg1)
	for i_3, v in ipairs(arg1) do
		if GetFFlagAvatarIdentificationSafeAreaFix_upvr() then
			local any_worldToFullViewportPointNormalized_result1, _, _ = IdentificationUtils_upvr.worldToFullViewportPointNormalized(v, arg2, arg3)
			table_create_result1[i_3] = Vector2.new(any_worldToFullViewportPointNormalized_result1.X, any_worldToFullViewportPointNormalized_result1.Y)
		else
			local any_WorldToViewportPoint_result1, _ = arg2:WorldToViewportPoint(v)
			table_create_result1[i_3] = Vector2.new(any_WorldToViewportPoint_result1.X, any_WorldToViewportPoint_result1.Y) / arg2.ViewportSize
		end
	end
	return {
		convexHull = {table_create_result1[1], table_create_result1[2], table_create_result1[4], table_create_result1[3]};
		id = 1;
	}
end
function getAdCenterAndScreenArea(arg1, arg2) -- Line 117
	local ViewportSize_3 = arg2.ViewportSize
	local var58 = Vector3.new(0, 0, 0)
	local module = {}
	for _, v_2 in ipairs(arg1) do
		var58 += v_2
		local any_WorldToViewportPoint_result1_3, _ = arg2:WorldToViewportPoint(v_2)
		table.insert(module, Vector2.new(any_WorldToViewportPoint_result1_3.X, any_WorldToViewportPoint_result1_3.Y) / ViewportSize_3)
	end
	var58 /= 4
	return var58, (0 + math.abs(module[2] - module[1]:Cross(module[3] - module[1])) + math.abs(module[2] - module[4]:Cross(module[3] - module[4]))) / 2
end
function module_2.getAdsForPoint(arg1, arg2) -- Line 185
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	for i_5, v_3 in pairs(arg1) do
		local boundingBox = v_3.boundingBox
		if arg2.X >= boundingBox.min.X and arg2.Y >= boundingBox.min.Y and boundingBox.max.X >= arg2.X and boundingBox.max.Y >= arg2.Y then
			for _, v_4 in ipairs(v_3.visibleRegions) do
				local convexHull = v_4.convexHull
				local var98
				if #convexHull >= var98 then
					var98 = #convexHull
					local var99 = convexHull[var98]
					var98 = true
					for _, v_5 in ipairs(convexHull) do
						local any_Cross_result1 = v_5 - var99:Cross(arg2 - var99)
						if true then
							if any_Cross_result1 > 0 then
							else
							end
						end
						if var98 then
							if 0 > any_Cross_result1 then
							else
							end
						end
						var98 = true
					end
					if var98 or true then
						({})[i_5] = v_3
						break
					end
				end
			end
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
local AdService_upvr = game:GetService("AdService")
local Players_upvr = game:GetService("Players")
local maximum_upvr = math.max(require(TnSAdIdentification.Flags.GetFIntAdIdentificationMinimumAreaPerMyriad)() / 10000, 0)
local default_upvr = LoggingProtocol_upvr.default
local GetFIntAdIdentifiedTelemetryThrottleHundredthsPercent_upvr = require(TnSAdIdentification.Flags.GetFIntAdIdentifiedTelemetryThrottleHundredthsPercent)
function module_2.getVisibleAds() -- Line 221
	--[[ Upvalues[8]:
		[1]: AdService_upvr (readonly)
		[2]: Players_upvr (readonly)
		[3]: GetFFlagAvatarIdentificationSafeAreaFix_upvr (readonly)
		[4]: IdentificationUtils_upvr (readonly)
		[5]: maximum_upvr (readonly)
		[6]: default_upvr (readonly)
		[7]: LoggingProtocol_upvr (readonly)
		[8]: GetFIntAdIdentifiedTelemetryThrottleHundredthsPercent_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module_4 = {}
	local module_3_upvr = {
		totalAds = 0;
		checkedAds = 0;
		duration = 0;
	}
	local var120
	if not game:GetEngineFeature("GetReportAdInfo") then
		return module_4, module_3_upvr
	end
	local any_GetReportAdInfo_result1 = AdService_upvr:GetReportAdInfo()
	local CurrentCamera = workspace.CurrentCamera
	if not CurrentCamera then
		return module_4, module_3_upvr
	end
	local LocalPlayer = Players_upvr.LocalPlayer
	if not LocalPlayer then
		return module_4, module_3_upvr
	end
	local Character = LocalPlayer.Character
	var120 = nil
	if Character then
		if not getLocalCharacterPosition(Character) then
		end
		var120 = CurrentCamera.CFrame.Position
	else
		var120 = CurrentCamera.CFrame.Position
	end
	if GetFFlagAvatarIdentificationSafeAreaFix_upvr() then
		local any_getViewportInfo_result1 = IdentificationUtils_upvr.getViewportInfo()
		module_3_upvr.viewportInfo = any_getViewportInfo_result1
	end
	local os_clock_result1_upvr = os.clock()
	module_3_upvr.totalAds = #any_GetReportAdInfo_result1
	local function _() -- Line 264
		--[[ Upvalues[2]:
			[1]: module_3_upvr (readonly)
			[2]: os_clock_result1_upvr (readonly)
		]]
		module_3_upvr.duration = os.clock() - os_clock_result1_upvr
		return module_3_upvr
	end
	local function _() -- Line 269
		--[[ Upvalues[1]:
			[1]: os_clock_result1_upvr (readonly)
		]]
		local var129
		if 0.2 >= os.clock() - os_clock_result1_upvr then
			var129 = false
		else
			var129 = true
		end
		return var129
	end
	for _, v_6 in ipairs(any_GetReportAdInfo_result1) do
		local var134
		if 0.2 >= os.clock() - os_clock_result1_upvr then
			var134 = false
		else
			var134 = true
		end
		if var134 then
			var134 = module_4
			module_3_upvr.duration = os.clock() - os_clock_result1_upvr
			return var134, module_3_upvr
		end
		var134 = v_6.basePart
		local assetId = v_6.assetId
		local encryptedAdTrackingData = v_6.encryptedAdTrackingData
		local encryptionMetadata = v_6.encryptionMetadata
		if encryptedAdTrackingData == "" or encryptionMetadata == "" or assetId == "11307989327" then
			module_3_upvr.checkedAds += 1
		else
			local assetCorners = v_6.assetCorners
			if not assetCorners or #assetCorners < 4 then
				module_3_upvr.checkedAds += 1
			else
				local var139
				local getAdCenterAndScreenArea_result1, getAdCenterAndScreenArea_result2 = getAdCenterAndScreenArea(assetCorners, CurrentCamera)
				if getAdCenterAndScreenArea_result1 - CurrentCamera.CFrame.Position:Dot(CurrentCamera.CFrame.LookVector) < 0 then
					module_3_upvr.checkedAds += 1
				else
					local Unit = assetCorners[1] - assetCorners[2]:Cross(assetCorners[1] - assetCorners[3]).Unit
					if Unit:Dot(getAdCenterAndScreenArea_result1 - var134.Position) < 0 then
					end
					if CurrentCamera.CFrame.Position - getAdCenterAndScreenArea_result1:Dot(-Unit) < 0 then
						module_3_upvr.checkedAds += 1
					else
						local any_getViewportCorners_result1, any_getViewportCorners_result2 = IdentificationUtils_upvr.getViewportCorners(assetCorners, CurrentCamera, any_getViewportInfo_result1)
						if any_getViewportCorners_result1 == IdentificationUtils_upvr.defaultMin then
							module_3_upvr.checkedAds += 1
						elseif getAdCenterAndScreenArea_result2 < maximum_upvr then
							module_3_upvr.checkedAds += 1
						else
							local var145
							local checkVisibility_result1 = checkVisibility(CurrentCamera, var134, assetCorners, {})
							if checkVisibility_result1 < 0.3 then
								module_3_upvr.checkedAds += 1
							else
								if 0.2 >= os.clock() - os_clock_result1_upvr then
								else
								end
								if true then
									module_3_upvr.duration = os.clock() - os_clock_result1_upvr
									return module_4, module_3_upvr
								end
								module_4[1] = {
									distance = (getAdCenterAndScreenArea_result1 - var120).Magnitude;
									boundingBox = {
										min = any_getViewportCorners_result1;
										max = any_getViewportCorners_result2;
									};
									hitRate = checkVisibility_result1;
									visibleRegions = {createSingleVisibleRegionFromWorldSpaceCorners(assetCorners, CurrentCamera, any_getViewportInfo_result1)};
									adUnitName = v_6.adUnitName;
									assetId = assetId;
									encryptedAdTrackingData = encryptedAdTrackingData;
									encryptionMetadata = encryptionMetadata;
								}
								default_upvr:logRobloxTelemetryEvent({
									eventName = "AdIdentifiedInAbuseReport";
									backends = {LoggingProtocol_upvr.TelemetryBackends.Points};
									throttlingPercentage = GetFIntAdIdentifiedTelemetryThrottleHundredthsPercent_upvr();
									lastUpdated = {24, 6, 25};
									description = "Ad Identified in Report Anything Screenshot";
								}, nil, {
									assetId = assetId;
									encryptedAdTrackingData = encryptedAdTrackingData;
									encryptionMetadata = encryptionMetadata;
								})
								module_3_upvr.checkedAds += 1
							end
						end
					end
				end
			end
		end
	end
	module_3_upvr.duration = os.clock() - os_clock_result1_upvr
	return module_4, module_3_upvr
end
return module_2