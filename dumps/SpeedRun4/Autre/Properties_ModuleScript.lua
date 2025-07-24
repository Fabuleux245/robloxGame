-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:43:10
-- Luau version 6, Types version 3
-- Time taken: 0.000415 seconds

local module = {
	SpeedAdjustmentTarget = 0.5;
	CursorRadius = 40;
	SelectionRadius = 40;
	OcclusionRadiusScale = 0.7;
	MaxSpeedRelative = 0.7;
	ThumbstickDeadzone = 0.2;
	ScrollingRadius = 15;
	ScrollingSlowDown = 0.25;
	ScrollingSpeed = 1000;
}
setmetatable(module, {
	__index = function(arg1, arg2) -- Line 20, Named "__index"
		error(string.format("%q is not a valid member of properties", tostring(arg2)), 2)
	end;
})
return module