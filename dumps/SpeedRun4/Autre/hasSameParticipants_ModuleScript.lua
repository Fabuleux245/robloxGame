-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:52:01
-- Luau version 6, Types version 3
-- Time taken: 0.000409 seconds

local llama_upvr = require(script:FindFirstAncestor("AppChat").Parent.LuaSocialLibrariesDeps).llama
return function(arg1) -- Line 6
	--[[ Upvalues[1]:
		[1]: llama_upvr (readonly)
	]]
	if #arg1.existing ~= #arg1.new then
		return false
	end
	return llama_upvr.List.equals(llama_upvr.List.sort(arg1.existing), llama_upvr.List.sort(arg1.new))
end