-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:03
-- Luau version 6, Types version 3
-- Time taken: 0.000790 seconds

local ServerJobsUpdateSearchFilter_upvr = require(script.Parent.Parent.Actions.ServerJobsUpdateSearchFilter)
local Immutable_upvr = require(script.Parent.Parent.Immutable)
return function(arg1, arg2) -- Line 9
	--[[ Upvalues[2]:
		[1]: ServerJobsUpdateSearchFilter_upvr (readonly)
		[2]: Immutable_upvr (readonly)
	]]
	local var4
	if not var4 then
		var4 = {}
		var4.jobsSearchTerm = ""
	end
	if arg2.type == ServerJobsUpdateSearchFilter_upvr.name then
		return Immutable_upvr.Set(var4, "jobsSearchTerm", arg2.searchTerm)
	end
	return var4
end