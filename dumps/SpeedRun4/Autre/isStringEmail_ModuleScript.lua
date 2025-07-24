-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:21:17
-- Luau version 6, Types version 3
-- Time taken: 0.000434 seconds

return function(arg1) -- Line 2
	if not arg1 or arg1 == "" then
		return false
	end
	local assert = assert
	assert(arg1, "")
	if string.find(arg1, "^.+@.+%..+$") == nil then
		assert = false
	else
		assert = true
	end
	return assert
end