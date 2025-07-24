-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:00
-- Luau version 6, Types version 3
-- Time taken: 0.008742 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
-- KONSTANTERROR: [0] 1. Error Block 10 start (CF ANALYSIS FAILED)
local function _(arg1) -- Line 11, Named "unimplemented"
	print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
	print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
	print("UNIMPLEMENTED ERROR: "..tostring(arg1))
	error("FIXME (roblox): "..arg1.." is unimplemented", 2)
end
local Parent = script.Parent.Parent
local ReactFiberLane = require(script.Parent.ReactFiberLane)
local ReactFiberHostConfig = require(script.Parent.ReactFiberHostConfig)
local ReactWorkTags = require(script.Parent.ReactWorkTags)
local HostComponent_upvr = ReactWorkTags.HostComponent
local HostText_upvr = ReactWorkTags.HostText
local HostPortal_upvr = ReactWorkTags.HostPortal
local FundamentalComponent_upvr = ReactWorkTags.FundamentalComponent
local ReactTypeOfMode = require(script.Parent.ReactTypeOfMode)
local NoMode_upvr = ReactTypeOfMode.NoMode
local ProfileMode_upvr = ReactTypeOfMode.ProfileMode
local ReactFiberFlags = require(script.Parent.ReactFiberFlags)
local Ref_upvr = ReactFiberFlags.Ref
local Update_upvr = ReactFiberFlags.Update
local NoFlags_upvr = ReactFiberFlags.NoFlags
local supportsMutation_upvr = ReactFiberHostConfig.supportsMutation
local supportsPersistence_upvr = ReactFiberHostConfig.supportsPersistence
local new = require(script.Parent["ReactFiberHostContext.new"])
local new_2 = require(script.Parent["ReactFiberSuspenseContext.new"])
local new_5 = require(script.Parent["ReactFiberContext.new"])
local new_3 = require(script.Parent["ReactFiberHydrationContext.new"])
local ReactFeatureFlags = require(Parent.Shared).ReactFeatureFlags
local enableProfilerTimer_upvr = ReactFeatureFlags.enableProfilerTimer
local new_4_upvr = require(script.Parent["ReactFiberWorkLoop.new"])
local function _(arg1) -- Line 189, Named "markUpdate"
	--[[ Upvalues[1]:
		[1]: Update_upvr (readonly)
	]]
	arg1.flags = bit32.bor(arg1.flags, Update_upvr)
end
local function _(arg1) -- Line 195, Named "markRef"
	--[[ Upvalues[1]:
		[1]: Ref_upvr (readonly)
	]]
	arg1.flags = bit32.bor(arg1.flags, Ref_upvr)
end
local MutationMask_upvr = ReactFiberFlags.MutationMask
local function hadNoMutationsEffects_upvr(arg1, arg2) -- Line 201, Named "hadNoMutationsEffects"
	--[[ Upvalues[2]:
		[1]: MutationMask_upvr (readonly)
		[2]: NoFlags_upvr (readonly)
	]]
	local var26 = false
	if arg1 ~= nil then
		if arg1.child ~= arg2.child then
			var26 = false
		else
			var26 = true
		end
	end
	if var26 then
		return true
	end
	local child = arg2.child
	while child ~= nil do
		if bit32.band(child.flags, MutationMask_upvr) ~= NoFlags_upvr then
			return false
		end
		if bit32.band(child.subtreeFlags, MutationMask_upvr) ~= NoFlags_upvr then
			return false
		end
	end
	return true
