-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:30:46
-- Luau version 6, Types version 3
-- Time taken: 0.000527 seconds

local HttpService_upvr = game:GetService("HttpService")
return function(arg1) -- Line 3, Named "encodeUserIds"
	--[[ Upvalues[1]:
		[1]: HttpService_upvr (readonly)
	]]
	if arg1 == nil then
		return "[]"
	end
	local pcall_result1, pcall_result2 = pcall(function() -- Line 8
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return HttpService_upvr:JSONEncode(arg1)
	end)
	if pcall_result1 then
		return pcall_result2
	end
	return "[]"
end