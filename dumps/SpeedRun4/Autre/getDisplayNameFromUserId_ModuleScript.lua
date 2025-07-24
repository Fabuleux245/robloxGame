-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:23:10
-- Luau version 6, Types version 3
-- Time taken: 0.000716 seconds

local UserService_upvr = game:GetService("UserService")
function getDisplayNameFromUserId(arg1) -- Line 3
	--[[ Upvalues[1]:
		[1]: UserService_upvr (readonly)
	]]
	local pcall_result1, pcall_result2 = pcall(function() -- Line 4
		--[[ Upvalues[2]:
			[1]: UserService_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return UserService_upvr:GetUserInfosByUserIdsAsync({tonumber(arg1)})[1]
	end)
	if pcall_result1 then
		return pcall_result2.DisplayName
	end
	return ""
end
return getDisplayNameFromUserId