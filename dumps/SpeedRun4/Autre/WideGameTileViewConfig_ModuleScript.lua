-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:34:25
-- Luau version 6, Types version 3
-- Time taken: 0.000916 seconds

return {
	getTileHeight = function(arg1, arg2) -- Line 14, Named "getTileHeight"
		return (arg2 * 0.5625) + (arg1.Global.Space_250 + arg1.Global.Space_250 + arg1.Global.Space_100 + arg1.Global.Space_50)
	end;
	getFooterHeight = function(arg1) -- Line 7, Named "getFooterHeight"
		return arg1.Global.Space_250 + arg1.Global.Space_250 + arg1.Global.Space_100 + arg1.Global.Space_50
	end;
	getMetadataHeight = function(arg1) -- Line 3, Named "getMetadataHeight"
		return arg1.Global.Space_250
	end;
	getPlayButtonHeight = function(arg1) -- Line 18, Named "getPlayButtonHeight"
		return arg1.Global.Size_450
	end;
}