end
local updateHostComponent_upvw
local updateHostContainer_upvw
if supportsMutation_upvr then
	local appendInitialChild_upvr = ReactFiberHostConfig.appendInitialChild
	local enableFundamentalAPI_upvr = ReactFeatureFlags.enableFundamentalAPI
	local function _(arg1, arg2, arg3, arg4) -- Line 227
		--[[ Upvalues[6]:
			[1]: HostComponent_upvr (readonly)
			[2]: HostText_upvr (readonly)
			[3]: appendInitialChild_upvr (readonly)
			[4]: enableFundamentalAPI_upvr (readonly)
			[5]: FundamentalComponent_upvr (readonly)
			[6]: HostPortal_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local var33
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [41] 29. Error Block 44 start (CF ANALYSIS FAILED)
		if var33.child ~= nil then
			var33.child.return_ = var33
		else
			if var33.child == arg2 then return end
			while true do
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if var33.child.sibling ~= nil then break end
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
				if var33.child.return_ == nil or var33.child.return_ == arg2 then return end
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			var33.child.return_.sibling.return_ = var33.child.return_.return_
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		end
		-- KONSTANTERROR: [41] 29. Error Block 44 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 2. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 2. Error Block 2 end (CF ANALYSIS FAILED)
	end
	function updateHostContainer_upvw(arg1, arg2) -- Line 265
	end
	local getHostContext_upvr = new.getHostContext
	local prepareUpdate_upvr = ReactFiberHostConfig.prepareUpdate
	function updateHostComponent_upvw(arg1, arg2, arg3, arg4, arg5) -- Line 268, Named "updateHostComponent"
		--[[ Upvalues[3]:
			[1]: getHostContext_upvr (readonly)
			[2]: prepareUpdate_upvr (readonly)
			[3]: Update_upvr (readonly)
		]]
		local memoizedProps = arg1.memoizedProps
		if memoizedProps == arg4 then
		else
			local var36_result1 = prepareUpdate_upvr(arg2.stateNode, arg3, memoizedProps, arg4, arg5, getHostContext_upvr())
			arg2.updateQueue = var36_result1
			if var36_result1 then
				arg2.flags = bit32.bor(arg2.flags, Update_upvr)
			end
		end
	end
	local function updateHostText_upvw(arg1, arg2, arg3, arg4) -- Line 309, Named "updateHostText"
		--[[ Upvalues[1]:
			[1]: Update_upvr (readonly)
		]]
		if arg3 ~= arg4 then
			arg2.flags = bit32.bor(arg2.flags, Update_upvr)
		end
	end
	-- KONSTANTWARNING: GOTO [369] #214
end
-- KONSTANTERROR: [0] 1. Error Block 10 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [359] 204. Error Block 11 start (CF ANALYSIS FAILED)
if supportsPersistence_upvr then
	local function var39_upvw(arg1, arg2, arg3, arg4) -- Line 322
		print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
		print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
		print("UNIMPLEMENTED ERROR: "..tostring("appendAllChildren"))
		error("FIXME (roblox): ".."appendAllChildren".." is unimplemented", 2)
	end
	local function _(arg1, arg2, arg3, arg4) -- Line 417, Named "appendAllChildrenToContainer"
		print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
		print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
		print("UNIMPLEMENTED ERROR: "..tostring("appendAllChildrenToContainer"))
		error("FIXME (roblox): ".."appendAllChildrenToContainer".." is unimplemented", 2)
	end
	local createContainerChildSet_upvr = ReactFiberHostConfig.createContainerChildSet
	local finalizeContainerChildren_upvr = ReactFiberHostConfig.finalizeContainerChildren
	function updateHostContainer_upvw(arg1, arg2) -- Line 511, Named "updateHostContainer"
		--[[ Upvalues[4]:
			[1]: hadNoMutationsEffects_upvr (readonly)
			[2]: createContainerChildSet_upvr (readonly)
			[3]: Update_upvr (readonly)
			[4]: finalizeContainerChildren_upvr (readonly)
		]]
		local stateNode = arg2.stateNode
		if hadNoMutationsEffects_upvr(arg1, arg2) then
		else
			local containerInfo = stateNode.containerInfo
			local createContainerChildSet_upvr_result1 = createContainerChildSet_upvr(containerInfo)
			print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
			print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
			print("UNIMPLEMENTED ERROR: "..tostring("appendAllChildrenToContainer"))
			error("FIXME (roblox): ".."appendAllChildrenToContainer".." is unimplemented", 2)
			stateNode.pendingChildren = createContainerChildSet_upvr_result1
			arg2.flags = bit32.bor(arg2.flags, Update_upvr)
			finalizeContainerChildren_upvr(containerInfo, createContainerChildSet_upvr_result1)
		end
	end
else
	updateHostContainer_upvw = function(arg1, arg2) -- Line 627
	end
end
local NoLanes_upvr = ReactFiberLane.NoLanes
local mergeLanes_upvr = ReactFiberLane.mergeLanes
local StaticMask_upvr = ReactFiberFlags.StaticMask
local function bubbleProperties_upvr(arg1) -- Line 720, Named "bubbleProperties"
	--[[ Upvalues[7]:
		[1]: NoLanes_upvr (readonly)
		[2]: NoFlags_upvr (readonly)
		[3]: enableProfilerTimer_upvr (readonly)
		[4]: ProfileMode_upvr (readonly)
		[5]: NoMode_upvr (readonly)
		[6]: mergeLanes_upvr (readonly)
		[7]: StaticMask_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 4. Error Block 47 start (CF ANALYSIS FAILED)
	if arg1.alternate.child ~= arg1.child then
	else
	end
	-- KONSTANTERROR: [5] 4. Error Block 47 end (CF ANALYSIS FAILED)
end
local IndeterminateComponent_upvr = ReactWorkTags.IndeterminateComponent
local LazyComponent_upvr = ReactWorkTags.LazyComponent
local SimpleMemoComponent_upvr = ReactWorkTags.SimpleMemoComponent
local FunctionComponent_upvr = ReactWorkTags.FunctionComponent
local ForwardRef_upvr = ReactWorkTags.ForwardRef
local Fragment_upvr = ReactWorkTags.Fragment
local Mode_upvr = ReactWorkTags.Mode
local ContextConsumer_upvr = ReactWorkTags.ContextConsumer
local MemoComponent_upvr = ReactWorkTags.MemoComponent
local ClassComponent_upvr = ReactWorkTags.ClassComponent
local isContextProvider_upvr = new_5.isContextProvider
local popContext_upvr = new_5.popContext
local HostRoot_upvr = ReactWorkTags.HostRoot
local popHostContainer_upvr = new.popHostContainer
local popTopLevelContextObject_upvr = new_5.popTopLevelContextObject
local resetWorkInProgressVersions_upvr = require(script.Parent["ReactMutableSource.new"]).resetWorkInProgressVersions
local popHydrationState_upvr = new_3.popHydrationState
local Snapshot_upvr = ReactFiberFlags.Snapshot
local popHostContext_upvr = new.popHostContext
local getRootHostContainer_upvr = new.getRootHostContainer
local invariant_upvr = require(Parent.Shared).invariant
local prepareToHydrateHostInstance_upvr = new_3.prepareToHydrateHostInstance
local createInstance_upvr = ReactFiberHostConfig.createInstance
local finalizeInitialChildren_upvr = ReactFiberHostConfig.finalizeInitialChildren
local prepareToHydrateHostTextInstance_upvr = new_3.prepareToHydrateHostTextInstance
local createTextInstance_upvr = ReactFiberHostConfig.createTextInstance
local Profiler_upvr = ReactWorkTags.Profiler
local Callback_upvr = ReactFiberFlags.Callback
local Passive_upvr = ReactFiberFlags.Passive
local PerformedWork_upvr = ReactFiberFlags.PerformedWork
local LayoutMask_upvr = ReactFiberFlags.LayoutMask
local Deletion_upvr = ReactFiberFlags.Deletion
local PassiveMask_upvr = ReactFiberFlags.PassiveMask
local SuspenseComponent_upvr = ReactWorkTags.SuspenseComponent
local popSuspenseContext_upvr = new_2.popSuspenseContext
local enableSuspenseServerRenderer_upvr = ReactFeatureFlags.enableSuspenseServerRenderer
local prepareToHydrateHostSuspenseInstance_upvr = new_3.prepareToHydrateHostSuspenseInstance
local enableSchedulerTracing_upvr = ReactFeatureFlags.enableSchedulerTracing
local markSpawnedWork_upvr = new_4_upvr.markSpawnedWork
local OffscreenLane_upvr = ReactFiberLane.OffscreenLane
local resetHydrationState_upvr = new_3.resetHydrationState
local DidCapture_upvr = ReactFiberFlags.DidCapture
local transferActualDuration_upvr = require(script.Parent["ReactProfilerTimer.new"]).transferActualDuration
local BlockingMode_upvr = ReactTypeOfMode.BlockingMode
local hasSuspenseContext_upvr = new_2.hasSuspenseContext
local suspenseStackCursor_upvr = new_2.suspenseStackCursor
local InvisibleParentSuspenseContext_upvr = new_2.InvisibleParentSuspenseContext
local renderDidSuspend_upvr = new_4_upvr.renderDidSuspend
local renderDidSuspendDelayIfPossible_upvr = new_4_upvr.renderDidSuspendDelayIfPossible
local enableSuspenseCallback_upvr = ReactFeatureFlags.enableSuspenseCallback
local preparePortalMount_upvr = ReactFiberHostConfig.preparePortalMount
local ContextProvider_upvr = ReactWorkTags.ContextProvider
local popProvider_upvr = require(script.Parent["ReactFiberNewContext.new"]).popProvider
local IncompleteClassComponent_upvr = ReactWorkTags.IncompleteClassComponent
local SuspenseListComponent_upvr = ReactWorkTags.SuspenseListComponent
local ScopeComponent_upvr = ReactWorkTags.ScopeComponent
local Block_upvr = ReactWorkTags.Block
local OffscreenComponent_upvr = ReactWorkTags.OffscreenComponent
local LegacyHiddenComponent_upvr = ReactWorkTags.LegacyHiddenComponent
local popRenderLanes_upvr = new_4_upvr.popRenderLanes
local includesSomeLane_upvr = ReactFiberLane.includesSomeLane
local ConcurrentMode_upvr = ReactTypeOfMode.ConcurrentMode
do
	return {
		completeWork = function(arg1, arg2, arg3) -- Line 859, Named "completeWork"
			--[[ Upvalues[81]:
				[1]: IndeterminateComponent_upvr (readonly)
				[2]: LazyComponent_upvr (readonly)
				[3]: SimpleMemoComponent_upvr (readonly)
				[4]: FunctionComponent_upvr (readonly)
				[5]: ForwardRef_upvr (readonly)
				[6]: Fragment_upvr (readonly)
				[7]: Mode_upvr (readonly)
				[8]: ContextConsumer_upvr (readonly)
				[9]: MemoComponent_upvr (readonly)
				[10]: bubbleProperties_upvr (readonly)
				[11]: ClassComponent_upvr (readonly)
				[12]: isContextProvider_upvr (readonly)
				[13]: popContext_upvr (readonly)
				[14]: HostRoot_upvr (readonly)
				[15]: popHostContainer_upvr (readonly)
				[16]: popTopLevelContextObject_upvr (readonly)
				[17]: resetWorkInProgressVersions_upvr (readonly)
				[18]: popHydrationState_upvr (readonly)
				[19]: Update_upvr (readonly)
				[20]: Snapshot_upvr (readonly)
				[21]: updateHostContainer_upvw (read and write)
				[22]: HostComponent_upvr (readonly)
				[23]: popHostContext_upvr (readonly)
				[24]: getRootHostContainer_upvr (readonly)
				[25]: updateHostComponent_upvw (read and write)
				[26]: Ref_upvr (readonly)
				[27]: invariant_upvr (readonly)
				[28]: getHostContext_upvr (readonly)
				[29]: prepareToHydrateHostInstance_upvr (readonly)
				[30]: createInstance_upvr (readonly)
				[31]: var39_upvw (read and write)
				[32]: finalizeInitialChildren_upvr (readonly)
				[33]: HostText_upvr (readonly)
				[34]: updateHostText_upvw (read and write)
				[35]: prepareToHydrateHostTextInstance_upvr (readonly)
				[36]: createTextInstance_upvr (readonly)
				[37]: Profiler_upvr (readonly)
				[38]: Callback_upvr (readonly)
				[39]: Passive_upvr (readonly)
				[40]: PerformedWork_upvr (readonly)
				[41]: NoFlags_upvr (readonly)
				[42]: LayoutMask_upvr (readonly)
				[43]: Deletion_upvr (readonly)
				[44]: PassiveMask_upvr (readonly)
				[45]: SuspenseComponent_upvr (readonly)
				[46]: popSuspenseContext_upvr (readonly)
				[47]: enableSuspenseServerRenderer_upvr (readonly)
				[48]: prepareToHydrateHostSuspenseInstance_upvr (readonly)
				[49]: enableSchedulerTracing_upvr (readonly)
				[50]: markSpawnedWork_upvr (readonly)
				[51]: OffscreenLane_upvr (readonly)
				[52]: enableProfilerTimer_upvr (readonly)
				[53]: ProfileMode_upvr (readonly)
				[54]: NoMode_upvr (readonly)
				[55]: resetHydrationState_upvr (readonly)
				[56]: DidCapture_upvr (readonly)
				[57]: transferActualDuration_upvr (readonly)
				[58]: BlockingMode_upvr (readonly)
				[59]: hasSuspenseContext_upvr (readonly)
				[60]: suspenseStackCursor_upvr (readonly)
				[61]: InvisibleParentSuspenseContext_upvr (readonly)
				[62]: renderDidSuspend_upvr (readonly)
				[63]: renderDidSuspendDelayIfPossible_upvr (readonly)
				[64]: supportsPersistence_upvr (readonly)
				[65]: supportsMutation_upvr (readonly)
				[66]: enableSuspenseCallback_upvr (readonly)
				[67]: HostPortal_upvr (readonly)
				[68]: preparePortalMount_upvr (readonly)
				[69]: ContextProvider_upvr (readonly)
				[70]: popProvider_upvr (readonly)
				[71]: IncompleteClassComponent_upvr (readonly)
				[72]: SuspenseListComponent_upvr (readonly)
				[73]: FundamentalComponent_upvr (readonly)
				[74]: ScopeComponent_upvr (readonly)
				[75]: Block_upvr (readonly)
				[76]: OffscreenComponent_upvr (readonly)
				[77]: LegacyHiddenComponent_upvr (readonly)
				[78]: popRenderLanes_upvr (readonly)
				[79]: includesSomeLane_upvr (readonly)
				[80]: new_4_upvr (readonly)
				[81]: ConcurrentMode_upvr (readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [7] 5. Error Block 2 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [7] 5. Error Block 2 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [12] 8. Error Block 3 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [12] 8. Error Block 3 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [17] 11. Error Block 4 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [17] 11. Error Block 4 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [22] 14. Error Block 5 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [22] 14. Error Block 5 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [27] 17. Error Block 6 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [27] 17. Error Block 6 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [32] 20. Error Block 7 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [32] 20. Error Block 7 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [37] 23. Error Block 8 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [37] 23. Error Block 8 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [42] 26. Error Block 9 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [42] 26. Error Block 9 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [47] 29. Error Block 236 start (CF ANALYSIS FAILED)
			bubbleProperties_upvr(arg2)
			do
				return nil
			end
			-- KONSTANTERROR: [47] 29. Error Block 236 end (CF ANALYSIS FAILED)
		end;
	}
end
-- KONSTANTERROR: [359] 204. Error Block 11 end (CF ANALYSIS FAILED)