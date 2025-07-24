-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:41
-- Luau version 6, Types version 3
-- Time taken: 0.005702 seconds

local RobloxReplicatedStorage_upvr = game:GetService("RobloxReplicatedStorage")
local Promise_upvr = require(game:GetService("CorePackages").Packages.Promise)
local cframe_upvr = CFrame.new(Vector3.new(0, 150, 0))
local module_upvr = {}
module_upvr.__index = module_upvr
local Players_upvr = game:GetService("Players")
local function setupCharacterModels_upvr(arg1) -- Line 25, Named "setupCharacterModels"
	--[[ Upvalues[2]:
		[1]: Players_upvr (readonly)
		[2]: RobloxReplicatedStorage_upvr (readonly)
	]]
	local any_CreateHumanoidModelFromDescription_result1_2 = Players_upvr:CreateHumanoidModelFromDescription(Instance.new("HumanoidDescription"), Enum.HumanoidRigType.R6)
	local any_CreateHumanoidModelFromDescription_result1 = Players_upvr:CreateHumanoidModelFromDescription(Instance.new("HumanoidDescription"), Enum.HumanoidRigType.R15)
	any_CreateHumanoidModelFromDescription_result1_2.Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
	any_CreateHumanoidModelFromDescription_result1.Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
	any_CreateHumanoidModelFromDescription_result1_2.HumanoidRootPart.Anchored = true
	any_CreateHumanoidModelFromDescription_result1.HumanoidRootPart.Anchored = true
	any_CreateHumanoidModelFromDescription_result1_2.Parent = RobloxReplicatedStorage_upvr
	any_CreateHumanoidModelFromDescription_result1.Parent = RobloxReplicatedStorage_upvr
	any_CreateHumanoidModelFromDescription_result1_2.HumanoidRootPart.CFrame = CFrame.new(arg1)
	any_CreateHumanoidModelFromDescription_result1:SetPrimaryPartCFrame(any_CreateHumanoidModelFromDescription_result1_2.HumanoidRootPart.CFrame)
	return any_CreateHumanoidModelFromDescription_result1_2, any_CreateHumanoidModelFromDescription_result1
end
function module_upvr.new(arg1, arg2, arg3, arg4) -- Line 51
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: setupCharacterModels_upvr (readonly)
		[3]: RobloxReplicatedStorage_upvr (readonly)
	]]
	local module = {}
	setmetatable(module, module_upvr)
	module.mockApplyDescription = arg4
	local setupCharacterModels_upvr_result1, setupCharacterModels_result2 = setupCharacterModels_upvr(arg2)
	module.r6 = setupCharacterModels_upvr_result1
	module.r15current = setupCharacterModels_result2
	module.r15offScreen = setupCharacterModels_result2:Clone()
	module.r15offScreen.Parent = RobloxReplicatedStorage_upvr
	module.avatarType = arg3
	module.worldModelRef = arg1
	module.inProgressPromise = nil
	module.waitingPromise = nil
	module.r6Promise = nil
	module.destroyed = false
	return module
end
function module_upvr.setupAnimations(arg1, arg2, arg3) -- Line 83
	arg2.Parent = arg1.r6
	arg3.Parent = arg1.r15current
	arg3.Archivable = true
	local clone = arg3:Clone()
	clone.Parent = arg1.r15offScreen
	clone.Archivable = false
	arg3.Archivable = false
end
function module_upvr.getCurrentCharacter(arg1) -- Line 93
	if arg1.avatarType == Enum.HumanoidRigType.R15 then
		return arg1.r15current
	end
	return arg1.r6
end
function module_upvr.isR15(arg1) -- Line 101
	local var12
	if arg1.avatarType ~= Enum.HumanoidRigType.R15 then
		var12 = false
	else
		var12 = true
	end
	return var12
end
function module_upvr.syncRotation(arg1, arg2, arg3) -- Line 105
	local _, _, _, any_components_result4, any_components_result5, any_components_result6, any_components_result7, any_components_result8, any_components_result9, any_components_result10, any_components_result11, any_components_result12 = arg2.HumanoidRootPart.CFrame:components()
	local p = arg3.HumanoidRootPart.CFrame.p
	arg3.HumanoidRootPart.CFrame = CFrame.new(p.X, p.Y, p.Z, any_components_result4, any_components_result5, any_components_result6, any_components_result7, any_components_result8, any_components_result9, any_components_result10, any_components_result11, any_components_result12)
