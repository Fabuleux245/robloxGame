-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:39:16
-- Luau version 6, Types version 3
-- Time taken: 0.010615 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local Players = game:GetService("Players")
local CurrentCamera_upvr = game.Workspace.CurrentCamera
local tan_upvr = math.tan
local rad_upvr = math.rad
local new_upvr = Ray.new
local function _(arg1) -- Line 25, Named "getTotalTransparency"
	return 1 - (1 - arg1.Transparency) * (1 - arg1.LocalTransparencyModifier)
end
local function _(arg1, arg2) -- Line 29, Named "eraseFromEnd"
	for i = #arg1, arg2 + 1, -1 do
		arg1[i] = nil
	end
end
local var23_upvw
local var24_upvw
local function updateProjection() -- Line 36
	--[[ Upvalues[5]:
		[1]: CurrentCamera_upvr (readonly)
		[2]: rad_upvr (readonly)
		[3]: var23_upvw (read and write)
		[4]: tan_upvr (readonly)
		[5]: var24_upvw (read and write)
	]]
	local ViewportSize_2 = CurrentCamera_upvr.ViewportSize
	var23_upvw = tan_upvr(rad_upvr(CurrentCamera_upvr.FieldOfView) / 2) * 2
	var24_upvw = ViewportSize_2.X / ViewportSize_2.Y * var23_upvw
end
CurrentCamera_upvr:GetPropertyChangedSignal("FieldOfView"):Connect(updateProjection)
CurrentCamera_upvr:GetPropertyChangedSignal("ViewportSize"):Connect(updateProjection)
local ViewportSize = CurrentCamera_upvr.ViewportSize
var23_upvw = tan_upvr(rad_upvr(CurrentCamera_upvr.FieldOfView) / 2) * 2
local var27_upvw = var23_upvw
var24_upvw = ViewportSize.X / ViewportSize.Y * var27_upvw
local NearPlaneZ_upvw = CurrentCamera_upvr.NearPlaneZ
local function playerAdded() -- Line 51
	--[[ Upvalues[2]:
		[1]: NearPlaneZ_upvw (read and write)
		[2]: CurrentCamera_upvr (readonly)
	]]
	NearPlaneZ_upvw = CurrentCamera_upvr.NearPlaneZ
end
CurrentCamera_upvr:GetPropertyChangedSignal("NearPlaneZ"):Connect(playerAdded)
local tbl_2_upvw = {}
local tbl_upvr_2 = {}
local function _() -- Line 59, Named "refreshIgnoreList"
	--[[ Upvalues[2]:
		[1]: tbl_2_upvw (read and write)
		[2]: tbl_upvr_2 (readonly)
	]]
	local var36 = 1
	tbl_2_upvw = {}
	for _, v in pairs(tbl_upvr_2) do
		tbl_2_upvw[var36] = v
		var36 += 1
	end
