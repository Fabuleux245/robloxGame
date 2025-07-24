-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:21:09
-- Luau version 6, Types version 3
-- Time taken: 0.000500 seconds

local AppStorageUtilities_upvr = require(script:FindFirstAncestor("AuthCommon").Utils.AppStorageUtilities)
return function(arg1) -- Line 4
	--[[ Upvalues[1]:
		[1]: AppStorageUtilities_upvr (readonly)
	]]
	local any_getPreviousAccountsList_result1 = AppStorageUtilities_upvr.getPreviousAccountsList()
	if any_getPreviousAccountsList_result1[arg1] ~= nil then
		any_getPreviousAccountsList_result1[arg1] = nil
		AppStorageUtilities_upvr.setPreviousAccountsList(any_getPreviousAccountsList_result1)
		AppStorageUtilities_upvr.flush()
	end
end