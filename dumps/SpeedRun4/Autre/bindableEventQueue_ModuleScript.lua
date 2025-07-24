-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:03:28
-- Luau version 6, Types version 3
-- Time taken: 0.000844 seconds

local module = {
	queue = {};
	add = function(arg1, arg2) -- Line 8, Named "add"
		arg1.queue[#arg1.queue + 1] = arg2
	end;
}
local DispatchBindableEvent_upvr = require(script:FindFirstAncestor("ExpChat").DispatchBindableEvent)
function module.flush(arg1) -- Line 12
	--[[ Upvalues[1]:
		[1]: DispatchBindableEvent_upvr (readonly)
	]]
	if #arg1.queue then
		for _, v in pairs(arg1.queue) do
			DispatchBindableEvent_upvr:Fire(v)
		end
	end
end
return module