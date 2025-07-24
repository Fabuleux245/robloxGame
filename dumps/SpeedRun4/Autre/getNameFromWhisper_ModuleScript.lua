-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:28:08
-- Luau version 6, Types version 3
-- Time taken: 0.000608 seconds

local function getArgs_upvr(arg1, arg2) -- Line 2, Named "getArgs"
	for _, v in pairs(arg2) do
		local var6 = v..' '
		local string_len_result1 = string.len(var6)
		if string.sub(arg1, 1, string_len_result1):lower() == var6 then
			return string.sub(arg1, string_len_result1 + 1)
		end
	end
	return nil
end
return function(arg1, arg2) -- Line 15
	--[[ Upvalues[1]:
		[1]: getArgs_upvr (readonly)
	]]
	local getArgs_upvr_result1 = getArgs_upvr(arg1, arg2)
	if getArgs_upvr_result1 then
		return string.split(getArgs_upvr_result1, ' ')[1]
	end
	return nil
end