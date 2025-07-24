-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:42:46
-- Luau version 6, Types version 3
-- Time taken: 0.000895 seconds

local llama_upvr = require(script:FindFirstAncestor("SocialReducerAdaptors").dependencies).llama
return function(arg1, arg2, arg3) -- Line 14
	--[[ Upvalues[1]:
		[1]: llama_upvr (readonly)
	]]
	return function(arg1_2, arg2_2) -- Line 15
		--[[ Upvalues[4]:
			[1]: arg3 (readonly)
			[2]: arg2 (readonly)
			[3]: llama_upvr (copied, readonly)
			[4]: arg1 (readonly)
		]]
		local var4 = arg1_2
		if not var4 then
			var4 = arg3
		end
		var4 = {}
		local var5 = var4
		var5[1] = arg2_2
		local var6 = arg2[arg2_2.type]
		if var6 then
			var5 = var6(arg2_2)
		end
		return llama_upvr.List.reduce(var5, arg1, var4)
	end
end