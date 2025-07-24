-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:05:34
-- Luau version 6, Types version 3
-- Time taken: 0.000786 seconds

local console_upvr = require(script.Parent.Parent.LuauPolyfill).console
local function _(arg1) -- Line 27, Named "onlyInTestError"
	--[[ Upvalues[1]:
		[1]: console_upvr (readonly)
	]]
	return function() -- Line 28
		--[[ Upvalues[2]:
			[1]: console_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		console_upvr.error(arg1.." is only available in tests, not in production")
	end
end
local script = script
local module = {
	ReactCurrentDispatcher = require(script.ReactCurrentDispatcher);
	ReactCurrentBatchConfig = require(script.ReactCurrentBatchConfig);
	ReactCurrentOwner = require(script.ReactCurrentOwner);
	IsSomeRendererActing = require(script.IsSomeRendererActing);
}
if _G.__DEV__ then
	script = require(script.ReactDebugCurrentFrame)
else
	script = {}
	function script.setExtraStackFrame(arg1) -- Line 51
	end
end
module.ReactDebugCurrentFrame = script
return module