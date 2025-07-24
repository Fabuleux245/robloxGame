-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:23:40
-- Luau version 6, Types version 3
-- Time taken: 0.001527 seconds

return function(arg1, arg2, arg3, arg4, arg5) -- Line 7, Named "checkAndFormatPossibleLink"
	if arg1 == nil or arg1 == "" or typeof(arg1) ~= "string" then
		return false, arg1
	end
	if arg1 == nil then
	else
	end
	assert(true, "Text can't be nil")
	if typeof(arg1) ~= "string" then
	else
	end
	assert(true, "Text must be a string")
	local var1 = arg2 or "{linkStart}"
	local var2 = arg3 or "{linkEnd}"
	if string.find(arg1, var1) ~= nil then
		if string.find(arg1, var2) == nil then
			local _ = false
			-- KONSTANTWARNING: Skipped task `defvar` above
		else
		end
	end
	if true then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return true, string.gsub(arg1, var1, arg4 or "<u><b>"):gsub(var2, arg5 or "</b></u>")
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return true, arg1
end