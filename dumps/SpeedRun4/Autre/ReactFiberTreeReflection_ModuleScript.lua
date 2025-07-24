-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:16
-- Luau version 6, Types version 3
-- Time taken: 0.006507 seconds

local Parent = script.Parent.Parent
local invariant_upvr = require(Parent.Shared).invariant
local ReactWorkTags = require(script.Parent.ReactWorkTags)
local HostComponent_upvr = ReactWorkTags.HostComponent
local HostRoot_upvr = ReactWorkTags.HostRoot
local HostText_upvr = ReactWorkTags.HostText
local SuspenseComponent_upvr = ReactWorkTags.SuspenseComponent
local ReactFiberFlags = require(script.Parent.ReactFiberFlags)
local module = {}
local Placement_upvr = ReactFiberFlags.Placement
local Hydrating_upvr = ReactFiberFlags.Hydrating
local NoFlags_upvr = ReactFiberFlags.NoFlags
local function getNearestMountedFiber_upvr(arg1) -- Line 49, Named "getNearestMountedFiber"
	--[[ Upvalues[4]:
		[1]: Placement_upvr (readonly)
		[2]: Hydrating_upvr (readonly)
		[3]: NoFlags_upvr (readonly)
		[4]: HostRoot_upvr (readonly)
	]]
	-- KONSTANTERROR: [30] 22. Error Block 7 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [30] 22. Error Block 7 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 27 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [30.3]
	if not nil then
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [30.4]
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [30.385942349]
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [30.5]
		if nil ~= nil then
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if nil then
			-- KONSTANTWARNING: GOTO [6] #6
		end
	else
		while true do
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [31.1]
			if not nil.return_ then break end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		end
	end
	-- KONSTANTERROR: [0] 1. Error Block 27 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [37] 27. Error Block 17 start (CF ANALYSIS FAILED)
	if nil.return_.tag == HostRoot_upvr then
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [42.2]
		return nil
	end
	do
		return nil
	end
	-- KONSTANTERROR: [37] 27. Error Block 17 end (CF ANALYSIS FAILED)
end
module.getNearestMountedFiber = getNearestMountedFiber_upvr
function module.getSuspenseInstanceFromFiber(arg1) -- Line 83
	--[[ Upvalues[1]:
		[1]: SuspenseComponent_upvr (readonly)
	]]
	if arg1.tag == SuspenseComponent_upvr then
		local memoizedState_2 = arg1.memoizedState
		if memoizedState_2 == nil then
			local alternate = arg1.alternate
			if alternate ~= nil then
				memoizedState_2 = alternate.memoizedState
			end
		end
		if memoizedState_2 then
			return memoizedState_2.dehydrated
		end
	end
	return nil
end
function module.getContainerFromFiber(arg1) -- Line 99
	--[[ Upvalues[1]:
		[1]: HostRoot_upvr (readonly)
	]]
	if arg1.tag == HostRoot_upvr then
		return arg1.stateNode.containerInfo
	end
	return nil
end
function module.isFiberMounted(arg1) -- Line 103
	--[[ Upvalues[1]:
		[1]: getNearestMountedFiber_upvr (readonly)
	]]
	local var20
	if getNearestMountedFiber_upvr(arg1) ~= arg1 then
		var20 = false
	else
		var20 = true
	end
	return var20
end
local ReactCurrentOwner_upvr = require(Parent.Shared).ReactSharedInternals.ReactCurrentOwner
local ClassComponent_upvr = ReactWorkTags.ClassComponent
local console_upvr = require(Parent.Shared).console
local getComponentName_upvr = require(Parent.Shared).getComponentName
local get_upvr = require(Parent.Shared).ReactInstanceMap.get
function module.isMounted(arg1) -- Line 109
	--[[ Upvalues[6]:
		[1]: ReactCurrentOwner_upvr (readonly)
		[2]: ClassComponent_upvr (readonly)
		[3]: console_upvr (readonly)
		[4]: getComponentName_upvr (readonly)
		[5]: get_upvr (readonly)
		[6]: getNearestMountedFiber_upvr (readonly)
	]]
	local var32
	if _G.__DEV__ then
		var32 = ReactCurrentOwner_upvr
		local current_2 = var32.current
		if current_2 ~= nil then
			var32 = current_2.tag
			if var32 == ClassComponent_upvr then
				var32 = current_2.stateNode
				if not var32._warnedAboutRefsInRender then
					console_upvr.error("%s is accessing isMounted inside its render() function. ".."render() should be a pure function of props and state. It should ".."never access something that requires stale data from the previous ".."render, such as refs. Move this logic to componentDidMount and ".."componentDidUpdate instead.", getComponentName_upvr(current_2.type) or "A component")
				end
				var32._warnedAboutRefsInRender = true
			end
		end
	end
	var32 = arg1
	local var26_result1 = get_upvr(var32)
	if not var26_result1 then
		var32 = false
		return var32
	end
	if getNearestMountedFiber_upvr(var26_result1) ~= var26_result1 then
		var32 = false
	else
		var32 = true
	end
	return var32
end
local function _(arg1) -- Line 139, Named "assertIsMounted"
	--[[ Upvalues[2]:
		[1]: invariant_upvr (readonly)
		[2]: getNearestMountedFiber_upvr (readonly)
	]]
	local var35
	if getNearestMountedFiber_upvr(arg1) ~= arg1 then
		var35 = false
	else
		var35 = true
	end
	invariant_upvr(var35, "Unable to find node on an unmounted component.")
