-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:04:34
-- Luau version 6, Types version 3
-- Time taken: 0.000423 seconds

return function(arg1, arg2) -- Line 1
	arg1.reportCounter(string.format("ExpChatV%sCount", string.gsub(arg2 or '0', "%p", {
		['.'] = '_';
	})))
end