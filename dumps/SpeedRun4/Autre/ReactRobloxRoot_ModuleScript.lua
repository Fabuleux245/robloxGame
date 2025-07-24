-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:34
-- Luau version 6, Types version 3
-- Time taken: 0.003080 seconds

local Parent = script.Parent.Parent.Parent
local ReactRobloxComponentTree = require(script.Parent.ReactRobloxComponentTree)
local roblox = require(script.Parent.Parent["ReactReconciler.roblox"])
local updateContainer_upvr = roblox.updateContainer
local invariant_upvr = require(Parent.Shared).invariant
local var18_upvw
local tbl_upvr = {}
tbl_upvr.__index = tbl_upvr
local ConcurrentRoot_upvr = roblox.ReactRootTags.ConcurrentRoot
function tbl_upvr.new(arg1, arg2) -- Line 65
	--[[ Upvalues[3]:
		[1]: tbl_upvr (readonly)
		[2]: var18_upvw (read and write)
		[3]: ConcurrentRoot_upvr (readonly)
	]]
	local setmetatable_result1_3 = setmetatable({}, tbl_upvr)
	setmetatable_result1_3._internalRoot = var18_upvw(arg1, ConcurrentRoot_upvr, arg2)
	return setmetatable_result1_3
end
local function _(arg1, arg2, arg3) -- Line 72, Named "createBlockingRoot"
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: var18_upvw (read and write)
	]]
	local setmetatable_result1 = setmetatable({}, tbl_upvr)
	setmetatable_result1._internalRoot = var18_upvw(arg1, arg2, arg3)
	return setmetatable_result1
end
function tbl_upvr.render(arg1, arg2) -- Line 84
	--[[ Upvalues[1]:
		[1]: updateContainer_upvr (readonly)
	]]
	updateContainer_upvr(arg2, arg1._internalRoot, nil)
end
local flushSync_upvr = roblox.flushSync
local unmarkContainerAsRoot_upvr = ReactRobloxComponentTree.unmarkContainerAsRoot
local flushPassiveEffects_upvr = roblox.flushPassiveEffects
function tbl_upvr.unmount(arg1) -- Line 112
	--[[ Upvalues[4]:
		[1]: flushSync_upvr (readonly)
		[2]: updateContainer_upvr (readonly)
		[3]: unmarkContainerAsRoot_upvr (readonly)
		[4]: flushPassiveEffects_upvr (readonly)
	]]
	local _internalRoot_upvr = arg1._internalRoot
	local containerInfo_upvr = _internalRoot_upvr.containerInfo
	flushSync_upvr(function() -- Line 125
		--[[ Upvalues[4]:
			[1]: updateContainer_upvr (copied, readonly)
			[2]: _internalRoot_upvr (readonly)
			[3]: unmarkContainerAsRoot_upvr (copied, readonly)
			[4]: containerInfo_upvr (readonly)
		]]
		updateContainer_upvr(nil, _internalRoot_upvr, nil, function() -- Line 126
			--[[ Upvalues[2]:
				[1]: unmarkContainerAsRoot_upvr (copied, readonly)
				[2]: containerInfo_upvr (copied, readonly)
			]]
			unmarkContainerAsRoot_upvr(containerInfo_upvr)
		end)
	end)
	flushPassiveEffects_upvr()
end
function var18_upvw(arg1, arg2, arg3) -- Line 140
	--[[ Upvalues[3]:
		[1]: createContainer_upvr (readonly)
		[2]: markContainerAsRoot_upvr (readonly)
		[3]: enableEagerRootListeners_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var23 = false
	if arg3 ~= nil then
		if arg3.hydrate ~= true then
			var23 = false
		else
			var23 = true
		end
	end
	if arg3 ~= nil then
	else
	end
	if arg3 == nil or arg3.hydrationOptions == nil or not arg3.hydrationOptions.mutableSources then
	end
	local var20_result1 = createContainer_upvr(arg1, arg2, var23, nil)
	markContainerAsRoot_upvr(var20_result1.current, arg1)
	if not enableEagerRootListeners_upvr then
	end
	if not nil then
	end
	return var20_result1
end
local createContainer_upvr = roblox.createContainer
local markContainerAsRoot_upvr = ReactRobloxComponentTree.markContainerAsRoot
local enableEagerRootListeners_upvr = require(Parent.Shared).ReactFeatureFlags.enableEagerRootListeners
local var19_upvw = var18_upvw
local module = {
	isValidContainer = function(arg1) -- Line 188, Named "isValidContainer"
		local var26
		if typeof(arg1) ~= "Instance" then
			var26 = false
		else
			var26 = true
		end
		return var26
	end;
	createRoot = function(arg1, arg2) -- Line 205
		--[[ Upvalues[2]:
			[1]: invariant_upvr (readonly)
			[2]: tbl_upvr (readonly)
		]]
		local var28
		if typeof(arg1) ~= "Instance" then
			var28 = false
		else
			var28 = true
		end
		invariant_upvr(var28, "createRoot(...): Target container is not a Roblox Instance.")
		var28 = arg1
		warnIfReactDOMContainerInDEV(var28)
		var28 = tbl_upvr
		var28 = arg1
		return var28.new(var28, arg2)
	end;
}
local BlockingRoot_upvr = roblox.ReactRootTags.BlockingRoot
function module.createBlockingRoot(arg1, arg2) -- Line 215
	--[[ Upvalues[4]:
		[1]: invariant_upvr (readonly)
		[2]: BlockingRoot_upvr (readonly)
		[3]: tbl_upvr (readonly)
		[4]: var19_upvw (read and write)
	]]
	local var31
	if typeof(arg1) ~= "Instance" then
		var31 = false
	else
		var31 = true
	end
	invariant_upvr(var31, "createRoot(...): Target container is not a Roblox Instance.")
	var31 = arg1
	warnIfReactDOMContainerInDEV(var31)
	var31 = BlockingRoot_upvr
	local setmetatable_result1_4 = setmetatable({}, tbl_upvr)
	setmetatable_result1_4._internalRoot = var19_upvw(arg1, var31, arg2)
	return setmetatable_result1_4
end
local LegacyRoot_upvr = roblox.ReactRootTags.LegacyRoot
function module.createLegacyRoot(arg1, arg2) -- Line 228
	--[[ Upvalues[3]:
		[1]: LegacyRoot_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: var19_upvw (read and write)
	]]
	local setmetatable_result1_2 = setmetatable({}, tbl_upvr)
	setmetatable_result1_2._internalRoot = var19_upvw(arg1, LegacyRoot_upvr, arg2)
	return setmetatable_result1_2
end
function warnIfReactDOMContainerInDEV(arg1) -- Line 232
	if not _G.__DEV__ then
	end
end
return module