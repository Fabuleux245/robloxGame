-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:59:20
-- Luau version 6, Types version 3
-- Time taken: 0.000523 seconds

local HttpService_upvr = game:GetService("HttpService")
return function(arg1) -- Line 3, Named "getDecodedJSON"
	--[[ Upvalues[1]:
		[1]: HttpService_upvr (readonly)
	]]
	local pcall_result1, pcall_result2 = pcall(function() -- Line 4
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return HttpService_upvr:JSONDecode(arg1)
	end)
	if pcall_result1 then
		return pcall_result2
	end
	if _G.__TEST_SUITE_PACKAGE__ or _G.__TESTEZ_RUNNING_TEST__ then
		return nil
	end
	warn(debug.traceback("Failed to decode JSON: "..arg1))
	return nil
end