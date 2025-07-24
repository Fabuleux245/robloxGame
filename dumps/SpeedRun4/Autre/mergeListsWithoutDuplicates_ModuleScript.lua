-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:18:19
-- Luau version 6, Types version 3
-- Time taken: 0.001276 seconds

local Cryo_upvr = require(script:FindFirstAncestor("ApolloLocalState").Parent.Cryo)
return function(arg1, arg2, arg3) -- Line 5, Named "mergeListsWithoutDuplicates"
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	if not arg2 or #arg2 == 0 then
		return arg1
	end
	if not arg1 or #arg1 == 0 then
		return arg2
	end
	local any_toSet_result1_upvr = Cryo_upvr.List.toSet(Cryo_upvr.List.map(arg1, function(arg1_2) -- Line 13
		--[[ Upvalues[1]:
			[1]: arg3 (readonly)
		]]
		if arg3 then
			return arg1_2[arg3]
		end
		return arg1_2
	end))
	return Cryo_upvr.List.join(table.clone(arg1), Cryo_upvr.List.filter(arg2, function(arg1_3) -- Line 18
		--[[ Upvalues[2]:
			[1]: arg3 (readonly)
			[2]: any_toSet_result1_upvr (readonly)
		]]
		local var5
		if arg3 then
			var5 = arg1_3[arg3]
		else
			var5 = arg1_3
		end
		return not any_toSet_result1_upvr[var5]
	end))
end