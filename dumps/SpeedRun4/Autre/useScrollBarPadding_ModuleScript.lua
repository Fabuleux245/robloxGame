-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:27
-- Luau version 6, Types version 3
-- Time taken: 0.000886 seconds

local React_upvr = require(script:FindFirstAncestor("Foundation").Parent.React)
return function() -- Line 6, Named "useScrollBarPadding"
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(0)
	return any_useState_result1, React_upvr.useCallback(function(arg1) -- Line 9
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var5
		if arg1.AbsoluteSize.Y >= arg1.AbsoluteCanvasSize.Y then
			var5 = false
		else
			var5 = true
		end
		if var5 then
		else
		end
		any_useState_result2_upvr(0)
	end, {})
end