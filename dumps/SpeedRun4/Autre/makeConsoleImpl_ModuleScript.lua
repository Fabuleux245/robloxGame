-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:54:19
-- Luau version 6, Types version 3
-- Time taken: 0.003237 seconds

local inspect_upvr = require(script.Parent.Parent.util).inspect
return function() -- Line 5
	--[[ Upvalues[1]:
		[1]: inspect_upvr (readonly)
	]]
	local module = {}
	local var4_upvw = 0
	local function _() -- Line 9, Named "indent"
		--[[ Upvalues[1]:
			[1]: var4_upvw (read and write)
		]]
		return string.rep("  ", var4_upvw)
	end
	function module.log(arg1, ...) -- Line 13
		--[[ Upvalues[2]:
			[1]: inspect_upvr (copied, readonly)
			[2]: var4_upvw (read and write)
		]]
		local var5
		if typeof(arg1) == "string" then
			var5 = string.format(arg1, ...)
		else
			var5 = inspect_upvr(arg1)
		end
		print(string.rep("  ", var4_upvw)..var5)
	end
	function module.debug(arg1, ...) -- Line 23
		--[[ Upvalues[2]:
			[1]: inspect_upvr (copied, readonly)
			[2]: var4_upvw (read and write)
		]]
		local var6
		if typeof(arg1) == "string" then
			var6 = string.format(arg1, ...)
		else
			var6 = inspect_upvr(arg1)
		end
		print(string.rep("  ", var4_upvw)..var6)
	end
	function module.info(arg1, ...) -- Line 33
		--[[ Upvalues[2]:
			[1]: inspect_upvr (copied, readonly)
			[2]: var4_upvw (read and write)
		]]
		local var7
		if typeof(arg1) == "string" then
			var7 = string.format(arg1, ...)
		else
			var7 = inspect_upvr(arg1)
		end
		print(string.rep("  ", var4_upvw)..var7)
	end
	function module.warn(arg1, ...) -- Line 43
		--[[ Upvalues[2]:
			[1]: inspect_upvr (copied, readonly)
			[2]: var4_upvw (read and write)
		]]
		local var8
		if typeof(arg1) == "string" then
			var8 = string.format(arg1, ...)
		else
			var8 = inspect_upvr(arg1)
		end
		warn(string.rep("  ", var4_upvw)..var8)
	end
	function module.error(arg1, ...) -- Line 53
		--[[ Upvalues[2]:
			[1]: inspect_upvr (copied, readonly)
			[2]: var4_upvw (read and write)
		]]
		local var9
		if typeof(arg1) == "string" then
			var9 = string.format(arg1, ...)
		else
			var9 = inspect_upvr(arg1)
		end
		warn(string.rep("  ", var4_upvw)..var9)
	end
	function module.group(arg1, ...) -- Line 65
		--[[ Upvalues[2]:
			[1]: inspect_upvr (copied, readonly)
			[2]: var4_upvw (read and write)
		]]
		local var10
		if typeof(arg1) == "string" then
			var10 = string.format(arg1, ...)
		else
			var10 = inspect_upvr(arg1)
		end
		print(string.rep("  ", var4_upvw)..var10)
		var4_upvw += 1
	end
	function module.groupCollapsed(arg1, ...) -- Line 76
		--[[ Upvalues[2]:
			[1]: inspect_upvr (copied, readonly)
			[2]: var4_upvw (read and write)
		]]
		local var11
		if typeof(arg1) == "string" then
			var11 = string.format(arg1, ...)
		else
			var11 = inspect_upvr(arg1)
		end
		print(string.rep("  ", var4_upvw)..var11)
		var4_upvw += 1
	end
	function module.groupEnd() -- Line 88
		--[[ Upvalues[1]:
			[1]: var4_upvw (read and write)
		]]
		if 0 < var4_upvw then
			var4_upvw -= 1
		end
	end
	return module
end