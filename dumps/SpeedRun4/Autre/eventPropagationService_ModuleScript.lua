-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:46:53
-- Luau version 6, Types version 3
-- Time taken: 0.009155 seconds

local FocusNavigationUtils = require(script.Parent.Parent.FocusNavigationUtils)
local mockableWarn_upvr = FocusNavigationUtils.mockableWarn
local __DEBUG_EVENT_PROPAGATION___upvr = _G.__DEBUG_EVENT_PROPAGATION__
local function describeFunction_upvr(arg1) -- Line 108, Named "describeFunction"
	return table.concat(table.pack(debug.info(arg1, "sln")), ' ')
end
local function _(arg1, arg2) -- Line 112, Named "getEventsFromRegistry"
	return arg1[arg2]
end
local function _(arg1, arg2, arg3) -- Line 116, Named "getEventPhasesFromRegistry"
	local var4 = arg1[arg2]
	if var4 then
		return var4[arg3]
	end
	return nil
end
local function _(arg1, arg2, arg3, arg4) -- Line 125, Named "getEventHandler"
	local var5 = arg1[arg2]
	local var6
	if var5 then
		var6 = var5[arg3]
	else
		var6 = nil
	end
	if var6 ~= nil then
		return var6[arg4]
	end
	return nil
end
local module_3_upvr = {}
module_3_upvr.__index = module_3_upvr
function module_3_upvr.registerEventHandler(arg1, arg2, arg3, arg4, arg5) -- Line 138
	--[[ Upvalues[3]:
		[1]: __DEBUG_EVENT_PROPAGATION___upvr (readonly)
		[2]: mockableWarn_upvr (readonly)
		[3]: describeFunction_upvr (readonly)
	]]
	if __DEBUG_EVENT_PROPAGATION___upvr then
		print("+++ register handler", arg3, tostring(arg2), arg5 or "Bubble")
	end
	local var11 = arg5 or "Bubble"
	local var12 = arg1.eventHandlerRegistry[arg2]
	if not var12 then
		var12 = {}
	end
	arg1.eventHandlerRegistry[arg2] = var12
	local var13 = arg1.eventHandlerRegistry[arg2][arg3]
	if not var13 then
		var13 = {}
	end
	arg1.eventHandlerRegistry[arg2][arg3] = var13
	if _G.__DEV__ then
		local var14 = arg1.eventHandlerRegistry[arg2][arg3][var11]
		if var14 then
			mockableWarn_upvr(string.format("New handler bound to the %s phase of '%s' will override an existing handler:".."\n\tprevious handler: %s\n\t     new handler: %s", var11, arg3, table.concat(table.pack(debug.info(arg4, "sln")), ' '), describeFunction_upvr(var14)))
		end
	end
	arg1.eventHandlerRegistry[arg2][arg3][var11] = arg4
end
function module_3_upvr.registerEventHandlers(arg1, arg2, arg3) -- Line 169
	if not arg1.eventHandlerRegistry[arg2] then
		arg1.eventHandlerRegistry[arg2] = {}
	end
	for i, v in arg3 do
		arg1:registerEventHandler(arg2, i, v.handler, v.phase)
	end
end
function module_3_upvr.deregisterEventHandlers(arg1, arg2, arg3) -- Line 178
	if not arg1.eventHandlerRegistry[arg2] then
	else
		for var17, var18 in arg3 do
			arg1:deregisterEventHandler(arg2, var17, var18.handler, var18.phase)
		end
	end
