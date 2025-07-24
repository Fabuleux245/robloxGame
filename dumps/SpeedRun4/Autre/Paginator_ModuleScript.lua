-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:10
-- Luau version 6, Types version 3
-- Time taken: 0.002767 seconds

local dependencies = require(script.Parent.dependencies)
local t = dependencies.t
local Promise_upvr = dependencies.Promise
local module_upvr = {
	llRoot = nil;
	llIndex = nil;
	_isFetching = false;
}
module_upvr.__index = module_upvr
local any_strictInterface_result1_upvr = t.strictInterface({
	pageSize = t.number;
	fetchWithCursor = t.callback;
	fetchInit = t.callback;
})
function module_upvr.new(arg1) -- Line 23
	--[[ Upvalues[2]:
		[1]: any_strictInterface_result1_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	assert(any_strictInterface_result1_upvr(arg1))
	local module = {}
	for i, v in pairs(arg1) do
		module[i] = v
	end
	setmetatable(module, module_upvr)
	module:_init()
	return module
end
local LinkedList_upvr = dependencies.LinkedList
function module_upvr._init(arg1) -- Line 35
	--[[ Upvalues[1]:
		[1]: LinkedList_upvr (readonly)
	]]
	arg1._isFetching = true
	return arg1.fetchInit():andThen(function(arg1_2, arg2) -- Line 38
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: LinkedList_upvr (copied, readonly)
		]]
		arg1.llRoot = LinkedList_upvr.createNode()
		arg1.llIndex = arg1.llRoot
		arg1.llIndex:CreatePrevious(arg1_2)
		arg1.llIndex:CreateNext(arg2)
		arg1._isFetching = false
	end)
end
function module_upvr.getCurrent(arg1) -- Line 47
	local value = arg1.llIndex.value
	if not value then
		value = {}
	end
	return value
end
function module_upvr.getNext(arg1) -- Line 51
	--[[ Upvalues[1]:
		[1]: Promise_upvr (readonly)
	]]
	if arg1._isFetching then
		return Promise_upvr.reject("Paginator is currently busy. Please wait.")
	end
	local var19 = arg1.llIndex.next.value or ""
	if var19 == "" then
		return Promise_upvr.reject("Next cursor is invalid")
	end
	arg1.llIndex = arg1.llIndex.next
	arg1._isFetching = true
	return arg1.fetchWithCursor(var19):andThen(function(arg1_3, arg2) -- Line 65
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.llIndex.previous.value = arg1_3
		if arg1.llIndex.next then
			arg1.llIndex.next.value = arg2
		else
			arg1.llIndex:CreateNext(arg2)
		end
		arg1._isFetching = false
	end)
end
function module_upvr.getPrevious(arg1) -- Line 76
	--[[ Upvalues[1]:
		[1]: Promise_upvr (readonly)
	]]
	if arg1._isFetching then
		return Promise_upvr.reject("Paginator is currently busy. Please wait.")
	end
	local var21 = arg1.llIndex.previous.value or ""
	if var21 == "" then
		return Promise_upvr.reject("Previous cursor is invalid")
	end
	arg1.llIndex = arg1.llIndex.previous
	arg1._isFetching = true
	return arg1.fetchWithCursor(var21, true):andThen(function(arg1_4, arg2) -- Line 90
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.llIndex.next.value = arg2
		if arg1.llIndex.previous then
			arg1.llIndex.previous.value = arg1_4
		else
			arg1.llIndex:CreatePrevious(arg1_4)
		end
		arg1._isFetching = false
	end)
end
function module_upvr.isFetching(arg1) -- Line 101
	return arg1._isFetching
end
return module_upvr