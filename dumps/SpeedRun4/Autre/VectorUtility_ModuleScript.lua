-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:43
-- Luau version 6, Types version 3
-- Time taken: 0.000619 seconds

local module_upvr = {
	Vector3FromXYRotPlusDistance = function(arg1, arg2, arg3) -- Line 5
		return CFrame.fromEulerAnglesXYZ(math.rad(arg1), math.rad(arg2), 0).LookVector * arg3
	end;
}
function module_upvr.Vector3FromJson(arg1) -- Line 11
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local unpack_result1, unpack_result2, unpack_result3 = unpack(arg1:split('/'))
	local tonumber_result1_2 = tonumber(unpack_result1)
	local tonumber_result1 = tonumber(unpack_result2)
	if tonumber_result1_2 and tonumber_result1 and tonumber(unpack_result3) then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return module_upvr.Vector3FromXYRotPlusDistance(tonumber_result1_2, tonumber_result1, tonumber(unpack_result3))
	end
	return Vector3.new(0, 0, 0)
end
return module_upvr