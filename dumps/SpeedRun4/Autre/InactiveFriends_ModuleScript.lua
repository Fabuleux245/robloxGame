-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:30:36
-- Luau version 6, Types version 3
-- Time taken: 0.000534 seconds

local dependencies = require(script:FindFirstAncestor("FriendsLanding").dependencies)
return dependencies.Rodux.createReducer({}, {
	[dependencies.FriendsNetworking.GetInactiveFriends.Succeeded.name] = function(arg1, arg2) -- Line 10
		local module = {}
		for _, v in pairs(arg2.responseBody.data) do
			module[tostring(v.id)] = true
		end
		return module
	end;
})