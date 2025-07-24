-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:28
-- Luau version 6, Types version 3
-- Time taken: 0.000462 seconds

local RetrievalStatus_upvr = require(script:FindFirstAncestor("VirtualEvents").Parent.Http).Enum.RetrievalStatus
return function(arg1) -- Line 16, Named "getRetrievalStatusFromApolloQuery"
	--[[ Upvalues[1]:
		[1]: RetrievalStatus_upvr (readonly)
	]]
	if arg1.loading then
		return RetrievalStatus_upvr.Fetching
	end
	if arg1.data then
		return RetrievalStatus_upvr.Done
	end
	if arg1.error then
		return RetrievalStatus_upvr.Failed
	end
	return RetrievalStatus_upvr.NotStarted
end