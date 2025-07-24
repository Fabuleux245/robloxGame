-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:20:54
-- Luau version 6, Types version 3
-- Time taken: 0.000736 seconds

local SetCountryCodeList_upvr = require(script:FindFirstAncestor("AuthCommon").Actions.SetCountryCodeList)
return function(arg1, arg2) -- Line 13
	--[[ Upvalues[1]:
		[1]: SetCountryCodeList_upvr (readonly)
	]]
	local var3 = arg1
	if not var3 then
		var3 = {}
	end
	arg1 = var3
	local var4 = arg1
	assert(var4, "")
	if arg2.type == SetCountryCodeList_upvr.name then
		var4 = arg2.countryCodeList
	end
	return var4
end