-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:32
-- Luau version 6, Types version 3
-- Time taken: 0.000773 seconds

local Parent = script:FindFirstAncestor("GraphQLServer").Parent
return function(arg1) -- Line 8, Named "buildTypeResolver"
	return function(arg1_2, arg2, arg3, arg4) -- Line 9
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local var3 = arg1[arg4.name]
		if type(var3) == "table" and type(var3.__resolveType) == "function" then
			return var3.__resolveType(arg1_2, arg2, arg3, arg4)
		end
		return arg4.name
	end
end