-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:55:38
-- Luau version 6, Types version 3
-- Time taken: 0.000978 seconds

local module_upvr = {
	RgbFromHex = function(arg1) -- Line 3, Named "RgbFromHex"
		local var2 = false
		if 0 <= arg1 then
			if arg1 > 16777215 then
				var2 = false
			else
				var2 = true
			end
		end
		assert(var2, "RgbFromHex: Out of range")
		local var3 = arg1 % 256
		local var4 = (arg1 - var3) / 256
		local var5 = var4 % 256
		return (var4 - var5) / 256, var5, var3
	end;
}
function module_upvr.Color3FromHex(arg1) -- Line 15
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return Color3.fromRGB(module_upvr.RgbFromHex(arg1))
end
return module_upvr