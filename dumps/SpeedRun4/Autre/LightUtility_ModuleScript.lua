-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:41
-- Luau version 6, Types version 3
-- Time taken: 0.010455 seconds

local module_upvr = {}
local Lighting_upvr = game:GetService("Lighting")
function module_upvr.AddLight(arg1, arg2) -- Line 80
	local Part = Instance.new("Part")
	Part.Anchored = true
	Part.Transparency = 1
	Part.Shape = Enum.PartType.Ball
	Part.Color = arg1.color
	Part.Name = "ThumbnailLightAnchor_"..tostring(arg2)
	Part.Parent = workspace
	local PointLight = Instance.new("PointLight")
	PointLight.Color = arg1.color
	PointLight.Brightness = 3
	PointLight.Range = 10
	PointLight.Shadows = true
	PointLight.Name = "PointLight_"..tostring(arg2)
	PointLight.Parent = Part
	Part.Position = arg1.worldPos
end
local ColorUtility_upvr = require(script.Parent.ColorUtility)
local VectorUtility_upvr = require(script.Parent.VectorUtility)
function module_upvr.AddLightsFromExtraParams(arg1, arg2) -- Line 100
	--[[ Upvalues[4]:
		[1]: ColorUtility_upvr (readonly)
		[2]: VectorUtility_upvr (readonly)
		[3]: module_upvr (readonly)
		[4]: Lighting_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var17 = arg1
	if var17 then
		var17 = arg1.pointLights
	end
	if var17 then
		for i, v in ipairs(var17) do
			module_upvr.AddLight({
				color = ColorUtility_upvr.Color3FromString(v.color);
				worldPos = arg2 * VectorUtility_upvr.Vector3FromJson(v.pos);
			}, i)
		end
	end
	if arg1 then
		local clockTime = arg1.clockTime
	end
	if clockTime then
		Lighting_upvr.ClockTime = clockTime
	end
	local var23 = arg1
	if var23 then
		var23 = arg1.brightness
	end
	if var23 then
		Lighting_upvr.Brightness = var23
	end
	return true
end
function module_upvr.AddDefaultPointLightRelativeTo(arg1) -- Line 134
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr.AddLight({
		color = Color3.new(1, 1, 1);
		worldPos = arg1 * Vector3.new(-5, 7, -5);
	}, 0)
end
function module_upvr.SetupSunlightWithJsonConfig(arg1) -- Line 143
	--[[ Upvalues[1]:
		[1]: Lighting_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var27
	if not arg1 then
		local tbl_3 = {}
		var27 = '1'
		tbl_3.brightness = var27
		var27 = "124,124,124"
		tbl_3.ambient = var27
		var27 = "108,94,66"
		tbl_3.colorShiftBottom = var27
		var27 = "94,100,172"
		tbl_3.colorShiftTop = var27
		var27 = '0'
		tbl_3.environmentDiffuseScale = var27
		var27 = '1'
		tbl_3.environmentSpecularScale = var27
		var27 = "true"
		tbl_3.globalShadows = var27
		var27 = '0'
		tbl_3.shadowSoftness = var27
		var27 = "0,0,0"
		tbl_3.outdoorAmbient = var27
		var27 = "9.5"
		tbl_3.clockTime = var27
		var27 = "330"
		tbl_3.geographicLatitude = var27
		var27 = '0'
		tbl_3.exposureCompensation = var27
		var27 = "09:30:00"
		tbl_3.timeOfDay = var27
	end
	local var29 = tbl_3
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var27 = tonumber(var29.brightness)
		return var27
	end
	if not var29.brightness or not INLINED() then
		var27 = 1
	end
	Lighting_upvr.Brightness = var27
	var27 = var29.ambient
	if not var27 or not var29.ambient:split(',') then
		local tbl_4 = {}
		var27 = "124"
		tbl_4[1] = var27
		tbl_4[2] = "124"
		tbl_4[3] = "124"
	end
	var27 = Lighting_upvr
	var27.Ambient = Color3.fromRGB(tonumber(tbl_4[1]), tonumber(tbl_4[2]), tonumber(tbl_4[3]))
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var27 = var29.colorShiftBottom:split(',')
		return var27
	end
	if not var29.colorShiftBottom or not INLINED_2() then
		var27 = {}
		var27[1] = "108"
		var27[2] = "94"
		var27[3] = "66"
	end
	if not var29.colorShiftTop or not var29.colorShiftTop:split(',') then
		local tbl_5 = {"94", "100", "172"}
	end
	Lighting_upvr.ColorShift_Bottom = Color3.fromRGB(tonumber(var27[1]), tonumber(var27[2]), tonumber(var27[3]))
	Lighting_upvr.ColorShift_Top = Color3.fromRGB(tonumber(tbl_5[1]), tonumber(tbl_5[2]), tonumber(tbl_5[3]))
	if not var29.environmentDiffuseScale or not tonumber(var29.environmentDiffuseScale) then
	end
	Lighting_upvr.EnvironmentDiffuseScale = 0
	if not var29.environmentSpecularScale or not tonumber(var29.environmentSpecularScale) then
	end
	Lighting_upvr.EnvironmentSpecularScale = 1
	if not var29.globalShadows or var29.globalShadows ~= "true" then
	end
	Lighting_upvr.GlobalShadows = false
	if not var29.shadowSoftness or not tonumber(var29.shadowSoftness) then
	end
	Lighting_upvr.ShadowSoftness = 0
	if not var29.outdoorAmbient or not var29.outdoorAmbient:split(',') then
		local tbl_8 = {'0', '0', '0'}
	end
	Lighting_upvr.OutdoorAmbient = Color3.fromRGB(tonumber(tbl_8[1]), tonumber(tbl_8[2]), tonumber(tbl_8[3]))
	if not var29.clockTime or not tonumber(var29.clockTime) then
	end
	Lighting_upvr.ClockTime = 9.5
	if not var29.geographicLatitude or not tonumber(var29.geographicLatitude) then
	end
	Lighting_upvr.GeographicLatitude = 330
	if not var29.exposureCompensation or not tonumber(var29.exposureCompensation) then
	end
	Lighting_upvr.ExposureCompensation = 0
	Lighting_upvr.TimeOfDay = var29.timeOfDay or "09:30:00"
end
function module_upvr.SetupSceneLight(arg1, arg2) -- Line 190
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var34 = arg1
	if not var34 then
		var34 = {}
	end
	local var35 = var34
	local var36 = var35.lightType or "SpotLight"
	local var37 = arg2 or var36
	local Part_2 = Instance.new("Part")
	Part_2.Anchored = true
	Part_2.Transparency = 1
	Part_2.Size = var35.partSize or Vector3.new(4, 1, 2)
	local partType = var35.partType
	if not partType then
		partType = Enum.PartType.Block
	end
	Part_2.Shape = partType
	Part_2.Name = "ThumbnailLightAnchor_"..tostring(var37)
	Part_2.Parent = workspace
	local any = Instance.new(var36)
	if var35.enabled ~= nil then
	else
	end
	any.Enabled = true
	if not var35.color then
	end
	any.Color = Color3.fromRGB(255, 255, 255)
	any.Brightness = var35.brightness or 10
	any.Range = var35.range or 12
	any.Angle = var35.angle or 30
	if var35.shadows ~= nil then
	else
	end
	any.Shadows = true
	any.Name = tostring(var37)
	any.Parent = Part_2
	Part_2.CFrame = var35.partCFrame
end
function module_upvr.SetupSpotLight(arg1, arg2) -- Line 215
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local var42 = arg1
	if not var42 then
		var42 = {}
	end
	local var43 = var42
	var43.lightType = "SpotLight"
	module_upvr.SetupSceneLight(var43, arg2)
end
function module_upvr.SetupSpotLightsIn3PointLighting(arg1) -- Line 225
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if not arg1 then
	end
	local var48 = {
		keyLight = {
			partCFrame = CFrame.new(2.219, 103.178, 4.675) * CFrame.Angles(30, 60, -90);
			color = Color3.fromRGB(218, 196, 144);
			brightness = 11.2;
			range = 12;
			angle = 54;
		};
		fillLight = {
			partCFrame = CFrame.new(3.554, 107.01, -1.036) * CFrame.Angles(-15, 90, -90);
			color = Color3.fromRGB(255, 255, 255);
			brightness = 1.6;
			range = 12;
			angle = 36;
		};
	}
	if var48.keyLight then
		module_upvr.SetupSpotLight(var48.keyLight, "KeyLight")
	end
	if var48.fillLight then
		module_upvr.SetupSpotLight(var48.fillLight, "FillLight")
	end
end
function module_upvr.SetupSpotLightsIn3PointLightingWithJsonConfig(arg1) -- Line 251
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var50
	if not var50 then
		var50 = {}
		var50.rotation = "105"
		var50.keyCFrame = "2.219,103.178,4.675,30,60,-90"
		var50.keyBrightness = "11.2"
		var50.keyRange = "12"
		var50.keyAngle = "54"
		var50.keyColor = "218,196,144"
		var50.fillCFrame = "3.554,107.01,-1.036,-15,90,-90"
		var50.fillBrightness = "1.6"
		var50.fillRange = "12"
		var50.fillAngle = "36"
		var50.fillColor = "255,255,255"
	end
	local var51 = var50
	local function INLINED_3() -- Internal function, doesn't exist in bytecode
		var50 = tonumber(var51.rotation)
		return var50
	end
	if not var51.rotation or not INLINED_3() then
		var50 = 105
	end
	local cframe = CFrame.Angles(0, math.rad(var50), 0)
	if not var51.keyCFrame or not var51.keyCFrame:split(',') then
		local tbl_6 = {"2.219", "103.178", "4.675", "30", "60", "-90"}
	end
	if not var51.fillCFrame or not var51.fillCFrame:split(',') then
		local tbl = {"3.554", "107.01", "-1.036", "-15", "90", "-90"}
	end
	if not var51.keyBrightness or not tonumber(var51.keyBrightness) then
	end
	if not var51.keyRange or not tonumber(var51.keyRange) then
	end
	if not var51.keyAngle or not tonumber(var51.keyAngle) then
	end
	if not var51.keyColor or not var51.keyColor:split(',') then
		local tbl_7 = {"218", "196", "144"}
	end
	if not var51.fillBrightness or not tonumber(var51.fillBrightness) then
	end
	if not var51.fillRange or not tonumber(var51.fillRange) then
	end
	if not var51.fillAngle or not tonumber(var51.fillAngle) then
	end
	if not var51.fillColor or not var51.fillColor:split(',') then
		local tbl_2 = {"255", "255", "255"}
	end
	module_upvr.SetupSpotLightsIn3PointLighting({
		keyLight = {
			partCFrame = cframe:ToWorldSpace(CFrame.new(tonumber(tbl_6[1]) or 0, tonumber(tbl_6[2]) or 0, tonumber(tbl_6[3]) or 0) * CFrame.Angles(math.rad(tonumber(tbl_6[4]) or 0), math.rad(tonumber(tbl_6[5]) or 0), math.rad(tonumber(tbl_6[6]) or 0)));
			color = Color3.fromRGB(tonumber(tbl_7[1]), tonumber(tbl_7[2]), tonumber(tbl_7[3]));
			brightness = 11.2;
			range = 12;
			angle = 54;
		};
		fillLight = {
			partCFrame = cframe:ToWorldSpace(CFrame.new(tonumber(tbl[1]) or 0, tonumber(tbl[2]) or 0, tonumber(tbl[3]) or 0) * CFrame.Angles(math.rad(tonumber(tbl[4]) or 0), math.rad(tonumber(tbl[5]) or 0), math.rad(tonumber(tbl[6]) or 0)));
			color = Color3.fromRGB(tonumber(tbl_2[1]), tonumber(tbl_2[2]), tonumber(tbl_2[3]));
			brightness = 1.6;
			range = 12;
			angle = 36;
		};
	})
end
return module_upvr