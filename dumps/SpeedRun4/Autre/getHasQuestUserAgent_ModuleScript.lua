-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:15
-- Luau version 6, Types version 3
-- Time taken: 0.000383 seconds

local HttpService_upvr = game:GetService("HttpService")
return function() -- Line 3
	--[[ Upvalues[1]:
		[1]: HttpService_upvr (readonly)
	]]
	local var3
	if string.find(HttpService_upvr:GetUserAgent(), "OculusQuest3Store") == nil then
		var3 = false
	else
		var3 = true
	end
	return var3
end