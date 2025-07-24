-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:34
-- Luau version 6, Types version 3
-- Time taken: 0.000751 seconds

local Roact_upvr = require(script.Parent.Parent.Roact)
return function() -- Line 10, Named "createRefCache"
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	local module_upvr = {}
	setmetatable(module_upvr, {
		__index = function(arg1, arg2) -- Line 14, Named "__index"
			--[[ Upvalues[2]:
				[1]: Roact_upvr (copied, readonly)
				[2]: module_upvr (readonly)
			]]
			local any_createRef_result1 = Roact_upvr.createRef()
			module_upvr[arg2] = any_createRef_result1
			return any_createRef_result1
		end;
		__tostring = function(arg1) -- Line 20, Named "__tostring"
			local var9 = '{'
			for i, v in pairs(arg1) do
				var9 = "%s\n\t%s -> %s":format(var9, tostring(i), tostring(v))
			end
			return var9.."\n}"
		end;
	})
	return module_upvr
end