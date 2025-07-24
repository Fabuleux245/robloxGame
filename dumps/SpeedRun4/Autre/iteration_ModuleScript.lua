-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:44:20
-- Luau version 6, Types version 3
-- Time taken: 0.000901 seconds

local module = {}
local Array_upvr = require(script.Parent.Parent.Parent.Parent.LuauPolyfill).Array
function module.iterateObserversSafely(arg1, arg2, arg3) -- Line 26
	--[[ Upvalues[1]:
		[1]: Array_upvr (readonly)
	]]
	local tbl_upvr = {}
	arg1:forEach(function(arg1_2) -- Line 37
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: tbl_upvr (readonly)
		]]
		if arg1_2[arg2] ~= nil then
			table.insert(tbl_upvr, arg1_2)
		end
	end)
	Array_upvr.forEach(tbl_upvr, function(arg1_3) -- Line 43
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: arg3 (readonly)
		]]
		arg1_3[arg2](arg1_3, arg3)
	end)
end
return module