-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:31:57
-- Luau version 6, Types version 3
-- Time taken: 0.018667 seconds

local TnSAvatarIdentification = script:FindFirstAncestor("TnSAvatarIdentification")
local GetFFlagAvatarIdentificationSafeAreaFix_upvr = require(TnSAvatarIdentification.Parent.SharedFlags).GetFFlagAvatarIdentificationSafeAreaFix
local IdentificationUtils_upvr = require(script.Parent.IdentificationUtils)
local var4 = require(TnSAvatarIdentification.Flags.GetFIntReportAnythingAvatarIdentificationOffScreenDiscardDistancePercent)() / 100
local module_7 = {}
function getBBCorners(arg1, arg2) -- Line 26
	local table_create_result1 = table.create(8)
	local ZVector = arg1.ZVector
	local var14 = 1
	for i = -0.5, 0.5 do
		local var15 = arg1.XVector * i * arg2.X
		for i_2 = -0.5, 0.5 do
			local var16 = arg1.YVector * i_2 * arg2.Y
			for i_3 = -0.5, 0.5 do
				table_create_result1[var14] = arg1.Position + var15 + var16 + ZVector * i_3 * arg2.Z
				var14 += 1
			end
		end
	end
	return table_create_result1
end
local var17_upvr = var4 + 1
local var18_upvr = -var4
local function _(arg1) -- Line 50
	--[[ Upvalues[2]:
		[1]: var17_upvr (readonly)
		[2]: var18_upvr (readonly)
	]]
	local var22 = true
	if var17_upvr >= arg1.Y then
		var22 = true
		if arg1.Y >= var18_upvr then
			var22 = true
			if var17_upvr >= arg1.X then
				if arg1.X >= var18_upvr then
					var22 = false
				else
					var22 = true
				end
			end
		end
	end
	return var22
