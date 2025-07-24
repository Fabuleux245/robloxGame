-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:35
-- Luau version 6, Types version 3
-- Time taken: 0.009085 seconds

local CollectionService_upvr = game:GetService("CollectionService")
local Parent = script.Parent.Parent.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local console_upvr = require(Parent.Shared).console
local getDefaultInstanceProperty_upvr = require(script.Parent.getDefaultInstanceProperty)
local tbl_upvr = {}
local tbl_upvr_2 = {}
local function identity_upvr(...) -- Line 70, Named "identity"
	return ...
end
local function setRobloxInstanceProperty_upvr(arg1, arg2, arg3) -- Line 74, Named "setRobloxInstanceProperty"
	--[[ Upvalues[1]:
		[1]: getDefaultInstanceProperty_upvr (readonly)
	]]
	if arg3 == nil then
		local pcall_result1_3, _ = pcall(arg1.ResetPropertyToDefault, arg1, arg2)
		if pcall_result1_3 then return end
		local _, getDefaultInstanceProperty_upvr_result2 = getDefaultInstanceProperty_upvr(arg1.ClassName, arg2)
	end
	arg1[arg2] = getDefaultInstanceProperty_upvr_result2
end
local function _(arg1, arg2) -- Line 90, Named "removeBinding"
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	local var12 = tbl_upvr_2[arg1]
	if var12 ~= nil then
		var12[arg2]()
		var12[arg2] = nil
	end
end
local React_upvr = require(Parent.React)
local function attachBinding_upvr(arg1, arg2, arg3) -- Line 99, Named "attachBinding"
	--[[ Upvalues[5]:
		[1]: setRobloxInstanceProperty_upvr (readonly)
		[2]: identity_upvr (readonly)
		[3]: console_upvr (readonly)
		[4]: tbl_upvr_2 (readonly)
		[5]: React_upvr (readonly)
	]]
	local function updateBoundProperty(arg1_2) -- Line 100
		--[[ Upvalues[6]:
			[1]: setRobloxInstanceProperty_upvr (copied, readonly)
			[2]: identity_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: arg2 (readonly)
			[5]: arg3 (readonly)
			[6]: console_upvr (copied, readonly)
		]]
		local xpcall_result1_2, xpcall_result2_4 = xpcall(setRobloxInstanceProperty_upvr, identity_upvr, arg1, arg2, arg1_2)
		if not xpcall_result1_2 then
			local formatted_3 = string.format("Error updating binding or ref assigned to key %s of '%s' (%s).\n\nUpdated value:\n  %s\n\nError:\n  %s\n\n%s\n", arg2, arg1.Name, arg1.ClassName, tostring(arg1_2), xpcall_result2_4, arg3._source or "<enable DEV mode for stack>")
			console_upvr.error(formatted_3)
			error(formatted_3, 0)
		end
	end
	if tbl_upvr_2[arg1] == nil then
		tbl_upvr_2[arg1] = {}
	end
	tbl_upvr_2[arg1][arg2] = React_upvr.__subscribeToBinding(arg3, updateBoundProperty)
	updateBoundProperty(arg3:getValue())
end
local __DEV___upvr = _G.__DEV__
local inspect_upvr = LuauPolyfill.util.inspect
local function applyTags_upvr(arg1, arg2, arg3) -- Line 132, Named "applyTags"
	--[[ Upvalues[4]:
		[1]: __DEV___upvr (readonly)
		[2]: console_upvr (readonly)
		[3]: inspect_upvr (readonly)
		[4]: CollectionService_upvr (readonly)
	]]
	if __DEV___upvr and arg3 ~= nil and typeof(arg3) ~= "string" then
		console_upvr.error("Type provided for ReactRoblox.Tag is invalid - tags should be ".."specified as a single string, with individual tags delimited ".."by spaces. Instead received:\n%s", inspect_upvr(arg3))
	else
		for i_6 in string.gmatch(arg2 or "", "%S+") do
			({})[i_6] = true
			local var35
		end
		for i_7 in string.gmatch(arg3 or "", "%S+") do
			({})[i_7] = true
			local var40
		end
		for i_8, _ in var35 do
			if not var40[i_8] then
				CollectionService_upvr:RemoveTag(arg1, i_8)
			end
		end
		for i_9, _ in var40 do
			if not var35[i_9] then
				CollectionService_upvr:AddTag(arg1, i_9)
			end
		end
	end
