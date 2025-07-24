-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:32
-- Luau version 6, Types version 3
-- Time taken: 0.002373 seconds

local var2_upvw
local var3_upvw
local module = {}
local module_2_upvr = {}
local tbl_upvr_2 = {}
local tbl_upvr = {}
local string_sub_result1 = string.sub(tostring(math.random()), 3)
function module.precacheFiberNode(arg1, arg2) -- Line 66
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	tbl_upvr_2[arg2] = arg1
end
function module.uncacheFiberNode(arg1) -- Line 73
	--[[ Upvalues[2]:
		[1]: tbl_upvr_2 (readonly)
		[2]: tbl_upvr (readonly)
	]]
	tbl_upvr_2[arg1] = nil
	tbl_upvr[arg1] = nil
end
function module.markContainerAsRoot(arg1, arg2) -- Line 80
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	module_2_upvr[arg2] = arg1
end
function module.unmarkContainerAsRoot(arg1) -- Line 86
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	module_2_upvr[arg1] = nil
end
function module.isContainerMarkedAsRoot(arg1) -- Line 92
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	return not not module_2_upvr[arg1]
end
local var15_upvw
function module.getClosestInstanceFromNode(arg1) -- Line 106
	--[[ Upvalues[2]:
		[1]: tbl_upvr_2 (readonly)
		[2]: var15_upvw (read and write)
	]]
	local var16 = tbl_upvr_2[arg1]
	if var16 then
		return var16
	end
	local Parent = arg1.Parent
	while Parent do
		local var18 = tbl_upvr_2[Parent]
		if var18 then
			local alternate = var18.alternate
			if var18.child ~= nil or alternate ~= nil and alternate.child ~= nil then
				if var15_upvw == nil then
					var15_upvw = require(script.Parent.ReactRobloxHostConfig).getParentSuspenseInstance
				end
				local var15_upvw_result1 = var15_upvw(arg1)
				while var15_upvw_result1 ~= nil do
					local var21 = tbl_upvr_2[var15_upvw_result1]
					if var21 then
						return var21
					end
				end
			end
			return var18
		end
	end
	return nil
end
local var23_upvw
local var24_upvw
local var25_upvw
local var26_upvr = "__reactFiber$"..string_sub_result1
local var27_upvr = "__reactContainer$"..string_sub_result1
function module.getInstanceFromNode(arg1) -- Line 190
	--[[ Upvalues[7]:
		[1]: var23_upvw (read and write)
		[2]: var2_upvw (read and write)
		[3]: var3_upvw (read and write)
		[4]: var24_upvw (read and write)
		[5]: var25_upvw (read and write)
		[6]: var26_upvr (readonly)
		[7]: var27_upvr (readonly)
	]]
	local var28
	if var28 == nil then
		var28 = require(script.Parent.Parent["ReactReconciler.roblox"])
		var23_upvw = var28.ReactWorkTags
		var2_upvw = var23_upvw.HostComponent
		var3_upvw = var23_upvw.HostComponent
		var24_upvw = var23_upvw.HostComponent
		var25_upvw = var23_upvw.HostComponent
	end
	var28 = arg1[var26_upvr]
	if not var28 then
		var28 = arg1[var27_upvr]
	end
	if var28 then
		if var28.tag == var2_upvw or var28.tag == var3_upvw or var28.tag == var25_upvw or var28.tag == var24_upvw then
			return var28
		end
		return nil
	end
	return nil
end
local invariant_upvr = require(script.Parent.Parent.Parent.Shared).invariant
function module.getNodeFromInstance(arg1) -- Line 224
	--[[ Upvalues[3]:
		[1]: var2_upvw (read and write)
		[2]: var3_upvw (read and write)
		[3]: invariant_upvr (readonly)
	]]
	if arg1.tag == var2_upvw or arg1.tag == var3_upvw then
		return arg1.stateNode
	end
	invariant_upvr(false, "getNodeFromInstance: Invalid argument.")
	error("getNodeFromInstance: Invalid argument.")
end
function module.getFiberCurrentPropsFromNode(arg1) -- Line 238
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	return tbl_upvr[arg1]
end
function module.updateFiberProps(arg1, arg2) -- Line 244
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	tbl_upvr[arg1] = arg2
end
return module