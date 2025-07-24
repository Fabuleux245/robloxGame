-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:04:06
-- Luau version 6, Types version 3
-- Time taken: 0.000502 seconds

local Rodux_upvr = require(script.Parent.Parent.Parent.Rodux)
return function(arg1) -- Line 7
	--[[ Upvalues[1]:
		[1]: Rodux_upvr (readonly)
	]]
	return Rodux_upvr.createReducer(false, {
		[arg1.networkingAccountInformation.GetPhoneInformation.Succeeded.name] = function(arg1_2, arg2) -- Line 11
			local responseBody = arg2.responseBody
			if responseBody then
				responseBody = arg2.responseBody.isVerified
			end
			return responseBody
		end;
	})
end