end
local function _(arg1) -- Line 166, Named "removeAllTags"
	--[[ Upvalues[1]:
		[1]: CollectionService_upvr (readonly)
	]]
	for _, v in CollectionService_upvr:GetTags(arg1) do
		CollectionService_upvr:RemoveTag(arg1, v)
	end
end
local Type_upvr = require(Parent.Shared).Type
local SingleEventManager_upvr = require(script.Parent.SingleEventManager)
local ReactSymbols_upvr = require(Parent.Shared).ReactSymbols
local Tag_upvr = require(Parent.React).Tag
local function applyProp_upvr(arg1, arg2, arg3, arg4) -- Line 172, Named "applyProp"
	--[[ Upvalues[9]:
		[1]: Type_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: SingleEventManager_upvr (readonly)
		[4]: ReactSymbols_upvr (readonly)
		[5]: tbl_upvr_2 (readonly)
		[6]: attachBinding_upvr (readonly)
		[7]: Tag_upvr (readonly)
		[8]: applyTags_upvr (readonly)
		[9]: getDefaultInstanceProperty_upvr (readonly)
	]]
	local any_of_result1 = Type_upvr.of(arg2)
	local var61
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var61 = Type_upvr.HostChangeEvent
		return any_of_result1 == var61
	end
	if any_of_result1 == var61 or INLINED() then
		var61 = tbl_upvr[arg1]
		local var62 = var61
		if var62 == nil then
			var62 = SingleEventManager_upvr.new(arg1)
			tbl_upvr[arg1] = var62
		end
		local name = arg2.name
		if any_of_result1 == Type_upvr.HostChangeEvent then
			var62:connectPropertyChange(name, arg3)
		else
			var62:connectEvent(name, arg3)
		end
	end
	var62 = false
	local var64 = var62
	if typeof(arg3) == "table" then
		if arg3["$$typeof"] ~= ReactSymbols_upvr.REACT_BINDING_TYPE then
			var64 = false
		else
			var64 = true
		end
	end
	local var65 = false
	if arg4 ~= nil then
		var65 = false
		if typeof(arg4) == "table" then
			if arg4["$$typeof"] ~= ReactSymbols_upvr.REACT_BINDING_TYPE then
				var65 = false
			else
				var65 = true
			end
		end
	end
	if var65 then
		local var66 = tbl_upvr_2[arg1]
		if var66 ~= nil then
			var66[arg2]()
			var66[arg2] = nil
		end
	end
	if var64 then
		attachBinding_upvr(arg1, arg2, arg3)
	else
		if arg2 == Tag_upvr then
			applyTags_upvr(arg1, arg4, arg3)
			return
		end
		local var67 = arg3
		if var67 == nil then
			local pcall_result1_2, _ = pcall(arg1.ResetPropertyToDefault, arg1, arg2)
			if pcall_result1_2 then return end
			local _, getDefaultInstanceProperty_upvr_result2_2 = getDefaultInstanceProperty_upvr(arg1.ClassName, arg2)
			var67 = getDefaultInstanceProperty_upvr_result2_2
		end
		arg1[arg2] = var67
	end
end
local function applyProps_upvr(arg1, arg2) -- Line 217, Named "applyProps"
	--[[ Upvalues[1]:
		[1]: applyProp_upvr (readonly)
	]]
	for i_2, v_2 in arg2 do
		if i_2 ~= "ref" and i_2 ~= "children" then
			applyProp_upvr(arg1, i_2, v_2)
		end
	end
end
local Object_upvr = LuauPolyfill.Object
local function safelyApplyProperties_upvr(arg1, arg2, arg3) -- Line 257, Named "safelyApplyProperties"
	--[[ Upvalues[2]:
		[1]: Object_upvr (readonly)
		[2]: applyProp_upvr (readonly)
	]]
	for i_3 = 1, #arg2, 2 do
		local var80 = arg2[i_3]
		local var81
		if var81 == Object_upvr.None then
			var81 = nil
		end
		if var80 ~= "ref" and var80 ~= "children" then
			applyProp_upvr(arg1, var80, var81, arg3[var80])
		end
	end
