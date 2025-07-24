-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:44:13
-- Luau version 6, Types version 3
-- Time taken: 0.000828 seconds

local module = {}
local Boolean_upvr = require(script.Parent.Parent.Parent.Parent.LuauPolyfill).Boolean
local default_upvr = require(script.Parent.Parent.common.global).default
local var4_upvr = "__".."DEV".."__"
local function _() -- Line 23, Named "getDEV"
	--[[ Upvalues[3]:
		[1]: Boolean_upvr (readonly)
		[2]: default_upvr (readonly)
		[3]: var4_upvr (readonly)
	]]
	local _, xpcall_result2 = xpcall(function() -- Line 25
		--[[ Upvalues[1]:
			[1]: Boolean_upvr (copied, readonly)
		]]
		return Boolean_upvr.toJSBoolean(_G.__DEV__)
	end, function() -- Line 27
		--[[ Upvalues[2]:
			[1]: default_upvr (copied, readonly)
			[2]: var4_upvr (copied, readonly)
		]]
		default_upvr[var4_upvr] = true
		return default_upvr[var4_upvr]
	end)
	return xpcall_result2
end
local _, xpcall_result2_2 = xpcall(function() -- Line 25
	--[[ Upvalues[1]:
		[1]: Boolean_upvr (readonly)
	]]
	return Boolean_upvr.toJSBoolean(_G.__DEV__)
end, function() -- Line 27
	--[[ Upvalues[2]:
		[1]: default_upvr (readonly)
		[2]: var4_upvr (readonly)
	]]
	default_upvr[var4_upvr] = true
	return default_upvr[var4_upvr]
end)
module.default = xpcall_result2_2
return module