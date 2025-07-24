-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:57:20
-- Luau version 6, Types version 3
-- Time taken: 0.000535 seconds

local PRESENCE_URL_upvr = require(script.Parent.Parent.PRESENCE_URL)
return function(arg1) -- Line 7
	--[[ Upvalues[1]:
		[1]: PRESENCE_URL_upvr (readonly)
	]]
	return arg1.roduxNetworking.POST({
		Name = "SetInvisibilityStatus";
	}, function(arg1_2, arg2) -- Line 10
		--[[ Upvalues[1]:
			[1]: PRESENCE_URL_upvr (copied, readonly)
		]]
		local module = {}
		module.isInvisible = arg2
		return arg1_2(PRESENCE_URL_upvr):path("v1"):path("presence"):path("set-invisibility-status"):body(module)
	end)
end