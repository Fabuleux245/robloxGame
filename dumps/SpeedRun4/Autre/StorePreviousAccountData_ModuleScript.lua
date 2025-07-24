-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:21:10
-- Luau version 6, Types version 3
-- Time taken: 0.000801 seconds

local AuthCommon = script:FindFirstAncestor("AuthCommon")
local User_upvr = require(AuthCommon.Thunks.User)
local AppStorageUtilities_upvr = require(AuthCommon.Utils.AppStorageUtilities)
return function() -- Line 5
	--[[ Upvalues[2]:
		[1]: User_upvr (readonly)
		[2]: AppStorageUtilities_upvr (readonly)
	]]
	local any_fromLocalStorage_result1 = User_upvr.fromLocalStorage()
	local var6
	if any_fromLocalStorage_result1 == nil or any_fromLocalStorage_result1.userId == -1 then
	else
		if any_fromLocalStorage_result1.username == nil or any_fromLocalStorage_result1.username == "" then return end
		local any_getPreviousAccountsList_result1 = AppStorageUtilities_upvr.getPreviousAccountsList()
		local tbl = {}
		var6 = any_fromLocalStorage_result1.username
		tbl.username = var6
		if any_fromLocalStorage_result1.displayName and any_fromLocalStorage_result1.displayName ~= "nil" then
			var6 = any_fromLocalStorage_result1.displayName
		else
			var6 = ""
		end
		tbl.displayName = var6
		var6 = os.time()
		tbl.timestamp = var6
		any_getPreviousAccountsList_result1[tostring(any_fromLocalStorage_result1.userId)] = tbl
		AppStorageUtilities_upvr.setPreviousAccountsList(any_getPreviousAccountsList_result1)
		AppStorageUtilities_upvr.flush()
	end
end