-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:18:35
-- Luau version 6, Types version 3
-- Time taken: 0.000534 seconds

local any_named_result1_upvr = require(script:FindFirstAncestor("RoactUtils").Parent.AppCommonLib).Symbol.named("NilDependency")
return function(...) -- Line 22, Named "dependencyArray"
	--[[ Upvalues[1]:
		[1]: any_named_result1_upvr (readonly)
	]]
	local module = {}
	for i = 1, select('#', ...) do
		local selected_arg = select(i, ...)
		if selected_arg == nil then
			selected_arg = any_named_result1_upvr
		end
		module[i] = selected_arg
	end
	return module
end