end
function playerAdded(arg1) -- Line 68
	--[[ Upvalues[2]:
		[1]: tbl_upvr_2 (readonly)
		[2]: tbl_2_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	arg1.CharacterAdded:Connect(function(arg1_2) -- Line 69, Named "characterAdded"
		--[[ Upvalues[3]:
			[1]: tbl_upvr_2 (copied, readonly)
			[2]: arg1 (readonly)
			[3]: tbl_2_upvw (copied, read and write)
		]]
		tbl_upvr_2[arg1] = arg1_2
		local var53 = 1
		tbl_2_upvw = {}
		for _, v_2 in pairs(tbl_upvr_2) do
			tbl_2_upvw[var53] = v_2
			var53 += 1
		end
	end)
	arg1.CharacterRemoving:Connect(function() -- Line 73, Named "characterRemoving"
		--[[ Upvalues[3]:
			[1]: tbl_upvr_2 (copied, readonly)
			[2]: arg1 (readonly)
			[3]: tbl_2_upvw (copied, read and write)
		]]
		tbl_upvr_2[arg1] = nil
		local var61 = 1
		tbl_2_upvw = {}
		for _, v_3 in pairs(tbl_upvr_2) do
			tbl_2_upvw[var61] = v_3
			var61 += 1
		end
	end)
	if arg1.Character then
		tbl_upvr_2[arg1] = arg1.Character
		tbl_2_upvw = {}
		for _, v_4 in pairs(tbl_upvr_2) do
			tbl_2_upvw[1] = v_4
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			local var68
		end
	end
end
local var40 = playerAdded
Players.PlayerAdded:Connect(var40)
Players.PlayerRemoving:Connect(function(arg1) -- Line 85, Named "playerRemoving"
	--[[ Upvalues[2]:
		[1]: tbl_upvr_2 (readonly)
		[2]: tbl_2_upvw (read and write)
	]]
	tbl_upvr_2[arg1] = nil
	local var73 = 1
	tbl_2_upvw = {}
	for _, v_5 in pairs(tbl_upvr_2) do
		tbl_2_upvw[var73] = v_5
		var73 += 1
	end
end)
for _, v_6 in ipairs(Players:GetPlayers()) do
	var40(v_6)
end
tbl_2_upvw = {}
local var80_upvw = tbl_2_upvw
for _, v_7 in pairs(tbl_upvr_2) do
	var80_upvw[1] = v_7
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	local var84
end
tbl_upvr_2 = nil
local var85_upvw = tbl_upvr_2
local var86_upvw
CurrentCamera_upvr:GetPropertyChangedSignal("CameraSubject"):Connect(function() -- Line 119
	--[[ Upvalues[2]:
		[1]: CurrentCamera_upvr (readonly)
		[2]: var86_upvw (read and write)
	]]
	local CameraSubject = CurrentCamera_upvr.CameraSubject
	if CameraSubject:IsA("Humanoid") then
		var86_upvw = CameraSubject.RootPart
	else
		if CameraSubject:IsA("BasePart") then
			var86_upvw = CameraSubject
			return
		end
		var86_upvw = nil
	end
end)
local HumanoidIgnoreTag_upvr = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("HumanoidEngine"):WaitForChild("HumanoidProperties")).HumanoidIgnoreTag
local function canOcclude_upvr(arg1) -- Line 130, Named "canOcclude"
	--[[ Upvalues[2]:
		[1]: HumanoidIgnoreTag_upvr (readonly)
		[2]: var85_upvw (read and write)
	]]
	local var90 = 1 - (1 - arg1.Transparency) * (1 - arg1.LocalTransparencyModifier)
	local CanCollide = arg1.CanCollide
	local function INLINED() -- Internal function, doesn't exist in bytecode
		CanCollide = false
		return var90 == 1
	end
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		CanCollide = not arg1:HasTag(HumanoidIgnoreTag_upvr)
		return CanCollide
	end
	if CanCollide and (var90 < 0.25 or INLINED() and INLINED_2()) then
		CanCollide = false
		if var85_upvw ~= (arg1:GetRootPart() or arg1) then
			CanCollide = not arg1:IsA("TrussPart")
		end
	end
	return CanCollide
end
local tbl_upvr = {Vector2.new(0.4, 0), Vector2.new(-0.4, 0), Vector2.new(0, -0.4), Vector2.new(0, 0.4), Vector2.new(0, 0.2)}
local function getCollisionPoint_upvr(arg1, arg2) -- Line 164, Named "getCollisionPoint"
	--[[ Upvalues[2]:
		[1]: var80_upvw (read and write)
		[2]: new_upvr (readonly)
	]]
	repeat
		local workspace_FindPartOnRayWithIgnoreList_result1_2, workspace_FindPartOnRayWithIgnoreList_result2 = workspace:FindPartOnRayWithIgnoreList(new_upvr(arg1, arg2), var80_upvw, false, true)
		if workspace_FindPartOnRayWithIgnoreList_result1_2 then
			if workspace_FindPartOnRayWithIgnoreList_result1_2.CanCollide then
				for i_9 = #var80_upvw, #var80_upvw + 1, -1 do
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					var80_upvw[i_9] = nil
					local _
				end
				return workspace_FindPartOnRayWithIgnoreList_result2, true
			end
			var80_upvw[#var80_upvw + 1] = workspace_FindPartOnRayWithIgnoreList_result1_2
		end
	until not workspace_FindPartOnRayWithIgnoreList_result1_2
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	for i_10 = #var80_upvw, #var80_upvw + 1, -1 do
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var80_upvw[i_10] = nil
		local _
	end
	return arg1 + arg2, false
end
local function queryPoint_upvr(arg1, arg2, arg3, arg4) -- Line 186, Named "queryPoint"
	--[[ Upvalues[4]:
		[1]: var80_upvw (read and write)
		[2]: NearPlaneZ_upvw (read and write)
		[3]: new_upvr (readonly)
		[4]: canOcclude_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	debug.profilebegin("queryPoint")
	local var105 = arg3 + NearPlaneZ_upvw
	local var106 = arg1 + arg2 * var105
	local var107 = arg1
	local var108
	repeat
		local new_upvr_result1 = new_upvr(var107, var106 - var107)
		local workspace_FindPartOnRayWithIgnoreList_result1, workspace_FindPartOnRayWithIgnoreList_result2_2 = workspace:FindPartOnRayWithIgnoreList(new_upvr_result1, var80_upvw, false, true)
		if workspace_FindPartOnRayWithIgnoreList_result1 then
			if 64 > 0 + 1 then
				new_upvr_result1 = false
			else
				new_upvr_result1 = true
			end
			if canOcclude_upvr(workspace_FindPartOnRayWithIgnoreList_result1) or new_upvr_result1 then
				local tbl = {workspace_FindPartOnRayWithIgnoreList_result1}
				if workspace:FindPartOnRayWithWhitelist(new_upvr(var106, workspace_FindPartOnRayWithIgnoreList_result2_2 - var106), tbl, true) and not new_upvr_result1 then
					local var113 = false
					if arg4 then
						local workspace_FindPartOnRayWithWhitelist_result1 = workspace:FindPartOnRayWithWhitelist(new_upvr(arg4, var106 - arg4), tbl, true)
						if not workspace_FindPartOnRayWithWhitelist_result1 then
							workspace_FindPartOnRayWithWhitelist_result1 = workspace:FindPartOnRayWithWhitelist(new_upvr(var106, arg4 - var106), tbl, true)
						end
						var113 = workspace_FindPartOnRayWithWhitelist_result1
					end
					if var113 then
						local _ = (workspace_FindPartOnRayWithIgnoreList_result2_2 - arg1).Magnitude
					elseif var105 < var108 then
						var108 = (workspace_FindPartOnRayWithIgnoreList_result2_2 - arg1).Magnitude
						-- KONSTANTWARNING: GOTO [93] #80
					end
				else
				end
			end
			var80_upvw[#var80_upvw + 1] = workspace_FindPartOnRayWithIgnoreList_result1
		end
	until (workspace_FindPartOnRayWithIgnoreList_result2_2 - arg1).Magnitude < math.huge and not workspace_FindPartOnRayWithIgnoreList_result1
	for i_11 = #var80_upvw, #var80_upvw + 1, -1 do
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var80_upvw[i_11] = nil
		local _
	end
	debug.profileend()
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return var108 - NearPlaneZ_upvw, (workspace_FindPartOnRayWithIgnoreList_result2_2 - arg1).Magnitude - NearPlaneZ_upvw
end
local function queryViewport_upvr(arg1, arg2) -- Line 246, Named "queryViewport"
	--[[ Upvalues[5]:
		[1]: CurrentCamera_upvr (readonly)
		[2]: var24_upvw (read and write)
		[3]: var27_upvw (read and write)
		[4]: NearPlaneZ_upvw (read and write)
		[5]: queryPoint_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	debug.profilebegin("queryViewport")
	local ViewportSize_3 = CurrentCamera_upvr.ViewportSize
	local var126
	for i_12 = 0, 1 do
		for i_13 = 0, 1 do
			local queryPoint_result1, queryPoint_upvr_result2 = queryPoint_upvr(arg1.p + NearPlaneZ_upvw * ((arg1.rightVector) * ((i_12 - 0.5) * var24_upvw) + (arg1.upVector) * ((i_13 - 0.5) * var27_upvw)), -arg1.lookVector, arg2, CurrentCamera_upvr:ViewportPointToRay(ViewportSize_3.x * i_12, ViewportSize_3.y * i_13).Origin)
			if queryPoint_upvr_result2 < math.huge then
			end
			if queryPoint_result1 < var126 then
				var126 = queryPoint_result1
			end
		end
	end
	debug.profileend()
	return var126, queryPoint_upvr_result2
end
local min_upvr = math.min
local function testPromotion_upvr(arg1, arg2, arg3) -- Line 287, Named "testPromotion"
	--[[ Upvalues[4]:
		[1]: getCollisionPoint_upvr (readonly)
		[2]: min_upvr (readonly)
		[3]: queryPoint_upvr (readonly)
		[4]: tbl_upvr (readonly)
	]]
	debug.profilebegin("testPromotion")
	local p = arg1.p
	debug.profilebegin("extrapolate")
	for i_14 = 0, min_upvr(1.25, arg3.rotVelocity.magnitude + (getCollisionPoint_upvr(p, arg3.posVelocity * 1.25) - p).Magnitude / arg3.posVelocity.magnitude), 0.0625 do
		local any_extrapolate_result1 = arg3.extrapolate(i_14)
		if arg2 <= queryPoint_upvr(any_extrapolate_result1.p, -any_extrapolate_result1.lookVector, arg2) then
			return false
		end
	end
	debug.profileend()
	debug.profilebegin("testOffsets")
	for _, v_8 in ipairs(tbl_upvr) do
		local getCollisionPoint_result1 = getCollisionPoint_upvr(p, arg1.rightVector * v_8.x + arg1.upVector * v_8.y)
		if queryPoint_upvr(getCollisionPoint_result1, (p + -arg1.lookVector * arg2 - getCollisionPoint_result1).Unit, arg2) == math.huge then
			return false
		end
	end
	debug.profileend()
	debug.profileend()
	return true
end
return function(arg1, arg2, arg3) -- Line 336, Named "Popper"
	--[[ Upvalues[4]:
		[1]: var85_upvw (read and write)
		[2]: var86_upvw (read and write)
		[3]: queryViewport_upvr (readonly)
		[4]: testPromotion_upvr (readonly)
	]]
	debug.profilebegin("popper")
	local var139
	local function INLINED_3() -- Internal function, doesn't exist in bytecode
		var139 = var86_upvw:GetRootPart()
		return var139
	end
	if not var86_upvw or not INLINED_3() then
		var139 = var86_upvw
	end
	var85_upvw = var139
	var139 = arg2
	local queryViewport_result1, queryViewport_result2 = queryViewport_upvr(arg1, arg2)
	if queryViewport_result2 < var139 then
		var139 = queryViewport_result2
	end
	if queryViewport_result1 < var139 and testPromotion_upvr(arg1, arg2, arg3) then
		var139 = queryViewport_result1
	end
	var85_upvw = nil
	debug.profileend()
	return var139
end