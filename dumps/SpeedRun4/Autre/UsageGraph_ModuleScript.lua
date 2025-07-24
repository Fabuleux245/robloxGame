-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:05
-- Luau version 6, Types version 3
-- Time taken: 0.000586 seconds

local newproxy_result1_upvr = newproxy(true)
getmetatable(newproxy_result1_upvr).__tostring = function() -- Line 10
	return "UsageGraphSentinel"
end
return {
	UsageGraphKey = newproxy_result1_upvr;
	getUsageGraph = function(arg1) -- Line 14, Named "getUsageGraph"
		--[[ Upvalues[1]:
			[1]: newproxy_result1_upvr (readonly)
		]]
		return table.clone(arg1[newproxy_result1_upvr])
	end;
}