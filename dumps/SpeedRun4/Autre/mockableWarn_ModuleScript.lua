-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:01
-- Luau version 6, Types version 3
-- Time taken: 0.000676 seconds

local warn_upvw = warn
return setmetatable({
	mock = function(arg1) -- Line 4, Named "mock"
		--[[ Upvalues[1]:
			[1]: warn_upvw (read and write)
		]]
		warn_upvw = arg1
	end;
	unmock = function() -- Line 7, Named "unmock"
		--[[ Upvalues[1]:
			[1]: warn_upvw (read and write)
		]]
		warn_upvw = warn
	end;
}, {
	__call = function(arg1, ...) -- Line 11, Named "__call"
		--[[ Upvalues[1]:
			[1]: warn_upvw (read and write)
		]]
		warn_upvw(...)
	end;
})