-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:40:02
-- Luau version 6, Types version 3
-- Time taken: 0.000494 seconds

local messages_upvr = require(script.Parent.Parent.Logging.messages)
return function(arg1, ...) -- Line 10, Named "logWarn"
	--[[ Upvalues[1]:
		[1]: messages_upvr (readonly)
	]]
	local var2
	local var3
	if messages_upvr[arg1] ~= nil then
		var2 = messages_upvr[var3]
	else
		var3 = "unknownMessage"
		var2 = messages_upvr[var3]
	end
	warn(string.format("[Fusion] "..var2.."\n(ID: "..var3..')', ...))
end