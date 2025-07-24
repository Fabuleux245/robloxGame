-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:09
-- Luau version 6, Types version 3
-- Time taken: 0.005615 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local console_upvr = require(Parent.Shared).console
local new = require(script.Parent["ReactFiberStack.new"])
local ReactFiberLane = require(script.Parent.ReactFiberLane)
local new_2 = require(script.Parent["ReactUpdateQueue.new"])
local isPrimaryRenderer_upvr = require(script.Parent.ReactFiberHostConfig).isPrimaryRenderer
local ReactWorkTags = require(script.Parent.ReactWorkTags)
local module_upvr = {}
local any_createCursor_result1_upvr = new.createCursor(nil)
local var11_upvw
if _G.__DEV__ then
	var11_upvw = {}
end
local var12_upvw
local var13_upvw
local var14_upvw
local var15_upvw = false
function module_upvr.resetContextDependencies() -- Line 73
	--[[ Upvalues[4]:
		[1]: var12_upvw (read and write)
		[2]: var13_upvw (read and write)
		[3]: var14_upvw (read and write)
		[4]: var15_upvw (read and write)
	]]
	var12_upvw = nil
	var13_upvw = nil
	var14_upvw = nil
	if _G.__DEV__ then
		var15_upvw = false
	end
end
function module_upvr.enterDisallowedContextReadInDEV() -- Line 84
	--[[ Upvalues[1]:
		[1]: var15_upvw (read and write)
	]]
	if _G.__DEV__ then
		var15_upvw = true
	end
end
function module_upvr.exitDisallowedContextReadInDEV() -- Line 90
	--[[ Upvalues[1]:
		[1]: var15_upvw (read and write)
	]]
	if _G.__DEV__ then
		var15_upvw = false
	end
