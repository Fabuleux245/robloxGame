-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:29:18
-- Luau version 6, Types version 3
-- Time taken: 0.000439 seconds

local dependencies = require(script.Parent.Parent.Parent.dependencies)
local llama_upvr = dependencies.llama
local tutils_upvr = dependencies.tutils
return function(arg1) -- Line 6
	--[[ Upvalues[2]:
		[1]: llama_upvr (readonly)
		[2]: tutils_upvr (readonly)
	]]
	if llama_upvr.isEmpty(arg1) then
		return "{}"
	end
	local string_gsub_result1, string_gsub_result2 = string.gsub(" args: "..tutils_upvr.toString(arg1), "%s+", ' ')
	return string_gsub_result1
end