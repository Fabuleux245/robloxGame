-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:58:56
-- Luau version 6, Types version 3
-- Time taken: 0.001347 seconds

local __DEV___upvr = _G.__DEV__
local Parent = script.Parent.Parent
local ReactDebugCurrentFrame_upvr = require(Parent.Shared).ReactSharedInternals.ReactDebugCurrentFrame
local module_upvr = {
	current = nil;
	isRendering = false;
}
local getComponentName_upvr = require(Parent.Shared).getComponentName
function module_upvr.getCurrentFiberOwnerNameInDevOrNull() -- Line 37
	--[[ Upvalues[3]:
		[1]: __DEV___upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: getComponentName_upvr (readonly)
	]]
	if __DEV___upvr then
		if module_upvr.current == nil then
			return nil
		end
		local _debugOwner = module_upvr.current._debugOwner
		if _debugOwner then
			return getComponentName_upvr(_debugOwner.type)
		end
	end
	return nil
end
local getStackByFiberInDevAndProd_upvr = require(script.Parent.ReactFiberComponentStack).getStackByFiberInDevAndProd
local function getCurrentFiberStackInDev_upvr() -- Line 51, Named "getCurrentFiberStackInDev"
	--[[ Upvalues[3]:
		[1]: __DEV___upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: getStackByFiberInDevAndProd_upvr (readonly)
	]]
	if __DEV___upvr then
		if module_upvr.current == nil then
			return ""
		end
		return getStackByFiberInDevAndProd_upvr(module_upvr.current)
	end
	return ""
end
function module_upvr.resetCurrentFiber() -- Line 64
	--[[ Upvalues[3]:
		[1]: __DEV___upvr (readonly)
		[2]: ReactDebugCurrentFrame_upvr (readonly)
		[3]: module_upvr (readonly)
	]]
	if __DEV___upvr then
		ReactDebugCurrentFrame_upvr.getCurrentStack = nil
		module_upvr.current = nil
		module_upvr.isRendering = false
	end
end
function module_upvr.setCurrentFiber(arg1) -- Line 73
	--[[ Upvalues[4]:
		[1]: __DEV___upvr (readonly)
		[2]: ReactDebugCurrentFrame_upvr (readonly)
		[3]: getCurrentFiberStackInDev_upvr (readonly)
		[4]: module_upvr (readonly)
	]]
	if __DEV___upvr then
		ReactDebugCurrentFrame_upvr.getCurrentStack = getCurrentFiberStackInDev_upvr
		module_upvr.current = arg1
		module_upvr.isRendering = false
	end
end
function module_upvr.setIsRendering(arg1) -- Line 82
	--[[ Upvalues[2]:
		[1]: __DEV___upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	if __DEV___upvr then
		module_upvr.isRendering = arg1
	end
end
function module_upvr.getIsRendering() -- Line 88
	--[[ Upvalues[2]:
		[1]: __DEV___upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	if __DEV___upvr then
		return module_upvr.isRendering
	end
	return false
end
return module_upvr