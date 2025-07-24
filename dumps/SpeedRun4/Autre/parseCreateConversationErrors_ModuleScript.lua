-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:52:16
-- Luau version 6, Types version 3
-- Time taken: 0.001235 seconds

local HttpService_upvr = game:GetService("HttpService")
return function(arg1) -- Line 3, Named "parseCreateConversationErrors"
	--[[ Upvalues[1]:
		[1]: HttpService_upvr (readonly)
	]]
	if arg1.StatusCode == 403 then
		local pcall_result1_2, pcall_result2_2 = pcall(function() -- Line 5
			--[[ Upvalues[2]:
				[1]: HttpService_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			return HttpService_upvr:JSONDecode(arg1.Body)
		end)
		print(">>>", pcall_result1_2, pcall_result2_2)
		if pcall_result1_2 and pcall_result2_2 and pcall_result2_2.reason_code == "participant_chat_disabled" then
			return "participant_chat_disabled"
		end
	end
	return "unknown"
end