end
function module_3_upvr.deregisterEventHandler(arg1, arg2, arg3, arg4, arg5) -- Line 187
	--[[ Upvalues[2]:
		[1]: __DEBUG_EVENT_PROPAGATION___upvr (readonly)
		[2]: mockableWarn_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var25
	if __DEBUG_EVENT_PROPAGATION___upvr then
		var25 = "--- deregister handler"
		print(var25, arg3, tostring(arg2), arg5 or "Bubble")
	end
	local var26 = arg5 or "Bubble"
	local var27 = arg1.eventHandlerRegistry[arg2]
	if var27 then
		var25 = var27[arg3]
	else
		var25 = nil
	end
	if var25 and var25[var26] then
		if _G.__DEV__ then
			local var28 = var25[var26]
			local var29
			if var28 ~= arg4 then
				if type(arg4) == "function" then
					var29 = table.concat(table.pack(debug.info(arg4, "sln")), ' ')
				else
					var29 = tostring(arg4)
				end
				if type(var28) == "function" then
					local _ = table.concat(table.pack(debug.info(var28, "sln")), ' ')
				else
				end
				mockableWarn_upvr(string.format("Deregistering non-matching event handler bound to the %s phase of '%s':".."\n\tprevious handler: %s\n\t     new handler: %s", var26, arg3, var29, tostring(var28)))
			end
		end
		var25[var26] = nil
	elseif _G.__DEV__ then
		mockableWarn_upvr(string.format("Cannot deregister unregistered event handler bound to the %s phase of '%s'", var26, arg3))
	end
end
function module_3_upvr.getRegisteredEventHandlers(arg1, arg2) -- Line 228
	local var35 = arg1.eventHandlerRegistry[arg2]
	if var35 then
		local module_2 = {}
		for i_2, v_2 in var35 do
			local var37
			if next(v_2) == nil then
				var37 = false
			else
				var37 = true
			end
			module_2[i_2] = var37
		end
		return module_2
	end
	return nil
end
local eventPropagationEvent_upvr = require(script.Parent.eventPropagationEvent)
local getAncestors_upvr = FocusNavigationUtils.getAncestors
function module_3_upvr.propagateEvent(arg1, arg2, arg3, arg4, arg5) -- Line 242
	--[[ Upvalues[3]:
		[1]: eventPropagationEvent_upvr (readonly)
		[2]: getAncestors_upvr (readonly)
		[3]: __DEBUG_EVENT_PROPAGATION___upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local function _(arg1_2, arg2_2) -- Line 243, Named "runEventHandler"
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: arg3 (readonly)
			[3]: eventPropagationEvent_upvr (copied, readonly)
			[4]: arg2 (readonly)
			[5]: arg4 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var48 = arg1.eventHandlerRegistry[arg1_2]
		local var49
		if var48 then
			var49 = var48[arg3]
		else
			var49 = nil
		end
		if var49 ~= nil then
			local _ = var49[arg2_2]
		else
		end
		if nil then
			var49 = arg1_2
			local any_new_result1 = eventPropagationEvent_upvr.new(arg2, var49, arg3, arg2_2, arg4)
			var49 = any_new_result1
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			nil(var49)
			return any_new_result1.cancelled
		end
		return false
	end
	local var52
	if arg5 then
		var52 = {}
		var52[1] = arg2
	else
		var52 = getAncestors_upvr(arg2)
	end
	if __DEBUG_EVENT_PROPAGATION___upvr then
		print(">>> capture event", arg3, "for", tostring(arg2))
	end
	for i_3 = #var52, 1, -1 do
		local var53 = var52[i_3]
		local var54 = arg1.eventHandlerRegistry[var53]
		local var55
		if var54 then
			var55 = var54[arg3]
		else
			var55 = nil
		end
		if var55 ~= nil then
			local _ = var55.Capture
		else
		end
		if nil then
			var55 = eventPropagationEvent_upvr
			var55 = arg2
			var55 = nil
			var55(var55.new(var55, var53, arg3, "Capture", arg4))
		else
		end
		if false then return end
	end
	local var58 = arg1.eventHandlerRegistry[arg2]
	if var58 then
		i_3 = var58[arg3]
		local var59 = i_3
	else
		var59 = nil
	end
	if var59 ~= nil then
		local _ = var59.Target
	else
	end
	if nil then
		var55 = arg4
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		nil(eventPropagationEvent_upvr.new(arg2, arg2, arg3, "Target", var55))
	else
	end
	if false then
	else
		if __DEBUG_EVENT_PROPAGATION___upvr then
			print("<<< bubble event", arg3, "from", tostring(arg2))
		end
		for i_4 = 1, #var52 do
			local var62 = var52[i_4]
			local var63 = arg1.eventHandlerRegistry[var62]
			if var63 then
				var55 = var63[arg3]
			else
				var55 = nil
			end
			if var55 ~= nil then
				local _ = var55.Bubble
			else
			end
			if nil then
				var55 = eventPropagationEvent_upvr
				var55 = arg2
				var55 = nil
				var55(var55.new(var55, var62, arg3, "Bubble", arg4))
			else
			end
			if false then return end
		end
	end
end
function module_3_upvr.new() -- Line 280
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	local module = {
		eventHandlerRegistry = setmetatable({}, {
			__mode = 'k';
		});
	}
	setmetatable(module, module_3_upvr)
	return module
end
return module_3_upvr