-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:05:37
-- Luau version 6, Types version 3
-- Time taken: 0.000951 seconds

local module_2_upvr = {
	REACT_ELEMENT_TYPE = 60103;
	REACT_PORTAL_TYPE = 60106;
	REACT_FRAGMENT_TYPE = 60107;
	REACT_STRICT_MODE_TYPE = 60108;
	REACT_PROFILER_TYPE = 60114;
	REACT_PROVIDER_TYPE = 60109;
	REACT_CONTEXT_TYPE = 60110;
	REACT_FORWARD_REF_TYPE = 60112;
	REACT_SUSPENSE_TYPE = 60113;
	REACT_SUSPENSE_LIST_TYPE = 60120;
	REACT_MEMO_TYPE = 60115;
	REACT_LAZY_TYPE = 60116;
	REACT_BLOCK_TYPE = 60121;
	REACT_SERVER_BLOCK_TYPE = 60122;
	REACT_FUNDAMENTAL_TYPE = 60117;
	REACT_SCOPE_TYPE = 60119;
	REACT_OPAQUE_ID_TYPE = 60128;
	REACT_DEBUG_TRACING_MODE_TYPE = 60129;
	REACT_OFFSCREEN_TYPE = 60130;
	REACT_LEGACY_HIDDEN_TYPE = 60131;
	REACT_BINDING_TYPE = 60132;
}
function module_2_upvr.getIteratorFn(arg1) -- Line 84
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	if typeof(arg1) == "table" then
		if arg1["$$typeof"] == module_2_upvr.REACT_PORTAL_TYPE then
			return nil
		end
		return function() -- Line 91
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			local module = {}
			local var5_upvw
			local var6_upvw
			function module.next() -- Line 94
				--[[ Upvalues[3]:
					[1]: var5_upvw (read and write)
					[2]: var6_upvw (read and write)
					[3]: arg1 (copied, readonly)
				]]
				local next_result1, next_result2 = next(arg1, var5_upvw)
				var5_upvw = next_result1
				var6_upvw = next_result2
				local module_3 = {}
				if var6_upvw ~= nil then
					next_result2 = false
				else
					next_result2 = true
				end
				module_3.done = next_result2
				module_3.key = var5_upvw
				module_3.value = var6_upvw
				return module_3
			end
			return module
		end
	end
	return nil
end
return module_2_upvr