-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:28:02
-- Luau version 6, Types version 3
-- Time taken: 0.002386 seconds

local Dictionary_upvr = require(script:FindFirstAncestor("ExpChatShared").Parent.llama).Dictionary
return function(arg1, arg2) -- Line 12, Named "getPlayersFromCommand"
	--[[ Upvalues[1]:
		[1]: Dictionary_upvr (readonly)
	]]
	if not arg2 then
		return {}
	end
	assert(arg2, "will exist")
	local string_lower_result1_2 = string.lower(arg2)
	if string_lower_result1_2 then
		if string.sub(string_lower_result1_2, 1, 1) == '@' then
			local var10 = arg1.byUsername[string.sub(string_lower_result1_2, 2)]
			if var10 then
				return {Dictionary_upvr.join(arg1.byUserId[var10], {
					nameToDisplay = '@'..arg1.byUserId[var10].username;
				})}
			end
		end
	end
	local var13 = arg1.byDisplayName[string_lower_result1_2]
	if not var13 then
		var13 = {}
	end
	return Dictionary_upvr.map(var13, function(arg1_3) -- Line 28
		--[[ Upvalues[2]:
			[1]: Dictionary_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return Dictionary_upvr.join(arg1.byUserId[arg1_3], {
			nameToDisplay = arg1.byUserId[arg1_3].displayName;
		})
	end)
end