end
local function hasLayeredAccessoryUpdates_upvr(arg1, arg2) -- Line 113, Named "hasLayeredAccessoryUpdates"
	local any_GetAccessories_result1_2 = arg1:GetAccessories(false)
	local any_GetAccessories_result1 = arg2:GetAccessories(false)
	if #any_GetAccessories_result1 == 0 then
		return false
	end
	if #any_GetAccessories_result1_2 ~= #any_GetAccessories_result1 then
		return true
	end
	for _, v in ipairs(any_GetAccessories_result1_2) do
		({})[v.AssetId] = true
		local var40
	end
	for _, v_2 in ipairs(any_GetAccessories_result1) do
		if not var40[v_2.AssetId] then
			return true
		end
	end
	return false
end
local function _(arg1) -- Line 139, Named "hasWrapLayer"
	local var44
	if arg1:FindFirstChildWhichIsA("WrapLayer", true) == nil then
		var44 = false
	else
		var44 = true
	end
	return var44
end
function module_upvr._doUpdateR6(arg1, arg2) -- Line 143
	--[[ Upvalues[1]:
		[1]: Promise_upvr (readonly)
	]]
	return Promise_upvr.new(function(arg1_2, arg2_2) -- Line 144
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
		]]
		arg1.r6.Parent = arg1.worldModelRef:getValue()
		if arg1.mockApplyDescription then
			arg1.mockApplyDescription(arg1.r6, arg2)
		else
			arg1.r6.Humanoid:ApplyDescription(arg2)
		end
		arg1_2(arg1:getCurrentCharacter())
	end)
end
function module_upvr._doSimpleUpdateR15(arg1, arg2) -- Line 156
	--[[ Upvalues[1]:
		[1]: Promise_upvr (readonly)
	]]
	return Promise_upvr.new(function(arg1_3, arg2_3) -- Line 157
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
		]]
		arg1.r15current.Parent = arg1.worldModelRef:getValue()
		if arg1.mockApplyDescription then
			arg1.mockApplyDescription(arg1.r15current, arg2)
		else
			arg1.r15current.Humanoid:ApplyDescription(arg2)
		end
		arg1_3(arg1.r15current)
	end)
end
function module_upvr._updateOffscreenR15(arg1, arg2) -- Line 169
	--[[ Upvalues[2]:
		[1]: Promise_upvr (readonly)
		[2]: cframe_upvr (readonly)
	]]
	return Promise_upvr.new(function(arg1_4, arg2_4) -- Line 170
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: cframe_upvr (copied, readonly)
			[3]: arg2 (readonly)
		]]
		arg1.r15offScreen.HumanoidRootPart.CFrame = cframe_upvr
		arg1.r15offScreen.Parent = arg1.worldModelRef:getValue()
		if arg1.mockApplyDescription then
			arg1.mockApplyDescription(arg1.r15offScreen, arg2)
		else
			arg1.r15offScreen.Humanoid:ApplyDescription(arg2)
		end
		arg1_4(arg1.r15offScreen)
	end)
end
local game_DefineFastInt_result1_upvr = game:DefineFastInt("InspectAndBuyClusterCompositionTimeoutMs", 3000)
local function waitForClusterCompositionFinished_upvr(arg1) -- Line 186, Named "waitForClusterCompositionFinished"
	--[[ Upvalues[2]:
		[1]: Promise_upvr (readonly)
		[2]: game_DefineFastInt_result1_upvr (readonly)
	]]
	local var49
	if arg1:FindFirstChildWhichIsA("WrapLayer", true) == nil then
		var49 = false
	else
		var49 = true
	end
	if var49 then
		var49 = Promise_upvr.race
		var49 = var49({Promise_upvr.fromEvent(arg1.Humanoid.ClusterCompositionFinished), Promise_upvr.delay(game_DefineFastInt_result1_upvr * 0.001)})
		var49 = var49:andThen(function() -- Line 193
			return true
		end)
		return var49
	end
	var49 = Promise_upvr.resolve(false)
	return var49
