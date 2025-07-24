-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:40:01
-- Luau version 6, Types version 3
-- Time taken: 0.001719 seconds

local messages_upvr = require(script.Parent.Parent.Logging.messages)
return function(arg1, arg2, ...) -- Line 11, Named "logErrorNonFatal"
	--[[ Upvalues[1]:
		[1]: messages_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var3
	if messages_upvr[arg1] ~= nil then
		var3 = messages_upvr[arg1]
	else
		local const_string = "unknownMessage"
		var3 = messages_upvr[const_string]
	end
	local var5_upvw
	if arg2 == nil then
		var5_upvw = string.format("[Fusion] "..var3.."\n(ID: "..const_string..')', ...)
	else
		var3 = var3:gsub("ERROR_MESSAGE", arg2.message)
		var5_upvw = string.format("[Fusion] "..var3.."\n(ID: "..const_string..")\n---- Stack trace ----\n"..arg2.trace, ...)
	end
	task.spawn(function(...) -- Line 29
		--[[ Upvalues[1]:
			[1]: var5_upvw (read and write)
		]]
		error(var5_upvw:gsub('\n', "\n    "), 0)
	end, ...)
end