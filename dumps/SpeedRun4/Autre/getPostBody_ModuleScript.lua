-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:50
-- Luau version 6, Types version 3
-- Time taken: 0.000702 seconds

local HttpService_upvr = game:GetService("HttpService")
return function(arg1, arg2) -- Line 3
	--[[ Upvalues[1]:
		[1]: HttpService_upvr (readonly)
	]]
	if arg2 == "POST" or arg2 == "PATCH" then
		if type(arg1) == "table" then
			return HttpService_upvr:JSONEncode(arg1)
		end
		if type(arg1) == "string" then
			return arg1
		end
		error("Expected postBody to be a string or table")
	end
	return nil
end