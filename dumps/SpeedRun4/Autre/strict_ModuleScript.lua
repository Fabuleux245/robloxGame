-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:50:50
-- Luau version 6, Types version 3
-- Time taken: 0.000824 seconds

local function invalidKey_upvr(arg1, arg2) -- Line 7, Named "invalidKey"
	error("%q (%s) is not a valid member of %s":format(tostring(arg2), typeof(arg2), tostring(arg1)), 2)
end
return function(arg1, arg2) -- Line 17, Named "strict"
	--[[ Upvalues[1]:
		[1]: invalidKey_upvr (readonly)
	]]
	return setmetatable(arg1, {
		__index = invalidKey_upvr;
		__newindex = invalidKey_upvr;
		__tostring = function() -- Line 21, Named "__tostring"
			--[[ Upvalues[1]:
				[1]: arg2 (readonly)
			]]
			return arg2
		end;
	})
end