-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:13
-- Luau version 6, Types version 3
-- Time taken: 0.000723 seconds

local function _(arg1) -- Line 6, Named "getWidth"
	return arg1 * 0.6596491228070176
end
return {
	getSize = function(arg1, arg2) -- Line 10, Named "getSize"
		local minimum = math.min(math.round(arg1.Y * 0.7), 285)
		if not arg2 then
			minimum *= 0.45614035087719296
		end
		return Vector2.new(minimum * 0.6596491228070176, minimum)
	end;
}