-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:14
-- Luau version 6, Types version 3
-- Time taken: 0.000702 seconds

local HttpService_upvr = game:GetService("HttpService")
local FStringMilkyWayStoreUserAgent_upvr = require(game:GetService("CorePackages").Workspace.Packages.SharedFlags).FStringMilkyWayStoreUserAgent
return function() -- Line 5
	--[[ Upvalues[2]:
		[1]: HttpService_upvr (readonly)
		[2]: FStringMilkyWayStoreUserAgent_upvr (readonly)
	]]
	local var4
	if string.find(HttpService_upvr:GetUserAgent(), FStringMilkyWayStoreUserAgent_upvr) == nil then
		var4 = false
	else
		var4 = true
	end
	return var4
end