-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:56
-- Luau version 6, Types version 3
-- Time taken: 0.000907 seconds

local function _(arg1, arg2) -- Line 9, Named "forwardRefValue"
	if type(arg1) == "function" then
		arg1(arg2)
	elseif type(arg1) == "table" then
		arg1.current = arg2
	end
end
local React_upvr = require(script:FindFirstAncestor("ReactUtils").Parent.React)
return function(arg1, arg2) -- Line 22, Named "useComposedRef"
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	local module = {}
	module[1] = arg1
	module[2] = arg2
	return React_upvr.useCallback(function(arg1_2) -- Line 23
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
		]]
		local var3 = arg1
		if type(var3) == "function" then
			var3(arg1_2)
		elseif type(var3) == "table" then
			var3.current = arg1_2
		end
		local var4 = arg2
		if type(var4) == "function" then
			var4(arg1_2)
		elseif type(var4) == "table" then
			var4.current = arg1_2
		end
	end, module)
end