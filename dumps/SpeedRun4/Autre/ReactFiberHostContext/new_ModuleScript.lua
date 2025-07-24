-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:06
-- Luau version 6, Types version 3
-- Time taken: 0.001334 seconds

local new = require(script.Parent["ReactFiberStack.new"])
local ReactFiberHostConfig = require(script.Parent.ReactFiberHostConfig)
local createCursor = new.createCursor
local push_upvr = new.push
local pop_upvr = new.pop
local tbl_upvr = {}
local createCursor_result1_upvr = createCursor(tbl_upvr)
local var3_result1_upvr = createCursor(tbl_upvr)
local createCursor_result1_upvr_2 = createCursor(tbl_upvr)
function requiredContext(arg1) -- Line 42
	return arg1
end
function getRootHostContainer() -- Line 52
	--[[ Upvalues[1]:
		[1]: createCursor_result1_upvr_2 (readonly)
	]]
	return createCursor_result1_upvr_2.current
end
local getRootHostContext_upvr = ReactFiberHostConfig.getRootHostContext
function pushHostContainer(arg1, arg2) -- Line 59
	--[[ Upvalues[7]:
		[1]: push_upvr (readonly)
		[2]: createCursor_result1_upvr_2 (readonly)
		[3]: var3_result1_upvr (readonly)
		[4]: createCursor_result1_upvr (readonly)
		[5]: tbl_upvr (readonly)
		[6]: getRootHostContext_upvr (readonly)
		[7]: pop_upvr (readonly)
	]]
	push_upvr(createCursor_result1_upvr_2, arg2, arg1)
	push_upvr(var3_result1_upvr, arg1, arg1)
	push_upvr(createCursor_result1_upvr, tbl_upvr, arg1)
	pop_upvr(createCursor_result1_upvr, arg1)
	push_upvr(createCursor_result1_upvr, getRootHostContext_upvr(arg2), arg1)
end
function popHostContainer(arg1) -- Line 79
	--[[ Upvalues[4]:
		[1]: pop_upvr (readonly)
		[2]: createCursor_result1_upvr (readonly)
		[3]: var3_result1_upvr (readonly)
		[4]: createCursor_result1_upvr_2 (readonly)
	]]
	pop_upvr(createCursor_result1_upvr, arg1)
	pop_upvr(var3_result1_upvr, arg1)
	pop_upvr(createCursor_result1_upvr_2, arg1)
end
function getHostContext() -- Line 85
	--[[ Upvalues[1]:
		[1]: createCursor_result1_upvr (readonly)
	]]
	return createCursor_result1_upvr.current
end
local getChildHostContext_upvr = ReactFiberHostConfig.getChildHostContext
function pushHostContext(arg1) -- Line 92
	--[[ Upvalues[5]:
		[1]: createCursor_result1_upvr_2 (readonly)
		[2]: createCursor_result1_upvr (readonly)
		[3]: getChildHostContext_upvr (readonly)
		[4]: push_upvr (readonly)
		[5]: var3_result1_upvr (readonly)
	]]
	local requiredContext_result1 = requiredContext(createCursor_result1_upvr.current)
	local getChildHostContext_upvr_result1 = getChildHostContext_upvr(requiredContext_result1, arg1.type, requiredContext(createCursor_result1_upvr_2.current))
	if requiredContext_result1 == getChildHostContext_upvr_result1 then
	else
		push_upvr(var3_result1_upvr, arg1, arg1)
		push_upvr(createCursor_result1_upvr, getChildHostContext_upvr_result1, arg1)
	end
end
function popHostContext(arg1) -- Line 108
	--[[ Upvalues[3]:
		[1]: var3_result1_upvr (readonly)
		[2]: pop_upvr (readonly)
		[3]: createCursor_result1_upvr (readonly)
	]]
	if var3_result1_upvr.current ~= arg1 then
	else
		pop_upvr(createCursor_result1_upvr, arg1)
		pop_upvr(var3_result1_upvr, arg1)
	end
end
return {
	getHostContext = getHostContext;
	getRootHostContainer = getRootHostContainer;
	popHostContainer = popHostContainer;
	popHostContext = popHostContext;
	pushHostContainer = pushHostContainer;
	pushHostContext = pushHostContext;
}