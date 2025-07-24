-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:55:51
-- Luau version 6, Types version 3
-- Time taken: 0.001505 seconds

local module_upvr = {
	normalizeStickByDeadzone = function(arg1, arg2) -- Line 15, Named "normalizeStickByDeadzone"
		local Magnitude = arg1.Magnitude
		local var3 = arg2 or 0.2
		if Magnitude < var3 then
			return Vector2.new(0, 0)
		end
		return (Magnitude - var3) / (1 - var3) * arg1.Unit
	end;
}
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("AXSetAngularVelocityIsOptional", false)
function module_upvr.rotateAndZoom(arg1, arg2, arg3, arg4, arg5) -- Line 25
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr (readonly)
	]]
	local any_normalizeStickByDeadzone_result1 = module_upvr.normalizeStickByDeadzone(Vector2.new(arg1.Position.X, arg1.Position.Y))
	if any_normalizeStickByDeadzone_result1 == Vector2.new(0, 0) then
	else
		if game_DefineFastFlag_result1_upvr then
			if arg3 then
				arg3(0)
				-- KONSTANTWARNING: GOTO [33] #26
			end
		else
			arg3(0)
		end
		if arg4 and 0.5 < math.abs(any_normalizeStickByDeadzone_result1.X) then
			arg4(arg2 * any_normalizeStickByDeadzone_result1.X * 2.0943951023931953)
		end
		if arg5 and 0.5 < math.abs(any_normalizeStickByDeadzone_result1.Y) then
			arg5(arg2 * -any_normalizeStickByDeadzone_result1.Y * 10)
		end
	end
end
return module_upvr