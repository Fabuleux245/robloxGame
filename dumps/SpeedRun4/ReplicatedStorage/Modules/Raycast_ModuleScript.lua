-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:21
-- Luau version 6, Types version 3
-- Time taken: 0.006634 seconds

local module_2_upvr = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players_upvr = game:GetService("Players")
local module = require(ReplicatedStorage:WaitForChild("CommonData"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local InputRaycastLength_upvr = require(ReplicatedStorage:WaitForChild("Settings")).InputRaycastLength
function module_2_upvr.ParamsNew(arg1, arg2, arg3, arg4, arg5, ...) -- Line 37
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var8
	if arg1 == "OverlapParams" then
		var8 = OverlapParams.new()
		local var9 = ...
		if var9 ~= nil then
			var8.MaxParts = var9
			local var10
			-- KONSTANTWARNING: GOTO [28] #21
		end
	elseif arg1 == "RaycastParams" then
		var8 = RaycastParams.new()
		local var11 = ...
		if var11 ~= nil then
			var10 = var11
		else
			var10 = true
		end
		var8.IgnoreWater = var10
	end
	if arg2 then
		var8.CollisionGroup = arg2
	end
	if arg4 then
		var8.FilterDescendantsInstances = arg4
	end
	if arg3 then
		var8.FilterType = arg3
	end
	if arg5 ~= nil then
		var8.RespectCanCollide = arg5
	end
	return var8
end
function module_2_upvr.ParamsClone(arg1, arg2) -- Line 96
	local var13
	if typeof(arg1) == "OverlapParams" then
		if not arg2 then
			var13 = OverlapParams.new()
			var13.MaxParts = arg1.MaxParts
		else
			var13 = RaycastParams.new()
		end
	elseif typeof(arg1) == "RaycastParams" then
		if not arg2 then
			var13 = RaycastParams.new()
			var13.IgnoreWater = arg1.IgnoreWater
		else
			var13 = OverlapParams.new()
		end
	else
		error(string.format("Expected RaycastParams or OverlapParams, received %s", typeof(arg1)), 2)
	end
	var13.CollisionGroup = arg1.CollisionGroup
	var13.FilterDescendantsInstances = arg1.FilterDescendantsInstances
	var13.FilterType = arg1.FilterType
	var13.RespectCanCollide = arg1.RespectCanCollide
	return var13
end
local tbl = {
	CharacterOnly = module_2_upvr.ParamsNew("RaycastParams", module.CollisionGroups.RaycastCharacter, Enum.RaycastFilterType.Exclude);
	CharacterWorld = module_2_upvr.ParamsNew("RaycastParams", module.CollisionGroups.RaycastCharacterWorld, Enum.RaycastFilterType.Exclude);
	Default = module_2_upvr.ParamsNew("RaycastParams", module.CollisionGroups.Default, Enum.RaycastFilterType.Exclude);
	Legacy = module_2_upvr.ParamsNew("RaycastParams", module.CollisionGroups.Default, Enum.RaycastFilterType.Exclude);
	WorldOnly = module_2_upvr.ParamsNew("RaycastParams", module.CollisionGroups.RaycastWorld, Enum.RaycastFilterType.Exclude);
	WorldCollideableOnly = module_2_upvr.ParamsNew("RaycastParams", module.CollisionGroups.RaycastWorld, Enum.RaycastFilterType.Exclude, nil, true);
}
module_2_upvr.Params = tbl
tbl = workspace.CurrentCamera
local var15_upvw = tbl
if not var15_upvw then
	var15_upvw = Instance.new("Camera")
end
workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function() -- Line 183
	--[[ Upvalues[1]:
		[1]: var15_upvw (read and write)
	]]
	local CurrentCamera = workspace.CurrentCamera
	if not CurrentCamera then
		CurrentCamera = var15_upvw
	end
	var15_upvw = CurrentCamera
end)
function module_2_upvr.RaycastFromViewportPoint(arg1, arg2, arg3) -- Line 187
	--[[ Upvalues[2]:
		[1]: var15_upvw (read and write)
		[2]: InputRaycastLength_upvr (readonly)
	]]
	local any_ViewportPointToRay_result1 = var15_upvw:ViewportPointToRay(arg1.X, arg1.Y)
	local var19 = arg3
	if not var19 then
		var19 = InputRaycastLength_upvr
	end
	return workspace:Raycast(any_ViewportPointToRay_result1.Origin, any_ViewportPointToRay_result1.Direction * var19, arg2)
end
function module_2_upvr.RaycastFromScreenPoint(arg1, arg2, arg3) -- Line 203
	--[[ Upvalues[2]:
		[1]: var15_upvw (read and write)
		[2]: InputRaycastLength_upvr (readonly)
	]]
	local any_ScreenPointToRay_result1 = var15_upvw:ScreenPointToRay(arg1.X, arg1.Y)
	local var21 = arg3
	if not var21 then
		var21 = InputRaycastLength_upvr
	end
	return workspace:Raycast(any_ScreenPointToRay_result1.Origin, any_ScreenPointToRay_result1.Direction * var21, arg2)
end
local LocalPlayer_upvr = Players_upvr.LocalPlayer
local module_3_upvr = require(Modules:WaitForChild("ClientData"))
function module_2_upvr.GetPlayerFromViewportPoint(arg1, arg2, arg3, arg4, arg5) -- Line 224
	--[[ Upvalues[4]:
		[1]: module_2_upvr (readonly)
		[2]: Players_upvr (readonly)
		[3]: LocalPlayer_upvr (readonly)
		[4]: module_3_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 46 start (CF ANALYSIS FAILED)
	if arg3 then
		local CharacterWorld = module_2_upvr.Params.CharacterWorld
	else
	end
	if 0 < #module_2_upvr.Params.CharacterOnly.FilterDescendantsInstances then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		module_2_upvr.Params.CharacterOnly.FilterDescendantsInstances = {}
	end
	-- KONSTANTERROR: [0] 1. Error Block 46 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [95] 74. Error Block 47 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [95.10]
	if nil then
		-- KONSTANTWARNING: GOTO [97] #76
	end
	-- KONSTANTERROR: [95] 74. Error Block 47 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [25] 18. Error Block 8 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [96.9]
	-- KONSTANTERROR: [25] 18. Error Block 8 end (CF ANALYSIS FAILED)
end
function module_2_upvr.LegacyRaycast(arg1, arg2) -- Line 296
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	-- KONSTANTERROR: [56] 40. Error Block 18 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [56.10]
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x3)
	-- KONSTANTERROR: [56] 40. Error Block 18 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
	if arg2 then
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [64.4]
		if nil == "table" then
		else
		end
	else
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if nil then
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [64.11]
		if nil ~= "Default" then
			-- KONSTANTWARNING: GOTO [35] #26
		end
		-- KONSTANTWARNING: GOTO [56] #40
	end
	-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [66] 46. Error Block 17 start (CF ANALYSIS FAILED)
	do
		return nil.Instance, nil.Position, nil.Normal, nil.Material
	end
	-- KONSTANTERROR: [66] 46. Error Block 17 end (CF ANALYSIS FAILED)
end
;({})[1] = module.Tags.HumanoidIgnoreTag
require(Modules:WaitForChild("Utility")).TableFreezeAll(module_2_upvr)
return module_2_upvr