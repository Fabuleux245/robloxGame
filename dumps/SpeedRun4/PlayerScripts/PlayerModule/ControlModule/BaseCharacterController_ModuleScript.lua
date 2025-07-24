-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:39:19
-- Luau version 6, Types version 3
-- Time taken: 0.001200 seconds

local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.new() -- Line 14
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, module_upvr)
	setmetatable_result1.enabled = false
	setmetatable_result1.moveVector = Vector3.new(0, 0, 0)
	setmetatable_result1.moveVectorIsCameraRelative = true
	setmetatable_result1.isJumping = false
	return setmetatable_result1
end
function module_upvr.OnRenderStepped(arg1, arg2) -- Line 23
end
function module_upvr.GetMoveVector(arg1) -- Line 27
	return arg1.moveVector
end
function module_upvr.IsMoveVectorCameraRelative(arg1) -- Line 31
	return arg1.moveVectorIsCameraRelative
end
function module_upvr.GetIsJumping(arg1) -- Line 35
	return arg1.isJumping
end
function module_upvr.Enable(arg1, arg2) -- Line 41
	error("BaseCharacterController:Enable must be overridden in derived classes and should not be called.")
	return false
end
return module_upvr