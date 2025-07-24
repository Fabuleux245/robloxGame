-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:18
-- Luau version 6, Types version 3
-- Time taken: 0.000379 seconds

local RequestType_upvr = require(script.Parent.Parent.Enums.RequestType)
return function(arg1) -- Line 5
	--[[ Upvalues[1]:
		[1]: RequestType_upvr (readonly)
	]]
	local var3
	if arg1.promptRequest.requestType == RequestType_upvr.None then
		var3 = false
	else
		var3 = true
	end
	return var3
end