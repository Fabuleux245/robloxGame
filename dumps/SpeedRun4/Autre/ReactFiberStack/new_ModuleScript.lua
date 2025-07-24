-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:13
-- Luau version 6, Types version 3
-- Time taken: 0.001616 seconds

local console_upvr = require(script.Parent.Parent.Shared).console
local tbl_upvr = {}
local tbl_upvr_2 = {}
local var4_upvw
if _G.__DEV__ then
	var4_upvw = {}
end
local var5_upvw = 0
return {
	createCursor = function(arg1) -- Line 35, Named "createCursor"
		local module = {}
		module.current = arg1
		return module
	end;
	isEmpty = function() -- Line 41, Named "isEmpty"
		--[[ Upvalues[1]:
			[1]: var5_upvw (read and write)
		]]
		local var7
		if var5_upvw ~= 0 then
			var7 = false
		else
			var7 = true
		end
		return var7
	end;
	pop = function(arg1, arg2) -- Line 45, Named "pop"
		--[[ Upvalues[5]:
			[1]: var5_upvw (read and write)
			[2]: console_upvr (readonly)
			[3]: var4_upvw (read and write)
			[4]: tbl_upvr_2 (readonly)
			[5]: tbl_upvr (readonly)
		]]
		if var5_upvw < 1 then
			if _G.__DEV__ then
				console_upvr.error("Unexpected pop.")
			end
		else
			if _G.__DEV__ and arg2 ~= var4_upvw[var5_upvw] then
				console_upvr.error("Unexpected Fiber popped.")
			end
			local var8 = tbl_upvr_2[var5_upvw]
			if var8 == tbl_upvr then
				arg1.current = nil
			else
				arg1.current = var8
			end
			tbl_upvr_2[var5_upvw] = nil
			if _G.__DEV__ then
				var4_upvw[var5_upvw] = nil
			end
			var5_upvw -= 1
		end
	end;
	push = function(arg1, arg2, arg3) -- Line 77, Named "push"
		--[[ Upvalues[4]:
			[1]: var5_upvw (read and write)
			[2]: tbl_upvr_2 (readonly)
			[3]: tbl_upvr (readonly)
			[4]: var4_upvw (read and write)
		]]
		var5_upvw += 1
		local current = arg1.current
		if current == nil then
			tbl_upvr_2[var5_upvw] = tbl_upvr
		else
			tbl_upvr_2[var5_upvw] = current
		end
		if _G.__DEV__ then
			var4_upvw[var5_upvw] = arg3
		end
		arg1.current = arg2
	end;
	checkThatStackIsEmpty = function() -- Line 94, Named "checkThatStackIsEmpty"
		--[[ Upvalues[2]:
			[1]: var5_upvw (read and write)
			[2]: console_upvr (readonly)
		]]
		if _G.__DEV__ and var5_upvw ~= 0 then
			console_upvr.error("Expected an empty stack. Something was not reset properly.")
		end
	end;
	resetStackAfterFatalErrorInDev = function() -- Line 102, Named "resetStackAfterFatalErrorInDev"
		--[[ Upvalues[3]:
			[1]: var5_upvw (read and write)
			[2]: tbl_upvr_2 (readonly)
			[3]: var4_upvw (read and write)
		]]
		if _G.__DEV__ then
			var5_upvw = 0
			table.clear(tbl_upvr_2)
			table.clear(var4_upvw)
		end
	end;
}