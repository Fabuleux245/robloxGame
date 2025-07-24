-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:56:07
-- Luau version 6, Types version 3
-- Time taken: 0.000444 seconds

local ACCOUNT_SETTINGS_URL_upvr = require(script.Parent.Parent.ACCOUNT_SETTINGS_URL)
return function(arg1) -- Line 6
	--[[ Upvalues[1]:
		[1]: ACCOUNT_SETTINGS_URL_upvr (readonly)
	]]
	return arg1.roduxNetworking.GET({
		Name = "GetEmailSettings";
	}, function(arg1_2) -- Line 9
		--[[ Upvalues[1]:
			[1]: ACCOUNT_SETTINGS_URL_upvr (copied, readonly)
		]]
		return arg1_2(ACCOUNT_SETTINGS_URL_upvr):path("v1"):path("email")
	end)
end