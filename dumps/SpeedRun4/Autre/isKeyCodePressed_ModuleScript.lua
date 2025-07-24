-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:04
-- Luau version 6, Types version 3
-- Time taken: 0.000549 seconds

local ArgCheck_upvr = require(script:FindFirstAncestor("AppChat").Parent.ArgCheck)
return function(arg1, ...) -- Line 6
	--[[ Upvalues[1]:
		[1]: ArgCheck_upvr (readonly)
	]]
	ArgCheck_upvr.isType(arg1, "table", "isKeyCodePressed.pressedKeys")
	for _, v in ipairs(arg1) do
		for _, v_2 in ipairs({...}) do
			if v.KeyCode == v_2 then
				return true
			end
		end
	end
	return false
end