-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:05:30
-- Luau version 6, Types version 3
-- Time taken: 0.001264 seconds

local module_2 = {
	enableFilterEmptyStringAttributesDOM = true;
	enableDebugTracing = false;
}
local var4 = require(script.Parent.Parent.SafeFlags).createGetFFlag("ReactEnableSchedulingProfiler")()
if not var4 then
	var4 = _G.__PROFILE__
	if var4 then
		var4 = _G.__EXPERIMENTAL__
	end
end
module_2.enableSchedulingProfiler = var4
module_2.debugRenderPhaseSideEffectsForStrictMode = _G.__DEV__
module_2.replayFailedUnitOfWorkWithInvokeGuardedCallback = _G.__DEV__
module_2.warnAboutDeprecatedLifecycles = true
module_2.enableProfilerTimer = _G.__PROFILE__
module_2.enableProfilerCommitHooks = _G.__PROFILE__
module_2.enableSchedulerTracing = _G.__PROFILE__
module_2.enableSuspenseServerRenderer = _G.__EXPERIMENTAL__
module_2.enableSelectiveHydration = _G.__EXPERIMENTAL__
module_2.enableBlocksAPI = _G.__EXPERIMENTAL__
module_2.enableLazyElements = _G.__EXPERIMENTAL__
module_2.enableSchedulerDebugging = false
module_2.disableJavaScriptURLs = false
module_2.enableFundamentalAPI = false
module_2.enableScopeAPI = false
module_2.enableCreateEventHandleAPI = false
module_2.warnAboutUnmockedScheduler = false
module_2.enableSuspenseCallback = false
module_2.warnAboutDefaultPropsOnFunctionComponents = false
module_2.disableSchedulerTimeoutBasedOnReactExpirationTime = false
module_2.enableTrustedTypesIntegration = false
module_2.warnAboutSpreadingKeyToJSX = true
module_2.enableComponentStackLocations = true
module_2.enableNewReconciler = true
module_2.skipUnmountedBoundaries = true
module_2.disableInputAttributeSyncing = true
module_2.warnAboutStringRefs = false
module_2.disableLegacyContext = false
module_2.disableTextareaChildren = false
module_2.disableModulePatternComponents = false
module_2.warnUnstableRenderSubtreeIntoContainer = false
module_2.enableLegacyFBSupport = true
module_2.deferRenderPhaseUpdateToNextBatch = false
module_2.decoupleUpdatePriorityFromScheduler = true
module_2.enableDiscreteEventFlushingChange = false
module_2.enableEagerRootListeners = false
module_2.enableDoubleInvokingEffects = false
return module_2