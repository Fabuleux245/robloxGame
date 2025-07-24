-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:55:34
-- Luau version 6, Types version 3
-- Time taken: 0.000855 seconds

local symbols_upvr = require(script.Parent.symbols)
local function resetMock_upvr(arg1, arg2) -- Line 3, Named "resetMock"
	--[[ Upvalues[2]:
		[1]: symbols_upvr (readonly)
		[2]: resetMock_upvr (readonly)
	]]
	local getmetatable_result1 = getmetatable(arg1)
	getmetatable_result1[symbols_upvr.Calls] = {}
	for _, v in pairs(getmetatable_result1[symbols_upvr.Children]) do
		if not arg2[v] then
			arg2[v] = true
			resetMock_upvr(v, arg2)
		end
	end
end
return function(arg1) -- Line 15
	--[[ Upvalues[1]:
		[1]: resetMock_upvr (readonly)
	]]
	resetMock_upvr(arg1, {})
end