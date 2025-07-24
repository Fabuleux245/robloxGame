-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:59:24
-- Luau version 6, Types version 3
-- Time taken: 0.000635 seconds

local ScreenList_upvr = require(script.Parent.ScreenList)
return function(arg1, arg2) -- Line 8
	--[[ Upvalues[1]:
		[1]: ScreenList_upvr (readonly)
	]]
	local var3 = arg1
	if not var3 then
		var3 = {}
	end
	return {
		ScreenList = ScreenList_upvr(var3.ScreenList, arg2);
	}
end