end
local module_upvr = {
	total = 0;
	offScreenDiscardCount = 0;
	tooCloseDiscardCount = 0;
	wasSkipped = false;
}
local var24_upvr = require(TnSAvatarIdentification.Flags.GetFIntReportAnythingAvatarIdentificationCloseDiscardDistanceHundredths)() / 100
local var25_upvr = require(TnSAvatarIdentification.Flags.GetFIntReportAnythingAvatarIdentificationDiscardFractionSkipThresholdPercent)() / 100
function getCoveringPolygon(arg1, arg2, arg3) -- Line 71
	--[[ Upvalues[7]:
		[1]: module_upvr (readonly)
		[2]: GetFFlagAvatarIdentificationSafeAreaFix_upvr (readonly)
		[3]: IdentificationUtils_upvr (readonly)
		[4]: var24_upvr (readonly)
		[5]: var17_upvr (readonly)
		[6]: var18_upvr (readonly)
		[7]: var25_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 48 start (CF ANALYSIS FAILED)
	local var91
	if #arg1 == 0 then
		return {}, module_upvr
	end
	local ipairs_result1_9, ipairs_result2, ipairs_result3_5 = ipairs(arg1)
	for _, v in ipairs_result1_9, ipairs_result2, ipairs_result3_5 do
		local target_2 = v.target
		for i_5, v_2 in getBBCorners(target_2.ExtentsCFrame, target_2.ExtentsSize), nil do
			table.insert({}, v_2)
			local var97
		end
	end
	local module_2 = {}
	ipairs_result3_5 = 0
	-- KONSTANTERROR: [0] 1. Error Block 48 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [49] 36. Error Block 78 start (CF ANALYSIS FAILED)
	assert(arg3, "getCoveringPolygon requires viewportInfo when FFlagAvatarIdentificationSafeAreaFix is enabled")
	for _, v_3 in ipairs(var97) do
		local any_worldToFullViewportPointNormalized_result1_2, any_worldToFullViewportPointNormalized_result2_2, _ = IdentificationUtils_upvr.worldToFullViewportPointNormalized(v_3, arg2, arg3)
		if any_worldToFullViewportPointNormalized_result2_2 < var24_upvr then
			local var105 = 0 + 1
		else
			local var106 = true
			i_5 = any_worldToFullViewportPointNormalized_result1_2.Y
			v_2 = var17_upvr
			if v_2 >= i_5 then
				var106 = true
				i_5 = any_worldToFullViewportPointNormalized_result1_2.Y
				v_2 = var18_upvr
				if i_5 >= v_2 then
					var106 = true
					i_5 = any_worldToFullViewportPointNormalized_result1_2.X
					v_2 = var17_upvr
					if v_2 >= i_5 then
						i_5 = any_worldToFullViewportPointNormalized_result1_2.X
						v_2 = var18_upvr
						if i_5 >= v_2 then
							var106 = false
						else
							var106 = true
						end
					end
				end
			end
			if var106 then
				ipairs_result3_5 += 1
			else
				i_5 = #module_2
				module_2[i_5 + 1] = any_worldToFullViewportPointNormalized_result1_2
			end
		end
	end
	local module = {
		total = #var97;
		offScreenDiscardCount = ipairs_result3_5;
		tooCloseDiscardCount = var105;
		wasSkipped = false;
	}
	if var25_upvr < (var105 + ipairs_result3_5) / #var97 then
		module.wasSkipped = true
		return {}, module
	end
	do
		return getConvexHull(module_2), module
	end
	-- KONSTANTERROR: [49] 36. Error Block 78 end (CF ANALYSIS FAILED)
end
function getDistanceAlongCamLookVector(arg1, arg2) -- Line 146
	local CFrame = arg2.CFrame
	return arg1.Position - CFrame.Position:Dot(CFrame.LookVector)
end
function getVisibleParts(arg1, arg2, arg3) -- Line 159
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local Position = arg1.CFrame.Position
	local Character_2 = arg2.Character
	local var128
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [7] 5. Error Block 19 start (CF ANALYSIS FAILED)
	if not Character_2.Parent then
		-- KONSTANTERROR: [10] 7. Error Block 15 start (CF ANALYSIS FAILED)
		do
			return 0, {}
		end
		-- KONSTANTERROR: [10] 7. Error Block 15 end (CF ANALYSIS FAILED)
	end
	local RaycastParams_new_result1 = RaycastParams.new()
	var128 = Enum.RaycastFilterType.Exclude
	RaycastParams_new_result1.FilterType = var128
	RaycastParams_new_result1.FilterDescendantsInstances = arg3
	var128 = true
	RaycastParams_new_result1.IgnoreWater = var128
	var128 = 0
	for _, v_4 in ipairs(Character_2:GetChildren()) do
		if v_4:IsA("BasePart") then
			var128 += 1
			local workspace_Raycast_result1 = workspace:Raycast(Position, v_4.CFrame.Position - Position, RaycastParams_new_result1)
			if workspace_Raycast_result1 and workspace_Raycast_result1.Instance:IsDescendantOf(Character_2) then
				table.insert({}, {
					result = workspace_Raycast_result1;
					target = v_4;
				})
			end
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	do
		return var128, {}
	end
	-- KONSTANTERROR: [7] 5. Error Block 19 end (CF ANALYSIS FAILED)
end
local function _(arg1, arg2, arg3) -- Line 200, Named "counterclockwise"
	return arg2 - arg1:Cross(arg3 - arg2)
end
function getConvexHull(arg1) -- Line 204
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var155_upvw
	if #arg1 <= var155_upvw then
		return {}
	end
	local module_4 = {}
	var155_upvw = arg1[1]
	local tbl_3 = {}
	for i_8 = 2, #arg1 do
		local var158 = arg1[i_8]
		if var158.Y < var155_upvw.Y or var158.Y == var155_upvw.Y and var158.X < var155_upvw.X then
			var155_upvw = var158
		end
	end
	table.insert(module_4, var155_upvw)
	local function _(arg1_2) -- Line 221, Named "angleFromLowest"
		--[[ Upvalues[1]:
			[1]: var155_upvw (read and write)
		]]
		local var159 = arg1_2 - var155_upvw
		return math.atan2(var159.Y, var159.X)
	end
	for _, v_5 in ipairs(arg1) do
		if v_5 ~= var155_upvw then
			local var163 = v_5 - var155_upvw
			table.insert(tbl_3, Vector3.new(v_5.X, v_5.Y, math.atan2(var163.Y, var163.X)))
		end
	end
	table.sort(tbl_3, function(arg1_3, arg2) -- Line 233, Named "compareByAngle"
		--[[ Upvalues[1]:
			[1]: var155_upvw (read and write)
		]]
		local Z = arg1_3.Z
		if Z ~= arg2.Z then
			if arg1_3.Z >= arg2.Z then
				Z = false
			else
				Z = true
			end
			return Z
		end
		if (Vector2.new(arg1_3.X, arg1_3.Y) - var155_upvw).Magnitude >= (Vector2.new(arg2.X, arg2.Y) - var155_upvw).Magnitude then
			Z = false
		else
			Z = true
		end
		return Z
	end)
	local tbl_2 = {}
	for i_10 = 2, #tbl_3 do
		local var167 = tbl_3[i_10]
		if tbl_3[1].Z == var167.Z then
			local var168 = var167
		else
			table.insert(tbl_2, Vector2.new(var168.X, var168.Y))
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	table.insert(tbl_2, Vector2.new(var167.X, var167.Y))
	if #tbl_2 == 1 then
		return {}
	end
	table.insert(module_4, tbl_2[1])
	table.insert(module_4, tbl_2[2])
	for i_11 = 3, #tbl_2 do
		local var169 = tbl_2[i_11]
		while 1 < #module_4 do
			local var170 = module_4[#module_4]
			if var170 - module_4[#module_4 - 1]:Cross(var169 - var170) > 0 then break end
			table.remove(module_4)
		end
		table.insert(module_4, var169)
	end
	return module_4
end
function projectVertices(arg1, arg2, arg3) -- Line 301
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var182
	for _, v_6 in ipairs(arg1) do
		v_6 *= arg3
		local any_Dot_result1_2 = v_6:Dot(arg2)
		if any_Dot_result1_2 < var182 then
			var182 = any_Dot_result1_2
		end
		if (-math.huge) < any_Dot_result1_2 then
		end
	end
	return var182, any_Dot_result1_2
end
function projectCircle(arg1, arg2, arg3) -- Line 321
	local var184 = arg3.Unit * arg2
	local any_Dot_result1_3 = arg1 + var184:Dot(arg3)
	local any_Dot_result1 = arg1 - var184:Dot(arg3)
	if any_Dot_result1 < any_Dot_result1_3 then
		any_Dot_result1_3 = any_Dot_result1
		any_Dot_result1 = any_Dot_result1_3
	end
	return any_Dot_result1_3, any_Dot_result1
end
function getClosestPoint(arg1, arg2, arg3) -- Line 340
	local var194
	for i_13, v_7 in ipairs(arg2) do
		v_7 *= arg3
		if math.sqrt(math.pow(v_7.X - arg1.X, 2) + math.pow(v_7.Y - arg1.Y, 2)) < math.huge then
		end
	end
	return nil
end
function intersectCirclePolygon(arg1, arg2, arg3, arg4) -- Line 354
	for i_14, _ in ipairs(arg3) do
		local var201 = arg3[i_14 % #arg3 + 1] * arg4 - arg3[i_14] * arg4
		local Unit = Vector2.new(var201.Y, -var201.X).Unit
		local projectVertices_result1, projectVertices_result2_2 = projectVertices(arg3, Unit, arg4)
		local projectCircle_result1, projectCircle_result2_2 = projectCircle(arg1, arg2, Unit)
		if projectCircle_result2_2 <= projectVertices_result1 or projectVertices_result2_2 <= projectCircle_result1 then
			return false
		end
	end
	local getClosestPoint_result1 = getClosestPoint(arg1, arg3, arg4)
	if getClosestPoint_result1 == -1 then
		return false
	end
	local Unit_2 = (arg3[getClosestPoint_result1] - arg1).Unit
	local projectVertices_result1_2, projectVertices_result2 = projectVertices(arg3, Unit_2, arg4)
	local projectCircle_result1_2, projectCircle_result2 = projectCircle(arg1, arg2, Unit_2)
	if projectCircle_result2 <= projectVertices_result1_2 or projectVertices_result2 <= projectCircle_result1_2 then
		return false
	end
	return true
end
function intersectCircleBox(arg1, arg2, arg3, arg4, arg5) -- Line 385
	local X_2 = arg1.X
	local Y = arg1.Y
	local var215 = X_2
	local X = arg3.X
	local Y_2 = arg3.Y
	local var218 = arg4.X - arg3.X
	local var219 = arg4.Y - arg3.Y
	local var220
	if X_2 < X then
		var215 = X
	elseif X + var218 < X_2 then
		var215 = X + var218
	end
	if Y < Y_2 then
		var220 = Y_2
	elseif Y_2 + var219 < Y then
		var220 = Y_2 + var219
	end
	local var221 = X_2 - var215
	local var222 = Y - var220
	if math.sqrt(var221 * var221 + var222 * var222) <= arg2 then
		return true
	end
	return false
end
function module_7.getAvatarsForRegion(arg1, arg2, arg3, arg4, arg5) -- Line 424
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var232
	if arg5 >= arg4 then
		var232 = false
	else
		var232 = true
	end
	if var232 then
		local _ = arg4 / arg5
	else
	end
	if var232 then
		local _ = Vector2.new(arg5 / arg4, 1)
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	end
	for _, v_9 in pairs(arg1) do
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x7)
		if intersectCircleBox(arg2 * Vector2.new(1, arg5 / arg4), (arg3) * (arg5 / arg4), v_9.boundingBox.min * Vector2.new(1, arg5 / arg4), v_9.boundingBox.max * Vector2.new(1, arg5 / arg4), Vector2.new(1, arg5 / arg4)) and #v_9.convexHull >= 3 and intersectCirclePolygon(arg2 * Vector2.new(1, arg5 / arg4), (arg3) * (arg5 / arg4), v_9.convexHull, Vector2.new(1, arg5 / arg4)) then
			({})[v_9.player.UserId] = v_9.player
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
function module_7.getAvatarsForPoint(arg1, arg2) -- Line 471
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	for _, v_10 in pairs(arg1) do
		local boundingBox = v_10.boundingBox
		if arg2.X >= boundingBox.min.X and arg2.Y >= boundingBox.min.Y and boundingBox.max.X >= arg2.X and boundingBox.max.Y >= arg2.Y then
			local convexHull = v_10.convexHull
			local var287
			if #convexHull >= var287 then
				var287 = #convexHull
				local var288 = convexHull[var287]
				var287 = true
				for _, v_11 in ipairs(convexHull) do
					local any_Cross_result1_2 = v_11 - var288:Cross(arg2 - var288)
					if true then
						if any_Cross_result1_2 > 0 then
						else
						end
					end
					if var287 then
						if 0 > any_Cross_result1_2 then
						else
						end
					end
					var287 = true
				end
				if var287 or true then
					({})[v_10.player.UserId] = v_10.player
				end
			end
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
local Players_upvr = game:GetService("Players")
function module_7.getVisibleAvatars(arg1, arg2) -- Line 508
	--[[ Upvalues[3]:
		[1]: Players_upvr (readonly)
		[2]: IdentificationUtils_upvr (readonly)
		[3]: GetFFlagAvatarIdentificationSafeAreaFix_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 65 start (CF ANALYSIS FAILED)
	local players = Players_upvr:GetPlayers()
	local module_3_upvr = {
		totalPlayers = 0;
		checkedPlayers = 0;
		duration = 0;
	}
	local CurrentCamera = workspace.CurrentCamera
	local var298_upvw
	if not CurrentCamera then
		return {}, module_3_upvr
	end
	local LocalPlayer = Players_upvr.LocalPlayer
	if not LocalPlayer then
		var298_upvw = module_3_upvr
		return {}, var298_upvw
	end
	local Character_3 = LocalPlayer.Character
	var298_upvw = nil
	local tbl = {}
	if Character_3 then
		local any_getLocalCharacterPosition_result1 = IdentificationUtils_upvr.getLocalCharacterPosition(Character_3)
		if not any_getLocalCharacterPosition_result1 then
			any_getLocalCharacterPosition_result1 = CurrentCamera.CFrame.Position
		end
		var298_upvw = any_getLocalCharacterPosition_result1
		if IdentificationUtils_upvr.shouldIgnoreLocalCharacter(Character_3) then
			tbl[#tbl + 1] = Character_3
			-- KONSTANTWARNING: GOTO [65] #49
		end
	else
		var298_upvw = CurrentCamera.CFrame.Position
	end
	if GetFFlagAvatarIdentificationSafeAreaFix_upvr() then
		module_3_upvr.viewportInfo = IdentificationUtils_upvr.getViewportInfo()
	end
	local os_clock_result1_upvr = os.clock()
	module_3_upvr.totalPlayers = #players - 1
	local function _() -- Line 552
		--[[ Upvalues[2]:
			[1]: module_3_upvr (readonly)
			[2]: os_clock_result1_upvr (readonly)
		]]
		module_3_upvr.duration = os.clock() - os_clock_result1_upvr
		return module_3_upvr
	end
	local function _() -- Line 556
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: os_clock_result1_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var306
		if arg2 then
			var306 = arg2
		else
			var306 = 0.5
		end
		if var306 >= os.clock() - os_clock_result1_upvr then
		else
		end
		return true
	end
	if var298_upvw then
		table.sort(players, function(arg1_4, arg2_2) -- Line 563
			--[[ Upvalues[1]:
				[1]: var298_upvw (read and write)
			]]
			local var308
			if arg1_4:DistanceFromCharacter(var298_upvw) >= arg2_2:DistanceFromCharacter(var298_upvw) then
				var308 = false
			else
				var308 = true
			end
			return var308
		end)
	end
	local ipairs_result1_6, ipairs_result2_5, ipairs_result3_2 = ipairs(players)
	-- KONSTANTERROR: [0] 1. Error Block 65 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [239] 177. Error Block 40 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [239] 177. Error Block 40 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [103] 80. Error Block 17 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [239.19]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [239.2147483650]
	-- KONSTANTERROR: [103] 80. Error Block 17 end (CF ANALYSIS FAILED)
end
return module_7