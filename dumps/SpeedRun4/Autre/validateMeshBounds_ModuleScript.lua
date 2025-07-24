-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:22
-- Luau version 6, Types version 3
-- Time taken: 0.007234 seconds

local Parent = script.Parent.Parent
local function pointInBounds_upvr(arg1, arg2, arg3) -- Line 16, Named "pointInBounds"
	local any_PointToObjectSpace_result1_3 = arg2:PointToObjectSpace(arg1)
	local var11 = false
	if -arg3.X / 2 <= any_PointToObjectSpace_result1_3.X then
		var11 = false
		if any_PointToObjectSpace_result1_3.X <= arg3.X / 2 then
			var11 = false
			if -arg3.Y / 2 <= any_PointToObjectSpace_result1_3.Y then
				var11 = false
				if any_PointToObjectSpace_result1_3.Y <= arg3.Y / 2 then
					var11 = false
					if -arg3.Z / 2 <= any_PointToObjectSpace_result1_3.Z then
						if any_PointToObjectSpace_result1_3.Z > arg3.Z / 2 then
							var11 = false
						else
							var11 = true
						end
					end
				end
			end
		end
	end
	return var11
end
local function _(arg1, arg2) -- Line 26, Named "isSizeWithinBounds"
	local var13 = false
	if arg1.Size.X <= arg2.X then
		var13 = false
		if arg1.Size.Y <= arg2.Y then
			if arg1.Size.Z > arg2.Z then
				var13 = false
			else
				var13 = true
			end
		end
	end
	return var13
end
local function _(arg1) -- Line 30, Named "truncate"
	return math.floor(arg1 * 100) / 100
end
local function getErrors_upvr(arg1, arg2, arg3) -- Line 34, Named "getErrors"
	return {string.format("%s has size larger than max allowed bounding size. The max size for type %s is [%.2f, %.2f, %.2f]", arg1, arg2, math.floor(arg3.X * 100) / 100, math.floor(arg3.Y * 100) / 100, math.floor(arg3.Z * 100) / 100)}
end
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("UGCValidationScaleMinimum", false)
local game_DefineFastInt_result1_upvr = game:DefineFastInt("UGCValidationScaleMinimumThousandths", 10)
local UGCValidationService_upvr = game:GetService("UGCValidationService")
local Analytics_upvr = require(Parent.Analytics)
local getFFlagUGCValidatePartSizeWithinRenderSizeLimits_upvr = require(Parent.flags.getFFlagUGCValidatePartSizeWithinRenderSizeLimits)
return function(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 47, Named "validateMeshBounds"
	--[[ Upvalues[7]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
		[2]: game_DefineFastInt_result1_upvr (readonly)
		[3]: UGCValidationService_upvr (readonly)
		[4]: Analytics_upvr (readonly)
		[5]: pointInBounds_upvr (readonly)
		[6]: getErrors_upvr (readonly)
		[7]: getFFlagUGCValidatePartSizeWithinRenderSizeLimits_upvr (readonly)
	]]
	local isServer = arg7.isServer
	local size_2 = arg5.size
	local var44 = arg1.CFrame * arg2.CFrame * CFrame.new(arg5.offset or Vector3.new(0, 0, 0))
	if 10000 < arg1.Position.X or arg1.Position.X < -10000 or 10000 < arg1.Position.Y or arg1.Position.Y < -10000 or 10000 < arg1.Position.Z or arg1.Position.Z < -10000 then
		return false, {"Position is outside of bounds"}
	end
	if 10000 < var44.Position.X or var44.Position.X < -10000 or 10000 < var44.Position.Y or var44.Position.Y < -10000 or 10000 < var44.Position.Z or var44.Position.Z < -10000 then
		return false, {"Position is outside of bounds"}
	end
	if game_DefineFastFlag_result1_upvr and (arg4.X < game_DefineFastInt_result1_upvr / 1000 or arg4.Y < game_DefineFastInt_result1_upvr / 1000 or arg4.Z < game_DefineFastInt_result1_upvr / 1000) then
		return false, {"Mesh scale is too small"}
	end
	local pcall_result1, pcall_result2 = pcall(function() -- Line 92
		--[[ Upvalues[2]:
			[1]: UGCValidationService_upvr (copied, readonly)
			[2]: arg3 (readonly)
		]]
		return UGCValidationService_upvr:GetEditableMeshVerts(arg3.editableMesh)
	end)
	if not pcall_result1 then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateMeshBounds_FailedToLoadMesh, nil, arg7)
		if isServer ~= nil and isServer then
			error(string.format("Failed to load body part mesh %s. Make sure body part exists and try again.", arg3.fullName))
		end
		return false, {string.format("Failed to load body part mesh %s. Make sure body part exists and try again.", arg3.fullName)}
	end
	for i, v in pairs(pcall_result2) do
		if not pointInBounds_upvr(arg1.CFrame:PointToWorldSpace(v * arg4), var44, size_2) then
			Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateMeshBounds_TooLarge, nil, arg7)
			return false, getErrors_upvr(arg3.context, arg6, size_2)
		end
	end
	if getFFlagUGCValidatePartSizeWithinRenderSizeLimits_upvr() then
		local var55 = false
		if arg1.Size.X <= size_2.X then
			var55 = false
			if arg1.Size.Y <= size_2.Y then
				if arg1.Size.Z > size_2.Z then
					var55 = false
				else
					var55 = true
				end
			end
		end
		if not var55 then
			i = Analytics_upvr
			i = arg7
			Analytics_upvr.reportFailure(i.ErrorType.validateMeshBounds_TooLarge, nil, i)
			i = arg6
			v = size_2
			return false, getErrors_upvr(arg1:GetFullName(), i, v)
		end
	end
	return true
end