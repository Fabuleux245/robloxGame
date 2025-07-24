-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:10
-- Luau version 6, Types version 3
-- Time taken: 0.001479 seconds

local module_4_upvr = {}
module_4_upvr.__index = module_4_upvr
function module_4_upvr.createNode(arg1) -- Line 4
	--[[ Upvalues[1]:
		[1]: module_4_upvr (readonly)
	]]
	local module_2 = {
		previous = nil;
		next = nil;
	}
	module_2.value = arg1
	setmetatable(module_2, module_4_upvr)
	return module_2
end
function module_4_upvr.CreateNext(arg1, arg2) -- Line 17
	--[[ Upvalues[1]:
		[1]: module_4_upvr (readonly)
	]]
	local module = {}
	module.previous = arg1
	module.next = arg1.next
	local var5 = arg2
	if not var5 then
		var5 = {}
	end
	module.value = var5
	if arg1.next then
		arg1.next.previous = module
	end
	setmetatable(module, module_4_upvr)
	arg1.next = module
	return module
end
function module_4_upvr.CreatePrevious(arg1, arg2) -- Line 34
	--[[ Upvalues[1]:
		[1]: module_4_upvr (readonly)
	]]
	local module_3 = {
		previous = arg1.previous;
	}
	module_3.next = arg1
	local var7 = arg2
	if not var7 then
		var7 = {}
	end
	module_3.value = var7
	if arg1.previous then
		arg1.previous.next = module_3
	end
	setmetatable(module_3, module_4_upvr)
	arg1.previous = module_3
	return module_3
end
return module_4_upvr