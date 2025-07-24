-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:50:51
-- Luau version 6, Types version 3
-- Time taken: 0.000512 seconds

return {
	new = function(arg1) -- Line 9, Named "new"
		local module = {}
		local var3_upvr = arg1
		if not var3_upvr then
			var3_upvr = {}
		end
		function module.getLayerData(arg1_2) -- Line 14
			--[[ Upvalues[1]:
				[1]: var3_upvr (readonly)
			]]
			return var3_upvr[arg1_2]
		end
		function module.logUserLayerExposure(arg1_3) -- Line 18
			--[[ Upvalues[1]:
				[1]: var3_upvr (readonly)
			]]
			return var3_upvr[arg1_3]
		end
		return module
	end;
}