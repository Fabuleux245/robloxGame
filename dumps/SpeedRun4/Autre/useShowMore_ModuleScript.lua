-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:29:25
-- Luau version 6, Types version 3
-- Time taken: 0.000752 seconds

local Parent = script:FindFirstAncestor("FriendsLanding").Parent
local React_upvr = require(Parent.React)
local dependencyArray_upvr = require(Parent.RoactUtils).Hooks.dependencyArray
return function(arg1, arg2, arg3, arg4) -- Line 8
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: dependencyArray_upvr (readonly)
	]]
	local any_useState_result1_upvr, any_useState_result2_upvr_2 = React_upvr.useState(arg1 or 0)
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(1)
	return React_upvr.useCallback(function() -- Line 17
		--[[ Upvalues[6]:
			[1]: arg4 (readonly)
			[2]: any_useState_result2_upvr (readonly)
			[3]: any_useState_result1_upvr (readonly)
			[4]: arg3 (readonly)
			[5]: arg2 (readonly)
			[6]: any_useState_result2_upvr_2 (readonly)
		]]
		arg4()
		any_useState_result2_upvr(any_useState_result1_upvr * arg3 + 1)
		local var10 = math.ceil(arg2 / arg3) - 2
		if var10 <= 0 then
			var10 = math.floor(arg2 / arg3)
		end
		any_useState_result2_upvr_2(any_useState_result1_upvr + var10)
	end, dependencyArray_upvr(any_useState_result1_upvr, arg2, arg4, arg3)), any_useState_result1_upvr, any_useState_result1
end