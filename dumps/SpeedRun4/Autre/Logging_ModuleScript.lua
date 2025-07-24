-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:55:45
-- Luau version 6, Types version 3
-- Time taken: 0.001040 seconds

game:DefineFastFlag("LoggingRethrowUsingError", false)
local function _() -- Line 8, Named "GetFFlagLoggingRethrowUsingError"
	return game:GetFastFlag("LoggingRethrowUsingError")
end
local var1_upvw = true
local tbl_upvr = {}
local function createLogInfo_upvr() -- Line 15, Named "createLogInfo"
	local module = {
		warnings = {};
	}
	setmetatable(module, {
		__tostring = function(arg1) -- Line 21, Named "__tostring"
			return "LogInfo\n\tWarnings (%d):\n\t\t%s":format(#arg1.warnings, table.concat(arg1.warnings, "\n\t\t"))
		end;
	})
	return module
end
return {
	capture = function(arg1) -- Line 31, Named "capture"
		--[[ Upvalues[3]:
			[1]: createLogInfo_upvr (readonly)
			[2]: var1_upvw (read and write)
			[3]: tbl_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local createLogInfo_result1 = createLogInfo_upvr()
		var1_upvw = false
		tbl_upvr[createLogInfo_result1] = true
		local pcall_result1, pcall_result2 = pcall(arg1)
		tbl_upvr[createLogInfo_result1] = nil
		var1_upvw = var1_upvw
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [24] 22. Error Block 3 start (CF ANALYSIS FAILED)
		error(pcall_result2)
		do
			return createLogInfo_result1
		end
		-- KONSTANTERROR: [24] 22. Error Block 3 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [29] 26. Error Block 4 start (CF ANALYSIS FAILED)
		assert(pcall_result1, pcall_result2)
		-- KONSTANTERROR: [29] 26. Error Block 4 end (CF ANALYSIS FAILED)
	end;
	warn = function(arg1) -- Line 54, Named "warn"
		--[[ Upvalues[2]:
			[1]: tbl_upvr (readonly)
			[2]: var1_upvw (read and write)
		]]
		for i in pairs(tbl_upvr) do
			table.insert(i.warnings, arg1)
		end
		if var1_upvw then
			warn(arg1)
		end
	end;
}