end
local function findCurrentFiberUsingSlowPath_upvr(arg1) -- Line 146, Named "findCurrentFiberUsingSlowPath"
	--[[ Upvalues[3]:
		[1]: getNearestMountedFiber_upvr (readonly)
		[2]: invariant_upvr (readonly)
		[3]: HostRoot_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 105 start (CF ANALYSIS FAILED)
	local var37
	if not arg1.alternate then
		local getNearestMountedFiber_result1 = getNearestMountedFiber_upvr(arg1)
		if getNearestMountedFiber_result1 == nil then
			var37 = false
		else
			var37 = true
		end
		invariant_upvr(var37, "Unable to find node on an unmounted component.")
		if getNearestMountedFiber_result1 ~= arg1 then
			return nil
		end
		return arg1
	end
	-- KONSTANTERROR: [0] 1. Error Block 105 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [142] 112. Error Block 61 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [142] 112. Error Block 61 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [20] 18. Error Block 116 start (CF ANALYSIS FAILED)
	if var37 ~= nil then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if "Unable to find node on an unmounted component." == nil then
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [142.6]
			if nil ~= nil then
				-- KONSTANTWARNING: GOTO [142] #112
			end
			-- KONSTANTWARNING: GOTO [143] #113
		end
		-- KONSTANTWARNING: GOTO [36] #28
	end
	-- KONSTANTERROR: [20] 18. Error Block 116 end (CF ANALYSIS FAILED)
end
module.findCurrentFiberUsingSlowPath = findCurrentFiberUsingSlowPath_upvr
function module.findCurrentHostFiber(arg1) -- Line 281
	--[[ Upvalues[3]:
		[1]: findCurrentFiberUsingSlowPath_upvr (readonly)
		[2]: HostComponent_upvr (readonly)
		[3]: HostText_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 24 start (CF ANALYSIS FAILED)
	local findCurrentFiberUsingSlowPath_upvr_result1_3 = findCurrentFiberUsingSlowPath_upvr(arg1)
	if not findCurrentFiberUsingSlowPath_upvr_result1_3 then
		return nil
	end
	local _ = findCurrentFiberUsingSlowPath_upvr_result1_3
	-- KONSTANTERROR: [0] 1. Error Block 24 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [44] 34. Error Block 20 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [44] 34. Error Block 20 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [7] 8. Error Block 33 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [44.4]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [44.966]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [44.5]
	local function INLINED() -- Internal function, doesn't exist in bytecode
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		return nil == nil
	end
	if nil == nil or INLINED() then
	end
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [44.3]
	if nil then
		-- KONSTANTWARNING: GOTO [44] #34
	end
	-- KONSTANTERROR: [7] 8. Error Block 33 end (CF ANALYSIS FAILED)
end
local enableFundamentalAPI_upvr = require(Parent.Shared).ReactFeatureFlags.enableFundamentalAPI
local FundamentalComponent_upvr = ReactWorkTags.FundamentalComponent
local HostPortal_upvr = ReactWorkTags.HostPortal
function module.findCurrentHostFiberWithNoPortals(arg1) -- Line 320
	--[[ Upvalues[6]:
		[1]: findCurrentFiberUsingSlowPath_upvr (readonly)
		[2]: HostComponent_upvr (readonly)
		[3]: HostText_upvr (readonly)
		[4]: enableFundamentalAPI_upvr (readonly)
		[5]: FundamentalComponent_upvr (readonly)
		[6]: HostPortal_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 27 start (CF ANALYSIS FAILED)
	local findCurrentFiberUsingSlowPath_upvr_result1 = findCurrentFiberUsingSlowPath_upvr(arg1)
	local var49
	if not findCurrentFiberUsingSlowPath_upvr_result1 then
		var49 = nil
		return var49
	end
	var49 = findCurrentFiberUsingSlowPath_upvr_result1
	-- KONSTANTERROR: [0] 1. Error Block 27 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [56] 42. Error Block 23 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [56] 42. Error Block 23 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [7] 8. Error Block 37 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [56.4]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [56.966]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [56.5]
	local function INLINED_5() -- Internal function, doesn't exist in bytecode
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		return nil == nil
	end
	local function INLINED_6() -- Internal function, doesn't exist in bytecode
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return nil
	end
	local function INLINED_7() -- Internal function, doesn't exist in bytecode
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		return nil == nil
	end
	if nil == nil or INLINED_5() or INLINED_6() and INLINED_7() then
	end
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [56.3]
	if nil then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		if nil ~= nil then
			-- KONSTANTWARNING: GOTO [56] #42
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if var49 == findCurrentFiberUsingSlowPath_upvr_result1 then
	end
	if not nil then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x3)
		if not nil or nil == findCurrentFiberUsingSlowPath_upvr_result1 then
		end
		-- KONSTANTWARNING: GOTO [45] #33
	end
	-- KONSTANTERROR: [7] 8. Error Block 37 end (CF ANALYSIS FAILED)
end
function module.isFiberSuspenseAndTimedOut(arg1) -- Line 362
	--[[ Upvalues[1]:
		[1]: SuspenseComponent_upvr (readonly)
	]]
	local memoizedState = arg1.memoizedState
	local var52 = false
	if arg1.tag == SuspenseComponent_upvr then
		var52 = false
		if memoizedState ~= nil then
			if memoizedState.dehydrated ~= nil then
				var52 = false
			else
				var52 = true
			end
		end
	end
	return var52
end
function module.doesFiberContain(arg1, arg2) -- Line 369
	local var54 = arg2
	while var54 ~= nil do
		if var54 == arg1 or var54 == arg1.alternate then
			return true
		end
	end
	return false
end
return module