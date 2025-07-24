-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:34:20
-- Luau version 6, Types version 3
-- Time taken: 0.001487 seconds

local Parent = script:FindFirstAncestor("GameTile").Parent
local React_upvr = require(Parent.React)
local dependencyArray_upvr = require(Parent.RoactUtils).Hooks.dependencyArray
return function(arg1, arg2, arg3) -- Line 8, Named "useHasInGameFriends"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: dependencyArray_upvr (readonly)
	]]
	return React_upvr.useMemo(function() -- Line 9
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: arg3 (readonly)
		]]
		if not arg1 or not arg2 or not arg3 then
			return false
		end
		for _, v in pairs(arg3) do
			if v ~= arg1 then
				local var16 = arg2[v]
				if var16 and var16.isFriend then
					return true
				end
			end
		end
		return false
	end, dependencyArray_upvr(arg1, arg2, arg3))
end