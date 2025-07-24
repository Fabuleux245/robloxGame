-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:08:15
-- Luau version 6, Types version 3
-- Time taken: 0.001836 seconds

return {
	to = function(arg1) -- Line 13, Named "to"
		local var2 = (arg1.R * 0.4122214708 + arg1.G * 0.5363325363 + arg1.B * 0.0514459929) ^ 0.3333333333333333
		local var3 = (arg1.R * 0.2119034982 + arg1.G * 0.6806995451 + arg1.B * 0.1073969566) ^ 0.3333333333333333
		local var4 = (arg1.R * 0.0883024619 + arg1.G * 0.2817188376 + arg1.B * 0.6299787005) ^ 0.3333333333333333
		return Vector3.new(var2 * 0.2104542553 + var3 * 0.793617785 - var4 * 0.0040720468, var2 * 1.9779984951 - var3 * 2.428592205 + var4 * 0.4505937099, var2 * 0.0259040371 + var3 * 0.7827717662 - var4 * 0.808675766)
	end;
	from = function(arg1, arg2) -- Line 31, Named "from"
		local var5 = (arg1.X + arg1.Y * 0.3963377774 + arg1.Z * 0.2158037573) ^ 3
		local var6 = (arg1.X - arg1.Y * 0.1055613458 - arg1.Z * 0.0638541728) ^ 3
		local var7 = (arg1.X - arg1.Y * 0.0894841775 - arg1.Z * 1.291485548) ^ 3
		local var8 = var5 * 4.0767416621 - var6 * 3.3077115913 + var7 * 0.2309699292
		local var9 = var5 * -1.2684380046 + var6 * 2.6097574011 - var7 * 0.3413193965
		local var10 = var5 * -0.0041960863 - var6 * 0.7034186147 + var7 * 1.707614701
		if not arg2 then
			var8 = math.clamp(var8, 0, 1)
			var9 = math.clamp(var9, 0, 1)
			var10 = math.clamp(var10, 0, 1)
		end
		return Color3.new(var8, var9, var10)
	end;
}