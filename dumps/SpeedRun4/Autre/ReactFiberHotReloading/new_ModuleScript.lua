-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:07
-- Luau version 6, Types version 3
-- Time taken: 0.001317 seconds

local module = {
	resolveFunctionForHotReloading = function(arg1) -- Line 84, Named "resolveFunctionForHotReloading"
		if _G.__DEV__ then
			do
				return arg1
			end
			local var3 = nil(arg1)
			if var3 == nil then
				return arg1
			end
			return var3.current
		end
		return arg1
	end;
	resolveClassForHotReloading = function(arg1) -- Line 102, Named "resolveClassForHotReloading"
		if _G.__DEV__ then
			do
				return arg1
			end
			local var4 = nil(arg1)
			if var4 == nil then
				return arg1
			end
			return var4.current
		end
		local var5 = arg1
		do
			return var5
		end
		return var5
	end;
}
local REACT_FORWARD_REF_TYPE_upvr = require(script.Parent.Parent.Shared).ReactSymbols.REACT_FORWARD_REF_TYPE
function module.resolveForwardRefForHotReloading(arg1) -- Line 108
	--[[ Upvalues[1]:
		[1]: REACT_FORWARD_REF_TYPE_upvr (readonly)
	]]
	-- KONSTANTERROR: Failed to generate AST for function `resolveForwardRefForHotReloading`:
K:0: attempt to index nil with 'reads'
Traceback:
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K

end
function module.isCompatibleFamilyForHotReloading(arg1, arg2) -- Line 145
	warn("isCompatibleFamilyForHotReloading is stubbed (returns false)")
	return false
end
local var9_upvw
function module.markFailedErrorBoundaryForHotReloading(arg1) -- Line 228
	--[[ Upvalues[1]:
		[1]: var9_upvw (read and write)
	]]
	if _G.__DEV__ then
		do
			return
		end
		if var9_upvw == nil then
			var9_upvw = {}
		end
		table.insert(var9_upvw, arg1)
	end
end
return module