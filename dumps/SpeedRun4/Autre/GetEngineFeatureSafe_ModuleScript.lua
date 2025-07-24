-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:28
-- Luau version 6, Types version 3
-- Time taken: 0.000311 seconds

return function(arg1) -- Line 8, Named "GetEngineFeatureSafe"
	local pcall_result1, pcall_result2 = pcall(function() -- Line 9
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return game:GetEngineFeature(arg1)
	end)
	return pcall_result1 and pcall_result2
end