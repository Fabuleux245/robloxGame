-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:05:20
-- Luau version 6, Types version 3
-- Time taken: 0.001126 seconds

local console_upvr = require(script.Parent.console)
local var2_upvw = 0
local var3_upvw
local var4_upvw
local var5_upvw
local var6_upvw
local var7_upvw
local var8_upvw
local var9_upvw
local function var10_upvr() -- Line 31
end
return {
	disabledLog = var10_upvr;
	disableLogs = function() -- Line 40
		--[[ Upvalues[10]:
			[1]: var2_upvw (read and write)
			[2]: var3_upvw (read and write)
			[3]: console_upvr (readonly)
			[4]: var4_upvw (read and write)
			[5]: var5_upvw (read and write)
			[6]: var6_upvw (read and write)
			[7]: var7_upvw (read and write)
			[8]: var8_upvw (read and write)
			[9]: var9_upvw (read and write)
			[10]: var10_upvr (readonly)
		]]
		if _G.__DEV__ then
			if var2_upvw == 0 then
				var3_upvw = console_upvr.log
				var4_upvw = console_upvr.info
				var5_upvw = console_upvr.warn
				var6_upvw = console_upvr.error
				var7_upvw = console_upvr.group
				var8_upvw = console_upvr.groupCollapsed
				var9_upvw = console_upvr.groupEnd
				console_upvr.info = var10_upvr
				console_upvr.log = var10_upvr
				console_upvr.warn = var10_upvr
				console_upvr.error = var10_upvr
				console_upvr.group = var10_upvr
				console_upvr.groupCollapsed = var10_upvr
				console_upvr.groupEnd = var10_upvr
			end
			var2_upvw += 1
		end
	end;
	reenableLogs = function() -- Line 64
		--[[ Upvalues[9]:
			[1]: var2_upvw (read and write)
			[2]: console_upvr (readonly)
			[3]: var3_upvw (read and write)
			[4]: var4_upvw (read and write)
			[5]: var5_upvw (read and write)
			[6]: var6_upvw (read and write)
			[7]: var7_upvw (read and write)
			[8]: var8_upvw (read and write)
			[9]: var9_upvw (read and write)
		]]
		if _G.__DEV__ then
			var2_upvw -= 1
			if var2_upvw == 0 then
				console_upvr.log = var3_upvw
				console_upvr.info = var4_upvw
				console_upvr.warn = var5_upvw
				console_upvr.error = var6_upvw
				console_upvr.group = var7_upvw
				console_upvr.groupCollapsed = var8_upvw
				console_upvr.groupEnd = var9_upvw
			end
			if var2_upvw < 0 then
				console_upvr.error("disabledDepth fell below zero. ".."This is a bug in React. Please file an issue.")
			end
		end
	end;
}