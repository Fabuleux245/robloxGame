-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:58:53
-- Luau version 6, Types version 3
-- Time taken: 0.003611 seconds

local Parent = script.Parent.Parent
local console_upvr = require(Parent.Shared).console
local module = {}
local enableDebugTracing_upvr = require(Parent.Shared).ReactFeatureFlags.enableDebugTracing
local var5_upvw
local tbl_upvr = {}
local var7_upvw = 0
function decimalToBinaryString(arg1) -- Line 39
	local var8
	repeat
		local math_modf_result1, math_modf_result2 = math.modf(arg1 / 2)
		var8 = math.ceil(math_modf_result2)..var8
	until math_modf_result1 == 0
	return string.rep('0', 31 - string.len(var8))..var8
end
local function _(arg1) -- Line 52, Named "formatLanes"
	return "0b"..decimalToBinaryString(arg1)
end
local log_upvw
local function group_upvr(...) -- Line 58, Named "group"
	--[[ Upvalues[4]:
		[1]: tbl_upvr (readonly)
		[2]: var5_upvw (read and write)
		[3]: console_upvr (readonly)
		[4]: log_upvw (read and write)
	]]
	for _, v in {...} do
		table.insert(tbl_upvr, v)
	end
	if var5_upvw == nil then
		var5_upvw = console_upvr.log
		console_upvr.log = log_upvw
	end
end
local function groupEnd_upvr() -- Line 68, Named "groupEnd"
	--[[ Upvalues[4]:
		[1]: tbl_upvr (readonly)
		[2]: var7_upvw (read and write)
		[3]: console_upvr (readonly)
		[4]: var5_upvw (read and write)
	]]
	table.remove(tbl_upvr, 1)
	while #tbl_upvr < var7_upvw do
		console_upvr.groupEnd()
		var7_upvw -= 1
	end
	if #tbl_upvr == 0 then
		console_upvr.log = var5_upvw
		var5_upvw = nil
	end
end
function log_upvw(...) -- Line 80, Named "log"
	--[[ Upvalues[4]:
		[1]: var7_upvw (read and write)
		[2]: tbl_upvr (readonly)
		[3]: console_upvr (readonly)
		[4]: var5_upvw (read and write)
	]]
	if var7_upvw < #tbl_upvr then
		for i_2 = var7_upvw + 1, #tbl_upvr do
			console_upvr.group(tbl_upvr[i_2])
		end
		var7_upvw = #tbl_upvr
	end
	if typeof(var5_upvw) == "function" then
		var5_upvw(...)
	else
		console_upvr.log(...)
	end
end
local var15_upvw = log_upvw
function module.logCommitStarted(arg1) -- Line 98
	--[[ Upvalues[2]:
		[1]: enableDebugTracing_upvr (readonly)
		[2]: group_upvr (readonly)
	]]
	if _G.__DEV__ and enableDebugTracing_upvr then
		group_upvr(string.format("* commit (%s)", "0b"..decimalToBinaryString(arg1)), "", "", "")
	end
end
function module.logCommitStopped() -- Line 113
	--[[ Upvalues[2]:
		[1]: enableDebugTracing_upvr (readonly)
		[2]: groupEnd_upvr (readonly)
	]]
	if _G.__DEV__ and enableDebugTracing_upvr then
		groupEnd_upvr()
	end
end
function module.logComponentSuspended(arg1, arg2) -- Line 141
	--[[ Upvalues[2]:
		[1]: enableDebugTracing_upvr (readonly)
		[2]: var15_upvw (read and write)
	]]
	if _G.__DEV__ and enableDebugTracing_upvr then
		var15_upvw(string.format("* %s suspended", arg1))
		arg2:andThen(function() -- Line 155
			--[[ Upvalues[2]:
				[1]: var15_upvw (copied, read and write)
				[2]: arg1 (readonly)
			]]
			var15_upvw(string.format("* %s resolved", arg1))
		end, function() -- Line 164
			--[[ Upvalues[2]:
				[1]: var15_upvw (copied, read and write)
				[2]: arg1 (readonly)
			]]
			var15_upvw(string.format("* %s rejected", arg1))
		end)
	end
end
function module.logLayoutEffectsStarted(arg1) -- Line 179
	--[[ Upvalues[2]:
		[1]: enableDebugTracing_upvr (readonly)
		[2]: group_upvr (readonly)
	]]
	if _G.__DEV__ and enableDebugTracing_upvr then
		group_upvr(string.format("* layout effects (%s)", "0b"..decimalToBinaryString(arg1)))
	end
end
function module.logLayoutEffectsStopped() -- Line 194
	--[[ Upvalues[2]:
		[1]: enableDebugTracing_upvr (readonly)
		[2]: groupEnd_upvr (readonly)
	]]
	if _G.__DEV__ and enableDebugTracing_upvr then
		groupEnd_upvr()
	end
end
function module.logPassiveEffectsStarted(arg1) -- Line 203
	--[[ Upvalues[2]:
		[1]: enableDebugTracing_upvr (readonly)
		[2]: group_upvr (readonly)
	]]
	if _G.__DEV__ and enableDebugTracing_upvr then
		group_upvr(string.format("* passive effects (%s)", "0b"..decimalToBinaryString(arg1)))
	end
end
function module.logPassiveEffectsStopped() -- Line 218
	--[[ Upvalues[2]:
		[1]: enableDebugTracing_upvr (readonly)
		[2]: groupEnd_upvr (readonly)
	]]
	if _G.__DEV__ and enableDebugTracing_upvr then
		groupEnd_upvr()
	end
end
function module.logRenderStarted(arg1) -- Line 227
	--[[ Upvalues[2]:
		[1]: enableDebugTracing_upvr (readonly)
		[2]: group_upvr (readonly)
	]]
	if _G.__DEV__ and enableDebugTracing_upvr then
		group_upvr(string.format("* render (%s)", "0b"..decimalToBinaryString(arg1)))
	end
end
function module.logRenderStopped() -- Line 242
	--[[ Upvalues[2]:
		[1]: enableDebugTracing_upvr (readonly)
		[2]: groupEnd_upvr (readonly)
	]]
	if _G.__DEV__ and enableDebugTracing_upvr then
		groupEnd_upvr()
	end
end
function module.logForceUpdateScheduled(arg1, arg2) -- Line 251
	--[[ Upvalues[2]:
		[1]: enableDebugTracing_upvr (readonly)
		[2]: var15_upvw (read and write)
	]]
	if _G.__DEV__ and enableDebugTracing_upvr then
		var15_upvw(string.format("* %s forced update (%s)", arg1, "0b"..decimalToBinaryString(arg2)))
	end
end
function module.logStateUpdateScheduled(arg1, arg2, arg3) -- Line 266
	--[[ Upvalues[2]:
		[1]: enableDebugTracing_upvr (readonly)
		[2]: var15_upvw (read and write)
	]]
	if _G.__DEV__ and enableDebugTracing_upvr then
		var15_upvw(string.format("* %s updated state (%s)", arg1, "0b"..decimalToBinaryString(arg2)))
	end
end
return module