-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:30:46
-- Luau version 6, Types version 3
-- Time taken: 0.000469 seconds

local Roact_upvr = require(script:FindFirstAncestor("FriendsLanding").dependencies).Roact
return function(arg1, arg2) -- Line 6
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	local var7 = arg1
	for _, v in arg2 do
		var7 = Roact_upvr.createElement(v[1], v[2], {var7})
	end
	return var7
end