end
function module_upvr._completeUpdate(arg1) -- Line 201
	--[[ Upvalues[2]:
		[1]: cframe_upvr (readonly)
		[2]: RobloxReplicatedStorage_upvr (readonly)
	]]
	arg1.r15offScreen.HumanoidRootPart.CFrame = arg1.r15current.HumanoidRootPart.CFrame
	arg1.r15current.HumanoidRootPart.CFrame = cframe_upvr
	arg1.r15current.Parent = RobloxReplicatedStorage_upvr
	arg1.r15offScreen = arg1.r15current
	arg1.r15current = arg1.r15offScreen
	return arg1.r15current
end
function module_upvr._doUpdateR15(arg1, arg2) -- Line 213
	--[[ Upvalues[2]:
		[1]: hasLayeredAccessoryUpdates_upvr (readonly)
		[2]: waitForClusterCompositionFinished_upvr (readonly)
	]]
	if not hasLayeredAccessoryUpdates_upvr(arg1.r15current.Humanoid:GetAppliedDescription(), arg2) then
		return arg1:_doSimpleUpdateR15(arg2)
	end
	arg1.inProgressPromise = arg1:_updateOffscreenR15(arg2):andThen(waitForClusterCompositionFinished_upvr):andThen(function() -- Line 221
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:_completeUpdate()
	end)
	return arg1.inProgressPromise
end
function module_upvr.maybeUpdateCharacter(arg1, arg2) -- Line 234
	--[[ Upvalues[1]:
		[1]: Promise_upvr (readonly)
	]]
	if arg1.avatarType == Enum.HumanoidRigType.R6 then
		arg1.r6Promise = arg1:_doUpdateR6(arg2)
		return arg1.r6Promise
	end
	if arg1.inProgressPromise and arg1.inProgressPromise:getStatus() == Promise_upvr.Status.Started then
		local waitingPromise_2 = arg1.waitingPromise
		arg1.waitingPromise = arg1.inProgressPromise:andThen(function() -- Line 245
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
			]]
			return arg1:_doUpdateR15(arg2)
		end)
		if waitingPromise_2 then
			waitingPromise_2:cancel()
		end
		return arg1.waitingPromise
	end
	return arg1:_doUpdateR15(arg2)
end
function module_upvr.switchAvatarType(arg1, arg2) -- Line 260
	--[[ Upvalues[1]:
		[1]: RobloxReplicatedStorage_upvr (readonly)
	]]
	if arg2 == arg1.avatarType then
		return arg1:getCurrentCharacter()
	end
	arg1:_cancelPromises()
	arg1.avatarType = arg2
	local var55
	local var56
	if arg2 == Enum.HumanoidRigType.R6 then
		var55 = arg1.r6
		var56 = arg1.r15current
	else
		var55 = arg1.r15current
		var56 = arg1.r6
	end
	var56.Parent = RobloxReplicatedStorage_upvr
	var56.Humanoid:UnequipTools()
	arg1:syncRotation(var56, var55)
	return var55
end
function module_upvr.start(arg1) -- Line 286
end
local function _(arg1) -- Line 288, Named "cancelPromise"
	if arg1 then
		arg1:cancel()
	end
end
function module_upvr._cancelPromises(arg1) -- Line 294
	local inProgressPromise = arg1.inProgressPromise
	if inProgressPromise then
		inProgressPromise:cancel()
	end
	local waitingPromise = arg1.waitingPromise
	if waitingPromise then
		waitingPromise:cancel()
	end
	local r6Promise = arg1.r6Promise
	if r6Promise then
		r6Promise:cancel()
	end
	arg1.inProgressPromise = nil
	arg1.waitingPromise = nil
	arg1.r6Promise = nil
end
function module_upvr.stop(arg1) -- Line 303
	--[[ Upvalues[1]:
		[1]: RobloxReplicatedStorage_upvr (readonly)
	]]
	arg1.r6.Parent = RobloxReplicatedStorage_upvr
	arg1.r15current.Parent = RobloxReplicatedStorage_upvr
	arg1.r15offScreen.Parent = RobloxReplicatedStorage_upvr
	arg1:_cancelPromises()
end
function module_upvr.onDestroy(arg1) -- Line 311
	arg1:_cancelPromises()
	arg1.r6:Destroy()
	arg1.r15current:Destroy()
	arg1.r15offScreen:Destroy()
end
return module_upvr