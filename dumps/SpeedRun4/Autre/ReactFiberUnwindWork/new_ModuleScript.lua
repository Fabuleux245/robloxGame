-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:16
-- Luau version 6, Types version 3
-- Time taken: 0.005425 seconds

local Parent = script.Parent.Parent
local resetWorkInProgressVersions_upvr = require(script.Parent["ReactMutableSource.new"]).resetWorkInProgressVersions
local ReactWorkTags_upvr = require(script.Parent.ReactWorkTags)
local ReactFeatureFlags = require(Parent.Shared).ReactFeatureFlags
local new = require(script.Parent["ReactFiberHostContext.new"])
local popHostContainer_upvr = new.popHostContainer
local popHostContext_upvr = new.popHostContext
local popSuspenseContext_upvr = require(script.Parent["ReactFiberSuspenseContext.new"]).popSuspenseContext
local new_2 = require(script.Parent["ReactFiberContext.new"])
local popContext_upvr = new_2.popContext
local popTopLevelContextObject_upvr = new_2.popTopLevelContextObject
local popProvider_upvr = require(script.Parent["ReactFiberNewContext.new"]).popProvider
local var14_upvw
local function var13_upvr(...) -- Line 47
	--[[ Upvalues[1]:
		[1]: var14_upvw (read and write)
	]]
	if not var14_upvw then
		var14_upvw = require(script.Parent["ReactFiberWorkLoop.new"]).popRenderLanes
	end
	return var14_upvw(...)
