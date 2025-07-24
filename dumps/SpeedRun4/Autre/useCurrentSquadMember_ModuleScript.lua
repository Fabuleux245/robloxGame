-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:31:10
-- Luau version 6, Types version 3
-- Time taken: 0.001475 seconds

local Parent = script:FindFirstAncestor("SquadsCore").Parent
local useCurrentSquadSelector_upvr = require(Parent.RoduxSquads).Hooks.useCurrentSquadSelector
local React_upvr = require(Parent.React)
local Cryo_upvr = require(Parent.Cryo)
local dependencyArray_upvr = require(Parent.RoactUtils).Hooks.dependencyArray
function useCurrentSquadMember(arg1) -- Line 13
	--[[ Upvalues[4]:
		[1]: useCurrentSquadSelector_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: Cryo_upvr (readonly)
		[4]: dependencyArray_upvr (readonly)
	]]
	local var2_result1_upvr = useCurrentSquadSelector_upvr()
	local any_useMemo_result1_upvr = React_upvr.useMemo(function() -- Line 15
		--[[ Upvalues[1]:
			[1]: var2_result1_upvr (readonly)
		]]
		if var2_result1_upvr then
			return var2_result1_upvr.members
		end
		return {}
	end, {var2_result1_upvr})
	return React_upvr.useMemo(function() -- Line 22
		--[[ Upvalues[3]:
			[1]: Cryo_upvr (copied, readonly)
			[2]: any_useMemo_result1_upvr (readonly)
			[3]: arg1 (readonly)
		]]
		local any_findWhere_result1 = Cryo_upvr.List.findWhere(any_useMemo_result1_upvr, function(arg1_2) -- Line 23
			--[[ Upvalues[1]:
				[1]: arg1 (copied, readonly)
			]]
			local var12
			if arg1_2.userId ~= arg1 then
				var12 = false
			else
				var12 = true
			end
			return var12
		end)
		if any_findWhere_result1 then
			return any_useMemo_result1_upvr[any_findWhere_result1]
		end
		return nil
	end, dependencyArray_upvr(any_useMemo_result1_upvr, arg1))
end
return useCurrentSquadMember