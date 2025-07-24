-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:14:22
-- Luau version 6, Types version 3
-- Time taken: 0.002447 seconds

local Parent = script:FindFirstAncestor("Loggers").Parent
local function _() -- Line 20, Named "IsRunningInStudio"
	return game:GetService("RunService"):IsStudio()
end
local FFlagDebugUnmuteLuaErrors_upvr = require(Parent.SharedFlags).Debug.FFlagDebugUnmuteLuaErrors
local RobloxAppEvents_upvr = require(Parent.RobloxAppEvents)
return function(arg1, arg2) -- Line 24
	--[[ Upvalues[2]:
		[1]: FFlagDebugUnmuteLuaErrors_upvr (readonly)
		[2]: RobloxAppEvents_upvr (readonly)
	]]
	local var9_upvw
	if type(arg1) ~= "string" then
		warn("mutedError: errorMessage should be a string!")
		local pcall_result1, pcall_result2 = pcall(function() -- Line 28
			--[[ Upvalues[1]:
				[1]: var9_upvw (read and write)
			]]
			var9_upvw = tostring(var9_upvw)
		end)
		if not pcall_result1 then
			var9_upvw = "mutedError"
		end
	end
	if FFlagDebugUnmuteLuaErrors_upvr or game:GetService("RunService"):IsStudio() or _G.__TESTEZ_RUNNING_TEST__ then
		error(var9_upvw)
	else
		if type(arg2) == "table" and type(arg2.stacks) == "table" then
			table.insert(arg2.stacks, debug.traceback())
		end
		RobloxAppEvents_upvr.ReportMutedError:fire(var9_upvw, debug.traceback(), script, arg2)
	end
end