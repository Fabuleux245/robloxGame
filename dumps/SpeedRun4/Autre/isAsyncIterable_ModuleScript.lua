-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:32
-- Luau version 6, Types version 3
-- Time taken: 0.002080 seconds

local module = {}
local Symbol_upvr = require(script.Parent.Parent.LuauPolyfill).Symbol
function module.isAsyncIterable(arg1) -- Line 12
	--[[ Upvalues[1]:
		[1]: Symbol_upvr (readonly)
	]]
	local asyncIterator_4 = Symbol_upvr.asyncIterator
	local var10 = false
	if typeof(arg1) == "table" then
		var10 = false
		if arg1 ~= nil then
			var10 = asyncIterator_4
			if var10 then
				var10 = arg1[asyncIterator_4]
				if var10 then
					if typeof(arg1[asyncIterator_4]) ~= "function" then
						var10 = false
					else
						var10 = true
					end
				end
			end
		end
	end
	return var10
end
return module