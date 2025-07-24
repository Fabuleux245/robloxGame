-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:52:00
-- Luau version 6, Types version 3
-- Time taken: 0.000590 seconds

local Cryo_upvr = require(script:FindFirstAncestor("AppChat").Parent.Cryo)
return function(arg1, arg2) -- Line 6
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	if arg1 and arg1.participants then
		return Cryo_upvr.List.filter(arg1.participants, function(arg1_2) -- Line 8
			--[[ Upvalues[1]:
				[1]: arg2 (readonly)
			]]
			local var4
			if tostring(arg1_2) == tostring(arg2) then
				var4 = false
			else
				var4 = true
			end
			return var4
		end)
	end
	return {}
end