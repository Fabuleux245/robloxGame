-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:56:11
-- Luau version 6, Types version 3
-- Time taken: 0.000560 seconds

local checkAndSendEvent_upvr = require(script.Parent.Parent.Utils.checkAndSendEvent)
return function(arg1, arg2, arg3, arg4) -- Line 7
	--[[ Upvalues[1]:
		[1]: checkAndSendEvent_upvr (readonly)
	]]
	local var3
	if type(arg3) ~= "table" then
		var3 = false
	else
		var3 = true
	end
	assert(var3, "Expected suggestions to be a table")
	local tbl = {}
	tbl.state = arg2
	var3 = `[{table.concat(arg3, ',')}]`
	tbl.suggestions = var3
	tbl.field = arg4
	var3 = checkAndSendEvent_upvr
	var3(arg1, "usernameSuggestionShown", tbl)
end