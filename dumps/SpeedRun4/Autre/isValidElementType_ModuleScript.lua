-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:05:26
-- Luau version 6, Types version 3
-- Time taken: 0.001648 seconds

local ReactSymbols = require(script.Parent.ReactSymbols)
local REACT_FRAGMENT_TYPE_upvr = ReactSymbols.REACT_FRAGMENT_TYPE
local REACT_PROFILER_TYPE_upvr = ReactSymbols.REACT_PROFILER_TYPE
local REACT_DEBUG_TRACING_MODE_TYPE_upvr = ReactSymbols.REACT_DEBUG_TRACING_MODE_TYPE
local REACT_STRICT_MODE_TYPE_upvr = ReactSymbols.REACT_STRICT_MODE_TYPE
local REACT_SUSPENSE_TYPE_upvr = ReactSymbols.REACT_SUSPENSE_TYPE
local REACT_LEGACY_HIDDEN_TYPE_upvr = ReactSymbols.REACT_LEGACY_HIDDEN_TYPE
local REACT_LAZY_TYPE_upvr = ReactSymbols.REACT_LAZY_TYPE
local REACT_MEMO_TYPE_upvr = ReactSymbols.REACT_MEMO_TYPE
local REACT_PROVIDER_TYPE_upvr = ReactSymbols.REACT_PROVIDER_TYPE
local REACT_CONTEXT_TYPE_upvr = ReactSymbols.REACT_CONTEXT_TYPE
local REACT_FORWARD_REF_TYPE_upvr = ReactSymbols.REACT_FORWARD_REF_TYPE
local REACT_FUNDAMENTAL_TYPE_upvr = ReactSymbols.REACT_FUNDAMENTAL_TYPE
local REACT_BLOCK_TYPE_upvr = ReactSymbols.REACT_BLOCK_TYPE
local REACT_SERVER_BLOCK_TYPE_upvr = ReactSymbols.REACT_SERVER_BLOCK_TYPE
return function(arg1) -- Line 31
	--[[ Upvalues[14]:
		[1]: REACT_FRAGMENT_TYPE_upvr (readonly)
		[2]: REACT_PROFILER_TYPE_upvr (readonly)
		[3]: REACT_DEBUG_TRACING_MODE_TYPE_upvr (readonly)
		[4]: REACT_STRICT_MODE_TYPE_upvr (readonly)
		[5]: REACT_SUSPENSE_TYPE_upvr (readonly)
		[6]: REACT_LEGACY_HIDDEN_TYPE_upvr (readonly)
		[7]: REACT_LAZY_TYPE_upvr (readonly)
		[8]: REACT_MEMO_TYPE_upvr (readonly)
		[9]: REACT_PROVIDER_TYPE_upvr (readonly)
		[10]: REACT_CONTEXT_TYPE_upvr (readonly)
		[11]: REACT_FORWARD_REF_TYPE_upvr (readonly)
		[12]: REACT_FUNDAMENTAL_TYPE_upvr (readonly)
		[13]: REACT_BLOCK_TYPE_upvr (readonly)
		[14]: REACT_SERVER_BLOCK_TYPE_upvr (readonly)
	]]
	local typeof_result1 = typeof(arg1)
	if typeof_result1 == "string" or typeof_result1 == "function" then
		return true
	end
	if arg1 == REACT_FRAGMENT_TYPE_upvr or arg1 == REACT_PROFILER_TYPE_upvr or arg1 == REACT_DEBUG_TRACING_MODE_TYPE_upvr or arg1 == REACT_STRICT_MODE_TYPE_upvr or arg1 == REACT_SUSPENSE_TYPE_upvr or arg1 == REACT_LEGACY_HIDDEN_TYPE_upvr then
		return true
	end
	if typeof_result1 == "table" then
		if arg1.isReactComponent then
			return true
		end
		if arg1["$$typeof"] == REACT_LAZY_TYPE_upvr or arg1["$$typeof"] == REACT_MEMO_TYPE_upvr or arg1["$$typeof"] == REACT_PROVIDER_TYPE_upvr or arg1["$$typeof"] == REACT_CONTEXT_TYPE_upvr or arg1["$$typeof"] == REACT_FORWARD_REF_TYPE_upvr or arg1["$$typeof"] == REACT_FUNDAMENTAL_TYPE_upvr or arg1["$$typeof"] == REACT_BLOCK_TYPE_upvr or arg1[1] == REACT_SERVER_BLOCK_TYPE_upvr then
			return true
		end
	end
	return false
end