-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:40:11
-- Luau version 6, Types version 3
-- Time taken: 0.000879 seconds

local logError_upvr = require(script.Parent.Parent.Logging.logError)
return function(arg1, arg2) -- Line 12, Named "restrictRead"
	--[[ Upvalues[1]:
		[1]: logError_upvr (readonly)
	]]
	local getmetatable_result1 = getmetatable(arg2)
	if getmetatable_result1 == nil then
		getmetatable_result1 = {}
		setmetatable(arg2, getmetatable_result1)
	end
	function getmetatable_result1.__index(arg1_2, arg2_2) -- Line 21
		--[[ Upvalues[2]:
			[1]: logError_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		logError_upvr("strictReadError", nil, tostring(arg2_2), arg1)
	end
	return arg2
end