-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:05:30
-- Luau version 6, Types version 3
-- Time taken: 0.001637 seconds

local var1_upvw = false
local var2_upvw
local var3_upvw = false
local var4_upvw
local tbl_upvr = {
	onError = function(arg1) -- Line 25, Named "onError"
		--[[ Upvalues[2]:
			[1]: var1_upvw (read and write)
			[2]: var2_upvw (read and write)
		]]
		var1_upvw = true
		var2_upvw = arg1
	end;
}
local module_upvr = {}
local invokeGuardedCallbackImpl_upvr = require(script.Parent.invokeGuardedCallbackImpl)
function module_upvr.invokeGuardedCallback(...) -- Line 45
	--[[ Upvalues[4]:
		[1]: var1_upvw (read and write)
		[2]: var2_upvw (read and write)
		[3]: invokeGuardedCallbackImpl_upvr (readonly)
		[4]: tbl_upvr (readonly)
	]]
	var1_upvw = false
	var2_upvw = nil
	invokeGuardedCallbackImpl_upvr(tbl_upvr, ...)
end
local var13_upvw
function module_upvr.invokeGuardedCallbackAndCatchFirstError(...) -- Line 62
	--[[ Upvalues[5]:
		[1]: module_upvr (readonly)
		[2]: var1_upvw (read and write)
		[3]: var13_upvw (read and write)
		[4]: var3_upvw (read and write)
		[5]: var4_upvw (read and write)
	]]
	module_upvr.invokeGuardedCallback(...)
	if var1_upvw and not var3_upvw then
		var3_upvw = true
		var4_upvw = var13_upvw()
	end
end
function module_upvr.rethrowCaughtError() -- Line 80
	--[[ Upvalues[2]:
		[1]: var3_upvw (read and write)
		[2]: var4_upvw (read and write)
	]]
	if var3_upvw then
		var3_upvw = false
		var4_upvw = nil
		error(var4_upvw)
	end
end
function module_upvr.hasCaughtError() -- Line 89
	--[[ Upvalues[1]:
		[1]: var1_upvw (read and write)
	]]
	return var1_upvw
end
local invariant_upvr = require(script.Parent.invariant)
function var13_upvw() -- Line 93
	--[[ Upvalues[3]:
		[1]: var1_upvw (read and write)
		[2]: var2_upvw (read and write)
		[3]: invariant_upvr (readonly)
	]]
	if var1_upvw then
		var1_upvw = false
		var2_upvw = nil
		return var2_upvw
	end
	invariant_upvr(false, "clearCaughtError was called but no error was captured. This error ".."is likely caused by a bug in React. Please file an issue.")
	return nil
end
module_upvr.clearCaughtError = var13_upvw
return module_upvr