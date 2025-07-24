-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:56:24
-- Luau version 6, Types version 3
-- Time taken: 0.001280 seconds

local CALL_URL_upvr = require(script.Parent.Parent.CALL_URL)
return function(arg1) -- Line 5
	--[[ Upvalues[1]:
		[1]: CALL_URL_upvr (readonly)
	]]
	return arg1.roduxNetworking.GET({
		Name = "GetCallHistory";
	}, function(arg1_2, arg2) -- Line 10
		--[[ Upvalues[1]:
			[1]: CALL_URL_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
		local module = {}
		local var6
		if arg2 then
			var6 = arg2.universeId
		else
			var6 = nil
		end
		module.universeId = var6
		if arg2 then
			var6 = arg2.limit
			-- KONSTANTWARNING: GOTO [28] #23
		end
		-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [27] 22. Error Block 22 start (CF ANALYSIS FAILED)
		var6 = nil
		module.limit = var6
		if arg2 then
			var6 = arg2.cursor
		else
			var6 = nil
		end
		module.cursor = var6
		do
			return arg1_2(CALL_URL_upvr):path("call"):path("v1"):path("get-call-history"):queryArgs(module)
		end
		-- KONSTANTERROR: [27] 22. Error Block 22 end (CF ANALYSIS FAILED)
	end)
end