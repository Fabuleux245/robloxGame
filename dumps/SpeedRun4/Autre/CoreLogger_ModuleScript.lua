-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:00:28
-- Luau version 6, Types version 3
-- Time taken: 0.000873 seconds

local any_new_result1 = require(script.Parent.Parent.Lumberyak).Logger.new(nil, "CoreLogger")
any_new_result1:setContext({
	prefix = "[{loggerName}] - ";
})
local tbl = {
	maxLevel = any_new_result1.Levels.fromString(game:DefineFastString("DebugLuaLogLevel", ""));
}
local game_DefineFastString_result1_upvr = game:DefineFastString("DebugLuaLogPattern", "")
function tbl.log(arg1, arg2, arg3) -- Line 15
	--[[ Upvalues[1]:
		[1]: game_DefineFastString_result1_upvr (readonly)
	]]
	if string.match(arg2, game_DefineFastString_result1_upvr) then
		print(arg2)
	end
end
any_new_result1:addSink(tbl)
return any_new_result1