end
local push_upvr = new.push
function module_upvr.pushProvider(arg1, arg2) -- Line 96
	--[[ Upvalues[5]:
		[1]: isPrimaryRenderer_upvr (readonly)
		[2]: push_upvr (readonly)
		[3]: any_createCursor_result1_upvr (readonly)
		[4]: var11_upvw (read and write)
		[5]: console_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local _context_2 = arg1.type._context
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [19] 14. Error Block 15 start (CF ANALYSIS FAILED)
	if _context_2._currentRenderer ~= nil and _context_2._currentRenderer ~= var11_upvw then
		console_upvr.error("Detected multiple renderers concurrently rendering the ".."same context provider. This is currently unsupported.")
	end
	_context_2._currentRenderer = var11_upvw
	do
		return
	end
	-- KONSTANTERROR: [19] 14. Error Block 15 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [39] 28. Error Block 17 start (CF ANALYSIS FAILED)
	push_upvr(any_createCursor_result1_upvr, _context_2._currentValue2, arg1)
	_context_2._currentValue2 = arg2
	if _G.__DEV__ then
		if _context_2._currentRenderer2 ~= nil and _context_2._currentRenderer2 ~= var11_upvw then
			console_upvr.error("Detected multiple renderers concurrently rendering the ".."same context provider. This is currently unsupported.")
		end
		_context_2._currentRenderer2 = var11_upvw
	end
	-- KONSTANTERROR: [39] 28. Error Block 17 end (CF ANALYSIS FAILED)
end
local pop_upvr = new.pop
function module_upvr.popProvider(arg1) -- Line 134
	--[[ Upvalues[3]:
		[1]: any_createCursor_result1_upvr (readonly)
		[2]: pop_upvr (readonly)
		[3]: isPrimaryRenderer_upvr (readonly)
	]]
	local current = any_createCursor_result1_upvr.current
	pop_upvr(any_createCursor_result1_upvr, arg1)
	local _context = arg1.type._context
	if isPrimaryRenderer_upvr then
		_context._currentValue = current
	else
		_context._currentValue2 = current
	end
end
local objectIs_upvr = require(Parent.Shared).objectIs
local MAX_SIGNED_31_BIT_INT_upvr = require(script.Parent.MaxInts).MAX_SIGNED_31_BIT_INT
function module_upvr.calculateChangedBits(arg1, arg2, arg3) -- Line 147
	--[[ Upvalues[2]:
		[1]: objectIs_upvr (readonly)
		[2]: MAX_SIGNED_31_BIT_INT_upvr (readonly)
	]]
	if objectIs_upvr(arg3, arg2) then
		return 0
	end
	local var29 = MAX_SIGNED_31_BIT_INT_upvr
	if typeof(arg1._calculateChangedBits) == "function" then
		var29 = arg1._calculateChangedBits(arg3, arg2)
	end
	return math.floor(var29)
end
local isSubsetOfLanes_upvr = ReactFiberLane.isSubsetOfLanes
local mergeLanes_upvr = ReactFiberLane.mergeLanes
function module_upvr.scheduleWorkOnParentPath(arg1, arg2) -- Line 178
	--[[ Upvalues[2]:
		[1]: isSubsetOfLanes_upvr (readonly)
		[2]: mergeLanes_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [45] 34. Error Block 10 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [45] 34. Error Block 10 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [1] 2. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [1] 2. Error Block 2 end (CF ANALYSIS FAILED)
end
local ClassComponent_upvr = ReactWorkTags.ClassComponent
local createUpdate_upvr = new_2.createUpdate
local NoTimestamp_upvr = ReactFiberLane.NoTimestamp
local pickArbitraryLane_upvr = ReactFiberLane.pickArbitraryLane
local ForceUpdate_upvr = new_2.ForceUpdate
local ContextProvider_upvr = ReactWorkTags.ContextProvider
function module_upvr.propagateContextChange(arg1, arg2, arg3, arg4) -- Line 201
	--[[ Upvalues[7]:
		[1]: ClassComponent_upvr (readonly)
		[2]: createUpdate_upvr (readonly)
		[3]: NoTimestamp_upvr (readonly)
		[4]: pickArbitraryLane_upvr (readonly)
		[5]: ForceUpdate_upvr (readonly)
		[6]: module_upvr (readonly)
		[7]: ContextProvider_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local child = arg1.child
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 3. Error Block 2 start (CF ANALYSIS FAILED)
	child.return_ = arg1
	-- KONSTANTERROR: [4] 3. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [158] 98. Error Block 47 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [158.5]
	-- KONSTANTERROR: [158] 98. Error Block 47 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 4. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 4. Error Block 3 end (CF ANALYSIS FAILED)
end
local includesSomeLane_upvr = ReactFiberLane.includesSomeLane
function module_upvr.prepareToReadContext(arg1, arg2, arg3) -- Line 340
	--[[ Upvalues[4]:
		[1]: var12_upvw (read and write)
		[2]: var13_upvw (read and write)
		[3]: var14_upvw (read and write)
		[4]: includesSomeLane_upvr (readonly)
	]]
	var12_upvw = arg1
	var13_upvw = nil
	var14_upvw = nil
	local dependencies = arg1.dependencies
	if dependencies ~= nil and dependencies.firstContext ~= nil then
		if includesSomeLane_upvr(dependencies.lanes, arg2) then
			arg3()
		end
		dependencies.firstContext = nil
	end
end
local Number_upvr = LuauPolyfill.Number
local Error_upvr = LuauPolyfill.Error
local NoLanes_upvr = ReactFiberLane.NoLanes
function module_upvr.readContext(arg1, arg2) -- Line 363
	--[[ Upvalues[9]:
		[1]: var15_upvw (read and write)
		[2]: console_upvr (readonly)
		[3]: var14_upvw (read and write)
		[4]: Number_upvr (readonly)
		[5]: var13_upvw (read and write)
		[6]: var12_upvw (read and write)
		[7]: Error_upvr (readonly)
		[8]: NoLanes_upvr (readonly)
		[9]: isPrimaryRenderer_upvr (readonly)
	]]
	if _G.__DEV__ and var15_upvw then
		console_upvr.error("Context can only be read while React is rendering. ".."In classes, you can read it in the render method or getDerivedStateFromProps. ".."In function components, you can read it directly in the function body, but not ".."inside Hooks like useReducer() or useMemo().")
	end
	if var14_upvw == arg1 then
	elseif arg2 ~= false then
		if arg2 == 0 then
		else
			local var48
			if typeof(arg2) ~= "number" or arg2 == Number_upvr.MAX_SAFE_INTEGER then
				var14_upvw = arg1
				var48 = Number_upvr.MAX_SAFE_INTEGER
			else
				var48 = arg2
			end
			local tbl = {}
			tbl.context = arg1
			tbl.observedBits = var48
			tbl.next = nil
			if var13_upvw == nil then
				if var12_upvw == nil then
					error(Error_upvr.new("Context can only be read while React is rendering. ".."In classes, you can read it in the render method or getDerivedStateFromProps. ".."In function components, you can read it directly in the function body, but not ".."inside Hooks like useReducer() or useMemo()."))
				end
				var13_upvw = tbl
				var12_upvw.dependencies = {
					lanes = NoLanes_upvr;
					firstContext = tbl;
					responders = nil;
				}
			else
				var13_upvw.next = tbl
				var13_upvw = tbl
			end
		end
	end
	if isPrimaryRenderer_upvr then
		return arg1._currentValue
	end
	return arg1._currentValue2
end
return module_upvr