-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:24
-- Luau version 6, Types version 3
-- Time taken: 0.000672 seconds

local GetTextHeight_upvr = require(script.Parent.Parent.GetTextHeight)
return {
	getExpandableTextHeights = function(arg1, arg2, arg3, arg4) -- Line 4, Named "getExpandableTextHeights"
		--[[ Upvalues[1]:
			[1]: GetTextHeight_upvr (readonly)
		]]
		local var2 = arg1.BaseSize * arg1.Body.RelativeSize
		return GetTextHeight_upvr(arg3, arg1.Body.Font, var2, arg2), arg4 * var2
	end;
	getCanExpand = function(arg1, arg2, arg3, arg4) -- Line 14, Named "getCanExpand"
		--[[ Upvalues[1]:
			[1]: GetTextHeight_upvr (readonly)
		]]
		local var3 = arg1.BaseSize * arg1.Body.RelativeSize
		if arg4 * var3 >= GetTextHeight_upvr(arg3, arg1.Body.Font, var3, arg2) then
			var3 = false
		else
			var3 = true
		end
		return var3
	end;
}