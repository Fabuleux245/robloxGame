-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:04
-- Luau version 6, Types version 3
-- Time taken: 0.001760 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local Shared = require(Parent.Shared)
local module = {}
local showErrorDialog_upvr = require(script.Parent.ReactFiberErrorDialog).showErrorDialog
local ClassComponent_upvr = require(script.Parent.ReactWorkTags).ClassComponent
local console_upvr = Shared.console
local getComponentName_upvr = require(Parent.Shared).getComponentName
local inspect_upvr = LuauPolyfill.util.inspect
local setTimeout_upvr = LuauPolyfill.setTimeout
local errorToString_upvr = Shared.errorToString
function module.logCapturedError(arg1, arg2) -- Line 33
	--[[ Upvalues[7]:
		[1]: showErrorDialog_upvr (readonly)
		[2]: ClassComponent_upvr (readonly)
		[3]: console_upvr (readonly)
		[4]: getComponentName_upvr (readonly)
		[5]: inspect_upvr (readonly)
		[6]: setTimeout_upvr (readonly)
		[7]: errorToString_upvr (readonly)
	]]
	local pcall_result1, pcall_result2_upvr = pcall(function() -- Line 34
		--[[ Upvalues[7]:
			[1]: showErrorDialog_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: ClassComponent_upvr (copied, readonly)
			[5]: console_upvr (copied, readonly)
			[6]: getComponentName_upvr (copied, readonly)
			[7]: inspect_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [6] 6. Error Block 2 start (CF ANALYSIS FAILED)
		do
			return nil
		end
		-- KONSTANTERROR: [6] 6. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [8] 8. Error Block 3 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [8] 8. Error Block 3 end (CF ANALYSIS FAILED)
	end)
	if not pcall_result1 then
		warn("failed to error with error: "..inspect_upvr(pcall_result2_upvr))
		setTimeout_upvr(function() -- Line 125
			--[[ Upvalues[2]:
				[1]: errorToString_upvr (copied, readonly)
				[2]: pcall_result2_upvr (readonly)
			]]
			error(errorToString_upvr(pcall_result2_upvr))
		end)
	end
end
return module