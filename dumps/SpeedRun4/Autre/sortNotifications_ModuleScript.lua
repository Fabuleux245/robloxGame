-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:44:15
-- Luau version 6, Types version 3
-- Time taken: 0.000887 seconds

local function var1_upvr(arg1, arg2) -- Line 1
	local var2
	if arg1.eventDate == "" or arg1.eventDate == nil or arg2.eventDate == "" or arg2.eventDate == nil then
		return true
	end
	var2 = arg1.eventDate
	local var3 = DateTime.fromIsoDate(var2) or nil
	var2 = DateTime.fromIsoDate(arg2.eventDate)
	local var4 = var2 or nil
	if var3 == nil or var4 == nil then
		var2 = true
		return var2
	end
	if var4.UnixTimestampMillis >= var3.UnixTimestampMillis then
		var2 = false
	else
		var2 = true
	end
	return var2
end
return function(arg1) -- Line 16
	--[[ Upvalues[1]:
		[1]: var1_upvr (readonly)
	]]
	local pcall_result1, pcall_result2 = pcall(function() -- Line 17
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: var1_upvr (copied, readonly)
		]]
		local clone = table.clone(arg1)
		table.sort(clone, var1_upvr)
		return clone
	end)
	if pcall_result1 then
		return pcall_result2
	end
	return arg1
end