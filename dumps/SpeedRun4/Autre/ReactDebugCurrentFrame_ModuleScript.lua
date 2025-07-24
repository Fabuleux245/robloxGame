-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:05:36
-- Luau version 6, Types version 3
-- Time taken: 0.000964 seconds

local module_upvr = {}
local var2_upvw
function module_upvr.setExtraStackFrame(arg1) -- Line 16
	--[[ Upvalues[1]:
		[1]: var2_upvw (read and write)
	]]
	if _G.__DEV__ then
		var2_upvw = arg1
	end
end
if _G.__DEV__ then
	module_upvr.getCurrentStack = nil
	function module_upvr.getStackAddendum() -- Line 33
		--[[ Upvalues[2]:
			[1]: var2_upvw (read and write)
			[2]: module_upvr (readonly)
		]]
		local var3
		if var2_upvw then
			var3 = var3..var2_upvw
		end
		local getCurrentStack = module_upvr.getCurrentStack
		if getCurrentStack then
			var3 = var3..(getCurrentStack() or "")
		end
		return var3
	end
end
return module_upvr