-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:29:18
-- Luau version 6, Types version 3
-- Time taken: 0.005570 seconds

local dependencies = require(script:FindFirstAncestor("FriendsLanding").AddFriends.dependencies)
local t_upvr = dependencies.t
local llama_upvr = dependencies.llama
return function(arg1) -- Line 13
	--[[ Upvalues[2]:
		[1]: t_upvr (readonly)
		[2]: llama_upvr (readonly)
	]]
	assert(t_upvr.table(arg1))
	return llama_upvr.List.sort(arg1, function(arg1_2, arg2) -- Line 19
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var9
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var9 = arg1_2.sentAt.UnixTimestampMillis
			return var9
		end
		if not arg1_2.sentAt or not INLINED_2() then
			var9 = 0
		end
		if not arg2.sentAt or not arg2.sentAt.UnixTimestampMillis then
			local const_number = 0
			local var11
		end
		if var9 ~= const_number then
			if const_number >= var9 then
				var11 = false
			else
				var11 = true
			end
			return var11
		end
		if arg1_2.displayName then
			if not arg2.displayName then
				return true
			end
		end
		if not arg1_2.displayName then
			if arg2.displayName then
				return false
			end
		end
		if arg1_2.displayName then
			if arg2.displayName then
				local string_lower_result1 = string.lower(arg1_2.displayName)
				if string_lower_result1 ~= string.lower(arg2.displayName) then
					if string.lower(arg1_2.displayName) >= string.lower(arg2.displayName) then
						string_lower_result1 = false
					else
						string_lower_result1 = true
					end
					return string_lower_result1
				end
			end
		end
		if arg1_2.username then
			local username = arg2.username
			if username then
				if string.lower(arg1_2.username) >= string.lower(arg2.username) then
					username = false
				else
					username = true
				end
				return username
			end
		end
		if arg1_2.username and not arg2.username then
			return true
		end
		return false
	end)
end