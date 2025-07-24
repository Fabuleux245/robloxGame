-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:49
-- Luau version 6, Types version 3
-- Time taken: 0.000713 seconds

return setmetatable({
	__NULL_IDENTIFIER__ = "__GRAPHQL_NULL_OBJECT__";
}, {
	__newindex = function(arg1, arg2, arg3) -- Line 7, Named "__newindex"
		error("%q (%s) is not a valid member of %s":format(tostring(arg2), typeof(arg2), "null"), 2)
	end;
	__metatable = false;
	__tostring = function() -- Line 17, Named "__tostring"
		return "null"
	end;
})