end
local _, xpcall_result2_2_upvr = xpcall(function() -- Line 310
	return game:DefineFastFlag("ReactFixBindingMemoryLeak", false)
end, function() -- Line 312
	return true
end)
local function _(arg1) -- Line 316, Named "cleanupBindings"
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	local var91 = tbl_upvr_2[arg1]
	if var91 ~= nil then
		for _, v_3 in var91 do
			v_3()
		end
		tbl_upvr_2[arg1] = nil
	end
end
return {
	setInitialProperties = function(arg1, arg2, arg3, arg4) -- Line 228, Named "setInitialProperties"
		--[[ Upvalues[4]:
			[1]: applyProps_upvr (readonly)
			[2]: identity_upvr (readonly)
			[3]: console_upvr (readonly)
			[4]: tbl_upvr (readonly)
		]]
		local xpcall_result1, xpcall_result2 = xpcall(applyProps_upvr, identity_upvr, arg1, arg3)
		if not xpcall_result1 then
			local formatted = string.format("Error applying initial props to Roblox Instance '%s' (%s):\n  %s\n", arg1.Name, arg1.ClassName, xpcall_result2)
			console_upvr.error(formatted)
			error(formatted, 0)
		end
		if tbl_upvr[arg1] ~= nil then
			tbl_upvr[arg1]:resume()
		end
	end;
	updateProperties = function(arg1, arg2, arg3) -- Line 276, Named "updateProperties"
		--[[ Upvalues[4]:
			[1]: tbl_upvr (readonly)
			[2]: safelyApplyProperties_upvr (readonly)
			[3]: identity_upvr (readonly)
			[4]: console_upvr (readonly)
		]]
		if tbl_upvr[arg1] ~= nil then
			tbl_upvr[arg1]:suspend()
		end
		local xpcall_result1_3, xpcall_result2_3 = xpcall(safelyApplyProperties_upvr, identity_upvr, arg1, arg2, arg3)
		if not xpcall_result1_3 then
			local formatted_2 = string.format("Error updating props on Roblox Instance '%s' (%s):\n  %s\n", arg1.Name, arg1.ClassName, xpcall_result2_3)
			console_upvr.error(formatted_2)
			error(formatted_2, 0)
		end
		if tbl_upvr[arg1] ~= nil then
			tbl_upvr[arg1]:resume()
		end
	end;
	cleanupHostComponent = function(arg1) -- Line 329, Named "cleanupHostComponent"
		--[[ Upvalues[4]:
			[1]: tbl_upvr (readonly)
			[2]: xpcall_result2_2_upvr (readonly)
			[3]: tbl_upvr_2 (readonly)
			[4]: CollectionService_upvr (readonly)
		]]
		if tbl_upvr[arg1] ~= nil then
			tbl_upvr[arg1] = nil
		end
		if xpcall_result2_2_upvr then
			local var102 = tbl_upvr_2[arg1]
			if var102 ~= nil then
				for _, v_4 in var102 do
					v_4()
				end
				tbl_upvr_2[arg1] = nil
				-- KONSTANTWARNING: GOTO [32] #29
			end
		elseif tbl_upvr_2[arg1] ~= nil then
			tbl_upvr_2[arg1] = nil
		end
		if typeof(arg1) ~= "Instance" then
		else
			for _, _ in CollectionService_upvr:GetTags(arg1) do
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [48.5]
				CollectionService_upvr:RemoveTag(arg1, nil)
			end
			for _, v_8 in arg1:GetDescendants() do
				if tbl_upvr[v_8] ~= nil then
					tbl_upvr[v_8] = nil
				end
				if xpcall_result2_2_upvr then
					local var109 = tbl_upvr_2[v_8]
					if var109 ~= nil then
						for _, v_9 in var109 do
							v_9()
						end
						tbl_upvr_2[v_8] = nil
						-- KONSTANTWARNING: GOTO [90] #77
					end
				elseif tbl_upvr_2[v_8] ~= nil then
					tbl_upvr_2[v_8] = nil
				end
				for _, _ in CollectionService_upvr:GetTags(arg1) do
					-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [98.10]
					CollectionService_upvr:RemoveTag(arg1, nil)
				end
			end
		end
	end;
	_instanceToEventManager = tbl_upvr;
	_instanceToBindings = tbl_upvr_2;
}