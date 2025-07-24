-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:37:09
-- Luau version 6, Types version 3
-- Time taken: 0.002602 seconds

local VRService_upvr = require(script:FindFirstAncestor("VrCommon").Parent.MockableProxyServices).VRService
local module = {
	RayPlaneIntersection = function(arg1, arg2, arg3) -- Line 17, Named "RayPlaneIntersection"
		local unit = arg2.unit
		local Unit = arg1.Unit
		local any_Dot_result1 = unit:Dot(Unit.Direction)
		if any_Dot_result1 == 0 then
			return nil
		end
		local var6 = unit:Dot(arg3 - Unit.Origin) / any_Dot_result1
		if var6 < 0 then
			return nil
		end
		return Unit.Origin + Unit.Direction * var6
	end;
	GetUserCFrameWorldSpace = function(arg1) -- Line 35, Named "GetUserCFrameWorldSpace"
		--[[ Upvalues[1]:
			[1]: VRService_upvr (readonly)
		]]
		local any_GetUserCFrame_result1 = VRService_upvr:GetUserCFrame(arg1)
		if not workspace.CurrentCamera.HeadLocked then
			any_GetUserCFrame_result1 = VRService_upvr:GetUserCFrame(Enum.UserCFrame.Head):Inverse() * any_GetUserCFrame_result1
		end
		return (workspace.CurrentCamera.CFrame) * (CFrame.new(any_GetUserCFrame_result1.p * workspace.CurrentCamera.HeadScale) * (any_GetUserCFrame_result1 - any_GetUserCFrame_result1.p))
	end;
}
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("EnableVRUpdate3")
function module.getCurrentControllerType() -- Line 47
	--[[ Upvalues[2]:
		[1]: game_GetEngineFeature_result1_upvr (readonly)
		[2]: VRService_upvr (readonly)
	]]
	local var13
	local function INLINED_3() -- Internal function, doesn't exist in bytecode
		var13 = VRService_upvr.VRDeviceName
		return var13
	end
	if not game_GetEngineFeature_result1_upvr or not INLINED_3() then
		var13 = nil
	end
	local any_match_result1_2 = var13:match("Oculus")
	if not any_match_result1_2 then
		any_match_result1_2 = var13:match("Meta")
		if not any_match_result1_2 then
			any_match_result1_2 = var13:match("OpenXr")
			if not any_match_result1_2 then
				any_match_result1_2 = var13:match("OpenXR")
			end
		end
	end
	if var13:match("Vive") then
		return "Vive"
	end
	if var13:match("Rift") then
		return "Rift"
	end
	if var13:match("Index") then
		return "Index"
	end
	if any_match_result1_2 then
		return "Touch"
	end
	return "Rift"
end
return module