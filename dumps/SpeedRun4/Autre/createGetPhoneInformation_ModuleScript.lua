-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:56:04
-- Luau version 6, Types version 3
-- Time taken: 0.000687 seconds

local ACCOUNT_INFORMATION_URL_upvr = require(script.Parent.Parent.ACCOUNT_INFORMATION_URL)
return function(arg1) -- Line 7
	--[[ Upvalues[1]:
		[1]: ACCOUNT_INFORMATION_URL_upvr (readonly)
	]]
	return arg1.roduxNetworking.GET({
		Name = "GetPhoneInformation";
	}, function(arg1_2) -- Line 10
		--[[ Upvalues[1]:
			[1]: ACCOUNT_INFORMATION_URL_upvr (copied, readonly)
		]]
		return arg1_2(ACCOUNT_INFORMATION_URL_upvr):path("v1"):path("phone")
	end)
end