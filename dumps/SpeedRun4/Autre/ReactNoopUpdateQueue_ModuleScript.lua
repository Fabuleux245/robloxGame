-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:58:35
-- Luau version 6, Types version 3
-- Time taken: 0.002338 seconds

local console_upvr = require(script.Parent.Parent.Shared).console
local tbl_upvr = {}
local function _(arg1, arg2) -- Line 15, Named "warnNoop"
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: console_upvr (readonly)
	]]
	if _G.__DEV__ then
		local var3 = arg1.__componentName or "ReactClass"
		local var4 = var3..'.'..arg2
		if tbl_upvr[var4] then return end
		console_upvr.error("Can't call %s on a component that is not yet mounted. ".."This is a no-op, but it might indicate a bug in your application. ".."Instead, assign to `self.state` directly with the desired state in ".."the %s component's `init` method.", arg2, var3)
		tbl_upvr[var4] = true
	end
end
return {
	isMounted = function(arg1) -- Line 50, Named "isMounted"
		return false
	end;
	enqueueForceUpdate = function(arg1, arg2, arg3) -- Line 68, Named "enqueueForceUpdate"
		--[[ Upvalues[2]:
			[1]: tbl_upvr (readonly)
			[2]: console_upvr (readonly)
		]]
		if _G.__DEV__ then
			local var6 = arg1.__componentName or "ReactClass"
			local var7 = var6..'.'.."forceUpdate"
			if tbl_upvr[var7] then return end
			console_upvr.error("Can't call %s on a component that is not yet mounted. ".."This is a no-op, but it might indicate a bug in your application. ".."Instead, assign to `self.state` directly with the desired state in ".."the %s component's `init` method.", "forceUpdate", var6)
			tbl_upvr[var7] = true
		end
	end;
	enqueueReplaceState = function(arg1, arg2, arg3, arg4) -- Line 84, Named "enqueueReplaceState"
		--[[ Upvalues[2]:
			[1]: tbl_upvr (readonly)
			[2]: console_upvr (readonly)
		]]
		if _G.__DEV__ then
			local var8 = arg1.__componentName or "ReactClass"
			local var9 = var8..'.'.."replaceState"
			if tbl_upvr[var9] then return end
			console_upvr.error("Can't call %s on a component that is not yet mounted. ".."This is a no-op, but it might indicate a bug in your application. ".."Instead, assign to `self.state` directly with the desired state in ".."the %s component's `init` method.", "replaceState", var8)
			tbl_upvr[var9] = true
		end
	end;
	enqueueSetState = function(arg1, arg2, arg3, arg4) -- Line 99, Named "enqueueSetState"
		--[[ Upvalues[2]:
			[1]: tbl_upvr (readonly)
			[2]: console_upvr (readonly)
		]]
		if _G.__DEV__ then
			local var10 = arg1.__componentName or "ReactClass"
			local var11 = var10..'.'.."setState"
			if tbl_upvr[var11] then return end
			console_upvr.error("Can't call %s on a component that is not yet mounted. ".."This is a no-op, but it might indicate a bug in your application. ".."Instead, assign to `self.state` directly with the desired state in ".."the %s component's `init` method.", "setState", var10)
			tbl_upvr[var11] = true
		end
	end;
}