end
local isContextProvider_upvr = new_2.isContextProvider
local ReactFiberFlags_upvr = require(script.Parent.ReactFiberFlags)
local enableProfilerTimer_upvr = ReactFeatureFlags.enableProfilerTimer
local ReactTypeOfMode_upvr = require(script.Parent.ReactTypeOfMode)
local transferActualDuration_upvr = require(script.Parent["ReactProfilerTimer.new"]).transferActualDuration
local invariant_upvr = require(Parent.Shared).invariant
local enableSuspenseServerRenderer_upvr = ReactFeatureFlags.enableSuspenseServerRenderer
local resetHydrationState_upvr = require(script.Parent["ReactFiberHydrationContext.new"]).resetHydrationState
function unwindInterruptedWork(arg1) -- Line 154
	--[[ Upvalues[9]:
		[1]: ReactWorkTags_upvr (readonly)
		[2]: popContext_upvr (readonly)
		[3]: popHostContainer_upvr (readonly)
		[4]: popTopLevelContextObject_upvr (readonly)
		[5]: resetWorkInProgressVersions_upvr (readonly)
		[6]: popHostContext_upvr (readonly)
		[7]: popSuspenseContext_upvr (readonly)
		[8]: popProvider_upvr (readonly)
		[9]: var13_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [22] 14. Error Block 5 start (CF ANALYSIS FAILED)
	popContext_upvr(arg1)
	do
		return
	end
	-- KONSTANTERROR: [22] 14. Error Block 5 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [26] 18. Error Block 32 start (CF ANALYSIS FAILED)
	if arg1.tag == ReactWorkTags_upvr.HostRoot then
		popHostContainer_upvr(arg1)
		popTopLevelContextObject_upvr(arg1)
		resetWorkInProgressVersions_upvr()
		return
	end
	if arg1.tag == ReactWorkTags_upvr.HostComponent then
		popHostContext_upvr(arg1)
		return
	end
	if arg1.tag == ReactWorkTags_upvr.HostPortal then
		popHostContainer_upvr(arg1)
		return
	end
	if arg1.tag == ReactWorkTags_upvr.SuspenseComponent then
		popSuspenseContext_upvr(arg1)
		return
	end
	if arg1.tag == ReactWorkTags_upvr.SuspenseListComponent then
		popSuspenseContext_upvr(arg1)
		return
	end
	if arg1.tag == ReactWorkTags_upvr.ContextProvider then
		popProvider_upvr(arg1)
		return
	end
	if arg1.tag == ReactWorkTags_upvr.OffscreenComponent or arg1.tag == ReactWorkTags_upvr.LegacyHiddenComponent then
		var13_upvr(arg1)
		return
	end
	do
		return
	end
	-- KONSTANTERROR: [26] 18. Error Block 32 end (CF ANALYSIS FAILED)
end
return {
	unwindWork = function(arg1, arg2) -- Line 59, Named "unwindWork"
		--[[ Upvalues[17]:
			[1]: ReactWorkTags_upvr (readonly)
			[2]: isContextProvider_upvr (readonly)
			[3]: popContext_upvr (readonly)
			[4]: ReactFiberFlags_upvr (readonly)
			[5]: enableProfilerTimer_upvr (readonly)
			[6]: ReactTypeOfMode_upvr (readonly)
			[7]: transferActualDuration_upvr (readonly)
			[8]: popHostContainer_upvr (readonly)
			[9]: popTopLevelContextObject_upvr (readonly)
			[10]: resetWorkInProgressVersions_upvr (readonly)
			[11]: invariant_upvr (readonly)
			[12]: popHostContext_upvr (readonly)
			[13]: popSuspenseContext_upvr (readonly)
			[14]: enableSuspenseServerRenderer_upvr (readonly)
			[15]: resetHydrationState_upvr (readonly)
			[16]: popProvider_upvr (readonly)
			[17]: var13_upvr (readonly)
		]]
		if arg1.tag == ReactWorkTags_upvr.ClassComponent then
			if isContextProvider_upvr(arg1.type) then
				popContext_upvr(arg1)
			end
			local flags = arg1.flags
			if bit32.band(flags, ReactFiberFlags_upvr.ShouldCapture) ~= 0 then
				arg1.flags = bit32.bor(bit32.band(flags, bit32.bnot(ReactFiberFlags_upvr.ShouldCapture)), ReactFiberFlags_upvr.DidCapture)
				if enableProfilerTimer_upvr and bit32.band(arg1.mode, ReactTypeOfMode_upvr.ProfileMode) ~= ReactTypeOfMode_upvr.NoMode then
					transferActualDuration_upvr(arg1)
				end
				return arg1
			end
			return nil
		end
		local var30 = ReactWorkTags_upvr
		if arg1.tag == var30.HostRoot then
			popHostContainer_upvr(arg1)
			popTopLevelContextObject_upvr(arg1)
			resetWorkInProgressVersions_upvr()
			local flags_4 = arg1.flags
			if bit32.band(flags_4, ReactFiberFlags_upvr.DidCapture) ~= ReactFiberFlags_upvr.NoFlags then
				var30 = false
			else
				var30 = true
			end
			invariant_upvr(var30, "The root failed to unmount after an error. This is likely a bug in ".."React. Please file an issue.")
			var30 = bit32.band(flags_4, bit32.bnot(ReactFiberFlags_upvr.ShouldCapture))
			arg1.flags = bit32.bor(var30, ReactFiberFlags_upvr.DidCapture)
			return arg1
		end
		if arg1.tag == ReactWorkTags_upvr.HostComponent then
			popHostContext_upvr(arg1)
			return nil
		end
		local var32 = ReactWorkTags_upvr
		if arg1.tag == var32.SuspenseComponent then
			popSuspenseContext_upvr(arg1)
			if enableSuspenseServerRenderer_upvr then
				local memoizedState = arg1.memoizedState
				if memoizedState ~= nil and memoizedState.dehydrated ~= nil then
					if arg1.alternate == nil then
						var32 = false
					else
						var32 = true
					end
					invariant_upvr(var32, "Threw in newly mounted dehydrated component. This is likely a bug in ".."React. Please file an issue.")
					resetHydrationState_upvr()
				end
			end
			local flags_2 = arg1.flags
			var32 = flags_2
			if bit32.band(var32, ReactFiberFlags_upvr.ShouldCapture) ~= 0 then
				var32 = bit32.band(flags_2, bit32.bnot(ReactFiberFlags_upvr.ShouldCapture))
				arg1.flags = bit32.bor(var32, ReactFiberFlags_upvr.DidCapture)
				if enableProfilerTimer_upvr then
					var32 = arg1.mode
					var32 = ReactTypeOfMode_upvr.NoMode
					if bit32.band(var32, ReactTypeOfMode_upvr.ProfileMode) ~= var32 then
						var32 = arg1
						transferActualDuration_upvr(var32)
					end
				end
				return arg1
			end
			return nil
		end
		if arg1.tag == ReactWorkTags_upvr.SuspenseListComponent then
			popSuspenseContext_upvr(arg1)
			return nil
		end
		if arg1.tag == ReactWorkTags_upvr.HostPortal then
			popHostContainer_upvr(arg1)
			return nil
		end
		if arg1.tag == ReactWorkTags_upvr.ContextProvider then
			popProvider_upvr(arg1)
			return nil
		end
		if arg1.tag == ReactWorkTags_upvr.OffscreenComponent or arg1.tag == ReactWorkTags_upvr.LegacyHiddenComponent then
			var13_upvr(arg1)
			return nil
		end
		return nil
	end;
	unwindInterruptedWork = unwindInterruptedWork;
}