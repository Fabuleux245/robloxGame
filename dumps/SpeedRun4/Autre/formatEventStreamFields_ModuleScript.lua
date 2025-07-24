-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:29:32
-- Luau version 6, Types version 3
-- Time taken: 0.000983 seconds

local Cryo_upvr = require(script:FindFirstAncestor("SocialLuaAnalytics").Parent.Cryo)
local HttpService_upvr = game:GetService("HttpService")
return function(arg1) -- Line 6, Named "formatEventStreamFields"
	--[[ Upvalues[2]:
		[1]: Cryo_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	return Cryo_upvr.Dictionary.map(arg1, function(arg1_2, arg2) -- Line 7
		--[[ Upvalues[1]:
			[1]: HttpService_upvr (copied, readonly)
		]]
		if type(arg1_2) == "table" then
			local pcall_result1, pcall_result2 = pcall(function() -- Line 9
				--[[ Upvalues[2]:
					[1]: HttpService_upvr (copied, readonly)
					[2]: arg1_2 (readonly)
				]]
				return HttpService_upvr:JSONEncode(arg1_2)
			end)
			if pcall_result1 then
				return pcall_result2, arg2
			end
			return "", arg2
		end
		return tostring(arg1_2), arg2
	end)
end