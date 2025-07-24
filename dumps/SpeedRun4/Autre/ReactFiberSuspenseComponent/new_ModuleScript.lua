-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:13
-- Luau version 6, Types version 3
-- Time taken: 0.001781 seconds

local ReactFiberHostConfig = require(script.Parent.ReactFiberHostConfig)
local ReactWorkTags = require(script.Parent.ReactWorkTags)
local ReactFiberFlags = require(script.Parent.ReactFiberFlags)
local module = {
	shouldCaptureSuspense = function(arg1, arg2) -- Line 84
		local memoizedState = arg1.memoizedState
		if memoizedState then
			if memoizedState.dehydrated ~= nil then
				return true
			end
			return false
		end
		local memoizedProps = arg1.memoizedProps
		if memoizedProps.fallback == nil then
			return false
		end
		if memoizedProps.unstable_avoidThisFallback ~= true then
			return true
		end
		if arg2 then
			return false
		end
		return true
	end;
}
local SuspenseComponent_upvr = ReactWorkTags.SuspenseComponent
local isSuspenseInstancePending_upvr = ReactFiberHostConfig.isSuspenseInstancePending
local isSuspenseInstanceFallback_upvr = ReactFiberHostConfig.isSuspenseInstanceFallback
local SuspenseListComponent_upvr = ReactWorkTags.SuspenseListComponent
local DidCapture_upvr = ReactFiberFlags.DidCapture
local NoFlags_upvr = ReactFiberFlags.NoFlags
function module.findFirstSuspended(arg1) -- Line 116
	--[[ Upvalues[6]:
		[1]: SuspenseComponent_upvr (readonly)
		[2]: isSuspenseInstancePending_upvr (readonly)
		[3]: isSuspenseInstanceFallback_upvr (readonly)
		[4]: SuspenseListComponent_upvr (readonly)
		[5]: DidCapture_upvr (readonly)
		[6]: NoFlags_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [92] 61. Error Block 31 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [92] 61. Error Block 31 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [1] 2. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [1] 2. Error Block 2 end (CF ANALYSIS FAILED)
end
return module