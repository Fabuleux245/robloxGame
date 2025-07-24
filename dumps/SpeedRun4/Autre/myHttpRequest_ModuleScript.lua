-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:29:40
-- Luau version 6, Types version 3
-- Time taken: 0.000624 seconds

local HttpRequest_upvr = require(script:FindFirstAncestor("FriendsLanding").Parent.HttpRequest)
return HttpRequest_upvr.config({
	requestFunction = function(arg1, arg2, arg3) -- Line 8, Named "requestFunction"
		--[[ Upvalues[1]:
			[1]: HttpRequest_upvr (readonly)
		]]
		return HttpRequest_upvr.requestFunctions.RequestInternal(arg1, arg2, arg3)
	end;
	maxRetryCount = game:DefineFastInt("AddFriendsHttpRetryCount", 3);
})