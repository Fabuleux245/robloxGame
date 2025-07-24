-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:58:55
-- Luau version 6, Types version 3
-- Time taken: 0.029493 seconds

local __DEV___upvr = _G.__DEV__
local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local console_upvr = require(Parent.Shared).console
local getComponentName_upvr = require(Parent.Shared).getComponentName
local ReactFiberFlags = require(script.Parent.ReactFiberFlags)
local ReactSymbols = require(Parent.Shared).ReactSymbols
local ReactWorkTags = require(script.Parent.ReactWorkTags)
local ReactFeatureFlags = require(Parent.Shared).ReactFeatureFlags
local new = require(script.Parent["ReactFiber.new"])
local createWorkInProgress_upvr = new.createWorkInProgress
local module_2 = {}
local var13_upvw
local var14_upvw
local function var16_upvw(arg1, arg2) -- Line 91
end
if __DEV___upvr then
	var13_upvw = false
	var14_upvw = {}
	local invariant_upvr = require(Parent.Shared).invariant
	local tbl_upvw = {}
	function var16_upvw(arg1, arg2) -- Line 113
		--[[ Upvalues[4]:
			[1]: invariant_upvr (readonly)
			[2]: getComponentName_upvr (readonly)
			[3]: tbl_upvw (read and write)
			[4]: console_upvr (readonly)
		]]
		if arg1 == nil or type(arg1) ~= "table" then
		else
			if not arg1._store or arg1._store.validated or arg1.key ~= nil then return end
			if arg1._store ~= nil then
				if type(arg1._store) ~= "table" then
				else
				end
			end
			invariant_upvr(true, "React Component in warnForMissingKey should have a _store. ".."This error is likely caused by a bug in React. Please file an issue.")
			arg1._store.validated = true
			local var19 = getComponentName_upvr(arg2.type) or "Component"
			if tbl_upvw[var19] then return end
			tbl_upvw[var19] = true
			console_upvr.error("Each child in a list should have a unique ".."\"key\" prop. See https://reactjs.org/link/warning-keys for ".."more information.")
		end
	end
end
local Error_upvr = LuauPolyfill.Error
function coerceRef(arg1, arg2, arg3) -- Line 144
	--[[ Upvalues[3]:
		[1]: __DEV___upvr (readonly)
		[2]: getComponentName_upvr (readonly)
		[3]: Error_upvr (readonly)
	]]
	local ref = arg3.ref
	if ref ~= nil and type(ref) == "string" then
		if not arg3._owner or not arg3._self or arg3._owner.stateNode == arg3._self then
			local var22
			if __DEV___upvr then
				var22 = getComponentName_upvr(arg1.type) or "Component"
			else
				var22 = "<enable __DEV__ mode for component names>"
			end
			error(Error_upvr.new(string.format("Component \"%s\" contains the string ref \"%s\". Support for string refs ".."has been removed. We recommend using ".."useRef() or createRef() instead. ".."Learn more about using refs safely here: ".."https://reactjs.org/link/strict-mode-string-ref", var22, tostring(ref))))
		end
		if not arg3._owner then
			error("Expected ref to be a function or an object returned by React.createRef(), or nil.")
		end
	end
	return ref
end
local function _(arg1) -- Line 317, Named "warnOnFunctionType"
	--[[ Upvalues[4]:
		[1]: __DEV___upvr (readonly)
		[2]: getComponentName_upvr (readonly)
		[3]: var14_upvw (read and write)
		[4]: console_upvr (readonly)
	]]
	if __DEV___upvr then
		local var23 = getComponentName_upvr(arg1.type) or "Component"
		if var14_upvw[var23] then return end
		var14_upvw[var23] = true
		console_upvr.error("Functions are not valid as a React child. This may happen if ".."you return a Component instead of <Component /> from render. ".."Or maybe you meant to call this function rather than return it.")
	end
end
local describeError_upvr = require(Parent.Shared).describeError
function resolveLazyType(arg1) -- Line 336
	--[[ Upvalues[1]:
		[1]: describeError_upvr (readonly)
	]]
	local xpcall_result1, xpcall_result2 = xpcall(arg1._init, describeError_upvr, arg1._payload)
	if not xpcall_result1 then
		return arg1
	end
	return xpcall_result2
end
local Deletion_upvr = ReactFiberFlags.Deletion
local Placement_upvr = ReactFiberFlags.Placement
local HostText_upvr = ReactWorkTags.HostText
local createFiberFromText_upvr = new.createFiberFromText
local enableBlocksAPI_upvr = ReactFeatureFlags.enableBlocksAPI
local Block_upvr = ReactWorkTags.Block
local REACT_LAZY_TYPE_upvr = ReactSymbols.REACT_LAZY_TYPE
local REACT_BLOCK_TYPE_upvr = ReactSymbols.REACT_BLOCK_TYPE
local createFiberFromElement_upvr = new.createFiberFromElement
local HostPortal_upvr = ReactWorkTags.HostPortal
local createFiberFromPortal_upvr = new.createFiberFromPortal
local Fragment_upvr = ReactWorkTags.Fragment
local createFiberFromFragment_upvr = new.createFiberFromFragment
local REACT_ELEMENT_TYPE_upvr = ReactSymbols.REACT_ELEMENT_TYPE
local REACT_PORTAL_TYPE_upvr = ReactSymbols.REACT_PORTAL_TYPE
local enableLazyElements_upvr = ReactFeatureFlags.enableLazyElements
local REACT_FRAGMENT_TYPE_upvr = ReactSymbols.REACT_FRAGMENT_TYPE
local isArray_upvr = LuauPolyfill.Array.isArray
local getIteratorFn_upvr = ReactSymbols.getIteratorFn
local function ChildReconciler(arg1) -- Line 354
	--[[ Upvalues[26]:
		[1]: Deletion_upvr (readonly)
		[2]: createWorkInProgress_upvr (readonly)
		[3]: Placement_upvr (readonly)
		[4]: HostText_upvr (readonly)
		[5]: createFiberFromText_upvr (readonly)
		[6]: __DEV___upvr (readonly)
		[7]: enableBlocksAPI_upvr (readonly)
		[8]: Block_upvr (readonly)
		[9]: REACT_LAZY_TYPE_upvr (readonly)
		[10]: REACT_BLOCK_TYPE_upvr (readonly)
		[11]: createFiberFromElement_upvr (readonly)
		[12]: HostPortal_upvr (readonly)
		[13]: createFiberFromPortal_upvr (readonly)
		[14]: Fragment_upvr (readonly)
		[15]: createFiberFromFragment_upvr (readonly)
		[16]: REACT_ELEMENT_TYPE_upvr (readonly)
		[17]: REACT_PORTAL_TYPE_upvr (readonly)
		[18]: enableLazyElements_upvr (readonly)
		[19]: getComponentName_upvr (readonly)
		[20]: var14_upvw (read and write)
		[21]: console_upvr (readonly)
		[22]: REACT_FRAGMENT_TYPE_upvr (readonly)
		[23]: var16_upvw (read and write)
		[24]: var13_upvw (read and write)
		[25]: isArray_upvr (readonly)
		[26]: getIteratorFn_upvr (readonly)
	]]
	local function _(arg1_2, arg2) -- Line 355, Named "deleteChild"
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Deletion_upvr (copied, readonly)
		]]
		if not arg1 then
		else
			local deletions_5 = arg1_2.deletions
			if deletions_5 == nil then
				local tbl_2 = {}
				tbl_2[1] = arg2
				arg1_2.deletions = tbl_2
				arg1_2.flags = bit32.bor(arg1_2.flags, Deletion_upvr)
				return
			end
			table.insert(deletions_5, arg2)
		end
	end
	local function _(arg1_3, arg2) -- Line 369, Named "deleteRemainingChildren"
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Deletion_upvr (copied, readonly)
		]]
		if not arg1 then
			return nil
		end
		local var48 = arg2
		while var48 ~= nil do
			if not arg1 then
			else
				local deletions = arg1_3.deletions
				if deletions == nil then
					arg1_3.deletions = {var48}
					arg1_3.flags = bit32.bor(arg1_3.flags, Deletion_upvr)
				else
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					table.insert(deletions, var48)
				end
			end
		end
		return nil
	end
	local function mapRemainingChildren_upvr(arg1_4, arg2) -- Line 388, Named "mapRemainingChildren"
		local var51 = arg2
		while var51 ~= nil do
			if var51.key ~= nil then
				({})[var51.key] = var51
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				;({})[var51.index] = var51
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return {}
	end
	local function _(arg1_5, arg2) -- Line 410, Named "useFiber"
		--[[ Upvalues[1]:
			[1]: createWorkInProgress_upvr (copied, readonly)
		]]
		local createWorkInProgress_upvr_result1_3 = createWorkInProgress_upvr(arg1_5, arg2)
		createWorkInProgress_upvr_result1_3.index = 1
		createWorkInProgress_upvr_result1_3.sibling = nil
		return createWorkInProgress_upvr_result1_3
	end
	local function _(arg1_6, arg2, arg3) -- Line 420, Named "placeChild"
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Placement_upvr (copied, readonly)
		]]
		arg1_6.index = arg3
		if not arg1 then
			return arg2
		end
		local alternate = arg1_6.alternate
		if alternate ~= nil then
			local index = alternate.index
			if index < arg2 then
				arg1_6.flags = bit32.bor(arg1_6.flags, Placement_upvr)
				return arg2
			end
			return index
		end
		arg1_6.flags = bit32.bor(arg1_6.flags, Placement_upvr)
		return arg2
	end
	local function _(arg1_7) -- Line 448, Named "placeSingleChild"
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Placement_upvr (copied, readonly)
		]]
		if arg1 and arg1_7.alternate == nil then
			arg1_7.flags = bit32.bor(arg1_7.flags, Placement_upvr)
		end
		return arg1_7
	end
	local function _(arg1_8, arg2, arg3, arg4) -- Line 457, Named "updateTextNode"
		--[[ Upvalues[3]:
			[1]: HostText_upvr (copied, readonly)
			[2]: createFiberFromText_upvr (copied, readonly)
			[3]: createWorkInProgress_upvr (copied, readonly)
		]]
		if arg2 == nil or arg2.tag ~= HostText_upvr then
			local createFiberFromText_upvr_result1 = createFiberFromText_upvr(arg3, arg1_8.mode, arg4)
			createFiberFromText_upvr_result1.return_ = arg1_8
			return createFiberFromText_upvr_result1
		end
		local var11_result1_3 = createWorkInProgress_upvr(arg2, arg3)
		var11_result1_3.index = 1
		var11_result1_3.sibling = nil
		local var57 = var11_result1_3
		var57.return_ = arg1_8
		return var57
	end
	local function updateElement_upvr(arg1_9, arg2, arg3, arg4) -- Line 477, Named "updateElement"
		--[[ Upvalues[7]:
			[1]: createWorkInProgress_upvr (copied, readonly)
			[2]: __DEV___upvr (copied, readonly)
			[3]: enableBlocksAPI_upvr (copied, readonly)
			[4]: Block_upvr (copied, readonly)
			[5]: REACT_LAZY_TYPE_upvr (copied, readonly)
			[6]: REACT_BLOCK_TYPE_upvr (copied, readonly)
			[7]: createFiberFromElement_upvr (copied, readonly)
		]]
		if arg2 ~= nil then
			if arg2.elementType == arg3.type then
				local var11_result1_7 = createWorkInProgress_upvr(arg2, arg3.props)
				var11_result1_7.index = 1
				var11_result1_7.sibling = nil
				local var59 = var11_result1_7
				var59.ref = coerceRef(arg1_9, arg2, arg3)
				var59.return_ = arg1_9
				if __DEV___upvr then
					var59._debugSource = arg3._source
					var59._debugOwner = arg3._owner
				end
				return var59
			end
			if enableBlocksAPI_upvr and arg2.tag == Block_upvr then
				local var60
				if type(arg3.type) == "table" and var60["$$typeof"] == REACT_LAZY_TYPE_upvr then
					var60 = resolveLazyType(var60)
				end
				if var60["$$typeof"] == REACT_BLOCK_TYPE_upvr and var60._render == arg2.type._render then
					local var11_result1_2 = createWorkInProgress_upvr(arg2, arg3.props)
					var11_result1_2.index = 1
					var11_result1_2.sibling = nil
					local var62 = var11_result1_2
					var62.return_ = arg1_9
					var62.type = var60
					if __DEV___upvr then
						var62._debugSource = arg3._source
						var62._debugOwner = arg3._owner
					end
					return var62
				end
			end
		end
		local var35_result1 = createFiberFromElement_upvr(arg3, arg1_9.mode, arg4)
		var35_result1.ref = coerceRef(arg1_9, arg2, arg3)
		var35_result1.return_ = arg1_9
		return var35_result1
	end
	local function updatePortal_upvr(arg1_10, arg2, arg3, arg4) -- Line 530, Named "updatePortal"
		--[[ Upvalues[3]:
			[1]: HostPortal_upvr (copied, readonly)
			[2]: createFiberFromPortal_upvr (copied, readonly)
			[3]: createWorkInProgress_upvr (copied, readonly)
		]]
		if arg2 == nil or arg2.tag ~= HostPortal_upvr or arg2.stateNode.containerInfo ~= arg3.containerInfo or arg2.stateNode.implementation ~= arg3.implementation then
			local var37_result1 = createFiberFromPortal_upvr(arg3, arg1_10.mode, arg4)
			var37_result1.return_ = arg1_10
			return var37_result1
		end
		local children = arg3.children
		if not children then
			children = {}
		end
		local createWorkInProgress_upvr_result1_2 = createWorkInProgress_upvr(arg2, children)
		createWorkInProgress_upvr_result1_2.index = 1
		createWorkInProgress_upvr_result1_2.sibling = nil
		local var67 = createWorkInProgress_upvr_result1_2
		var67.return_ = arg1_10
		return var67
	end
	local function _(arg1_11, arg2, arg3, arg4, arg5) -- Line 555, Named "updateFragment"
		--[[ Upvalues[3]:
			[1]: Fragment_upvr (copied, readonly)
			[2]: createFiberFromFragment_upvr (copied, readonly)
			[3]: createWorkInProgress_upvr (copied, readonly)
		]]
		if arg2 == nil or arg2.tag ~= Fragment_upvr then
			local var39_result1_6 = createFiberFromFragment_upvr(arg3, arg1_11.mode, arg4, arg5)
			var39_result1_6.return_ = arg1_11
			return var39_result1_6
		end
		local var11_result1_4 = createWorkInProgress_upvr(arg2, arg3)
		var11_result1_4.index = 1
		var11_result1_4.sibling = nil
		local var70 = var11_result1_4
		var70.return_ = arg1_11
		return var70
	end
	local function _(arg1_12, arg2) -- Line 582, Named "assignStableKey"
		if arg2.key == nil then
			local type_result1_10 = type(arg1_12)
			if type_result1_10 == "string" or type_result1_10 == "number" then
				arg2.key = arg1_12
				return
			end
			if type_result1_10 == "table" then
				arg2.key = tostring(arg1_12)
			end
		end
	end
	local function createChild_upvr(arg1_13, arg2, arg3, arg4) -- Line 601, Named "createChild"
		--[[ Upvalues[13]:
			[1]: REACT_ELEMENT_TYPE_upvr (copied, readonly)
			[2]: createFiberFromElement_upvr (copied, readonly)
			[3]: REACT_PORTAL_TYPE_upvr (copied, readonly)
			[4]: createFiberFromPortal_upvr (copied, readonly)
			[5]: REACT_LAZY_TYPE_upvr (copied, readonly)
			[6]: enableLazyElements_upvr (copied, readonly)
			[7]: createChild_upvr (readonly)
			[8]: createFiberFromFragment_upvr (copied, readonly)
			[9]: createFiberFromText_upvr (copied, readonly)
			[10]: __DEV___upvr (copied, readonly)
			[11]: getComponentName_upvr (copied, readonly)
			[12]: var14_upvw (copied, read and write)
			[13]: console_upvr (copied, readonly)
		]]
		if arg2 == nil then
			return nil
		end
		local type_result1_8 = type(arg2)
		if type_result1_8 == "table" then
			if arg2.key == nil then
				local type_result1_2 = type(arg4)
				if type_result1_2 == "string" or type_result1_2 == "number" then
					arg2.key = arg4
				elseif type_result1_2 == "table" then
					arg2.key = tostring(arg4)
				end
			end
			local __typeof_5 = arg2["$$typeof"]
			if __typeof_5 == REACT_ELEMENT_TYPE_upvr then
				local createFiberFromElement_upvr_result1 = createFiberFromElement_upvr(arg2, arg1_13.mode, arg3)
				createFiberFromElement_upvr_result1.ref = coerceRef(arg1_13, nil, arg2)
				createFiberFromElement_upvr_result1.return_ = arg1_13
				return createFiberFromElement_upvr_result1
			end
			if __typeof_5 == REACT_PORTAL_TYPE_upvr then
				local var37_result1_2 = createFiberFromPortal_upvr(arg2, arg1_13.mode, arg3)
				var37_result1_2.return_ = arg1_13
				return var37_result1_2
			end
			if __typeof_5 == REACT_LAZY_TYPE_upvr and enableLazyElements_upvr then
				return createChild_upvr(arg1_13, arg2._init(arg2._payload), arg3)
			end
			local var39_result1 = createFiberFromFragment_upvr(arg2, arg1_13.mode, arg3, nil)
			var39_result1.return_ = arg1_13
			return var39_result1
		end
		if type_result1_8 == "string" or type_result1_8 == "number" then
			local var30_result1_3 = createFiberFromText_upvr(tostring(arg2), arg1_13.mode, arg3)
			var30_result1_3.return_ = arg1_13
			return var30_result1_3
		end
		if __DEV___upvr and type_result1_8 == "function" and __DEV___upvr then
			local var79 = getComponentName_upvr(arg1_13.type) or "Component"
			if var14_upvw[var79] then
			else
				var14_upvw[var79] = true
				console_upvr.error("Functions are not valid as a React child. This may happen if ".."you return a Component instead of <Component /> from render. ".."Or maybe you meant to call this function rather than return it.")
			end
		end
		return nil
	end
	local function updateSlot_upvr(arg1_14, arg2, arg3, arg4, arg5) -- Line 672, Named "updateSlot"
		--[[ Upvalues[17]:
			[1]: REACT_ELEMENT_TYPE_upvr (copied, readonly)
			[2]: REACT_FRAGMENT_TYPE_upvr (copied, readonly)
			[3]: Fragment_upvr (copied, readonly)
			[4]: createFiberFromFragment_upvr (copied, readonly)
			[5]: createWorkInProgress_upvr (copied, readonly)
			[6]: updateElement_upvr (readonly)
			[7]: REACT_PORTAL_TYPE_upvr (copied, readonly)
			[8]: updatePortal_upvr (readonly)
			[9]: REACT_LAZY_TYPE_upvr (copied, readonly)
			[10]: enableLazyElements_upvr (copied, readonly)
			[11]: updateSlot_upvr (readonly)
			[12]: HostText_upvr (copied, readonly)
			[13]: createFiberFromText_upvr (copied, readonly)
			[14]: __DEV___upvr (copied, readonly)
			[15]: getComponentName_upvr (copied, readonly)
			[16]: var14_upvw (copied, read and write)
			[17]: console_upvr (copied, readonly)
		]]
		if arg3 == nil then
			return nil
		end
		if arg2 ~= nil then
			local _ = arg2.key
		else
		end
		local type_result1_7 = type(arg3)
		if type_result1_7 == "table" then
			if arg3.key == nil then
				local type_result1_3 = type(arg5)
				if type_result1_3 == "string" or type_result1_3 == "number" then
					arg3.key = arg5
				elseif type_result1_3 == "table" then
					arg3.key = tostring(arg5)
				end
			end
			local __typeof_6 = arg3["$$typeof"]
			if __typeof_6 == REACT_ELEMENT_TYPE_upvr then
				if arg3.key == nil then
					if arg3.type == REACT_FRAGMENT_TYPE_upvr then
						local children_3 = arg3.props.children
						if arg2 == nil or arg2.tag ~= Fragment_upvr then
							-- KONSTANTERROR: Expression was reused, decompilation is incorrect
							local var39_result1_5 = createFiberFromFragment_upvr(children_3, arg1_14.mode, arg4, nil)
							var39_result1_5.return_ = arg1_14
							return var39_result1_5
						end
						local var11_result1_6 = createWorkInProgress_upvr(arg2, children_3)
						var11_result1_6.index = 1
						var11_result1_6.sibling = nil
						local var87 = var11_result1_6
						var87.return_ = arg1_14
						local var88 = var87
						do
							return var88
						end
						return var88
					end
					return updateElement_upvr(arg1_14, arg2, arg3, arg4)
				end
				return nil
			end
			if __typeof_6 == REACT_PORTAL_TYPE_upvr then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if arg3.key == nil then
					return updatePortal_upvr(arg1_14, arg2, arg3, arg4)
				end
				return nil
			end
			if __typeof_6 == REACT_LAZY_TYPE_upvr and enableLazyElements_upvr then
				return updateSlot_upvr(arg1_14, arg2, arg3._init(arg3._payload), arg4)
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if nil ~= nil then
				return nil
			end
			if arg2 == nil or arg2.tag ~= Fragment_upvr then
				local var39_result1_2 = createFiberFromFragment_upvr(arg3, arg1_14.mode, arg4, nil)
				var39_result1_2.return_ = arg1_14
				return var39_result1_2
			end
			local var11_result1_5 = createWorkInProgress_upvr(arg2, arg3)
			var11_result1_5.index = 1
			var11_result1_5.sibling = nil
			local var91 = var11_result1_5
			var91.return_ = arg1_14
			local var92 = var91
			do
				return var92
			end
			return var92
		end
		if type_result1_7 == "string" or type_result1_7 == "number" then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if nil ~= nil then
				return nil
			end
			local tostring_result1_2 = tostring(arg3)
			if arg2 == nil or arg2.tag ~= HostText_upvr then
				local var30_result1 = createFiberFromText_upvr(tostring_result1_2, arg1_14.mode, arg4)
				var30_result1.return_ = arg1_14
				return var30_result1
			end
			local var11_result1 = createWorkInProgress_upvr(arg2, tostring_result1_2)
			var11_result1.index = 1
			var11_result1.sibling = nil
			local var96 = var11_result1
			var96.return_ = arg1_14
			local var97 = var96
			do
				return var97
			end
			return var97
		end
		if __DEV___upvr and type_result1_7 == "function" and __DEV___upvr then
			local var98 = getComponentName_upvr(arg1_14.type) or "Component"
			if var14_upvw[var98] then
			else
				var14_upvw[var98] = true
				console_upvr.error("Functions are not valid as a React child. This may happen if ".."you return a Component instead of <Component /> from render. ".."Or maybe you meant to call this function rather than return it.")
			end
		end
		return nil
	end
	local function updateFromMap_upvr(arg1_15, arg2, arg3, arg4, arg5, arg6) -- Line 760, Named "updateFromMap"
		--[[ Upvalues[17]:
			[1]: REACT_ELEMENT_TYPE_upvr (copied, readonly)
			[2]: REACT_FRAGMENT_TYPE_upvr (copied, readonly)
			[3]: Fragment_upvr (copied, readonly)
			[4]: createFiberFromFragment_upvr (copied, readonly)
			[5]: createWorkInProgress_upvr (copied, readonly)
			[6]: updateElement_upvr (readonly)
			[7]: REACT_PORTAL_TYPE_upvr (copied, readonly)
			[8]: updatePortal_upvr (readonly)
			[9]: REACT_LAZY_TYPE_upvr (copied, readonly)
			[10]: enableLazyElements_upvr (copied, readonly)
			[11]: updateFromMap_upvr (readonly)
			[12]: HostText_upvr (copied, readonly)
			[13]: createFiberFromText_upvr (copied, readonly)
			[14]: __DEV___upvr (copied, readonly)
			[15]: getComponentName_upvr (copied, readonly)
			[16]: var14_upvw (copied, read and write)
			[17]: console_upvr (copied, readonly)
		]]
		if arg4 == nil then
			return nil
		end
		local type_result1_9 = type(arg4)
		if type_result1_9 == "table" then
			if arg4.key == nil then
				local type_result1 = type(arg6)
				if type_result1 == "string" or type_result1 == "number" then
					arg4.key = arg6
				elseif type_result1 == "table" then
					arg4.key = tostring(arg6)
				end
			end
			type_result1 = nil
			local var101 = type_result1
			local __typeof_4 = arg4["$$typeof"]
			if __typeof_4 == REACT_ELEMENT_TYPE_upvr then
				if arg4.key == nil then
					var101 = arg3
				else
					var101 = arg4.key
				end
				local var103 = arg1_15[var101]
				if arg4.type == REACT_FRAGMENT_TYPE_upvr then
					local children_4 = arg4.props.children
					if var103 == nil or var103.tag ~= Fragment_upvr then
						local var39_result1_4 = createFiberFromFragment_upvr(children_4, arg2.mode, arg5, arg4.key)
						var39_result1_4.return_ = arg2
						return var39_result1_4
					end
					local createWorkInProgress_upvr_result1 = createWorkInProgress_upvr(var103, children_4)
					createWorkInProgress_upvr_result1.index = 1
					createWorkInProgress_upvr_result1.sibling = nil
					local var107 = createWorkInProgress_upvr_result1
					var107.return_ = arg2
					local var108 = var107
					do
						return var108
					end
					return var108
				end
				return updateElement_upvr(arg2, var103, arg4, arg5)
			end
			if __typeof_4 == REACT_PORTAL_TYPE_upvr then
				if arg4.key == nil then
					var101 = arg3
				else
					var101 = arg4.key
				end
				return updatePortal_upvr(arg2, arg1_15[var101], arg4, arg5)
			end
			if __typeof_4 == REACT_LAZY_TYPE_upvr and enableLazyElements_upvr then
				return updateFromMap_upvr(arg1_15, arg2, arg3, arg4._init(arg4._payload), arg5)
			end
			local var109 = arg1_15[arg3]
			if var109 == nil or var109.tag ~= Fragment_upvr then
				local var39_result1_3 = createFiberFromFragment_upvr(arg4, arg2.mode, arg5, nil)
				var39_result1_3.return_ = arg2
				return var39_result1_3
			end
			local createWorkInProgress_upvr_result1_5 = createWorkInProgress_upvr(var109, arg4)
			createWorkInProgress_upvr_result1_5.index = 1
			createWorkInProgress_upvr_result1_5.sibling = nil
			local var112 = createWorkInProgress_upvr_result1_5
			var112.return_ = arg2
			local var113 = var112
			do
				return var113
			end
			return var113
		end
		if type_result1_9 == "string" or type_result1_9 == "number" then
			local var114 = arg1_15[arg3] or nil
			local tostring_result1 = tostring(arg4)
			if var114 == nil or var114.tag ~= HostText_upvr then
				local var30_result1_2 = createFiberFromText_upvr(tostring_result1, arg2.mode, arg5)
				var30_result1_2.return_ = arg2
				return var30_result1_2
			end
			local createWorkInProgress_upvr_result1_4 = createWorkInProgress_upvr(var114, tostring_result1)
			createWorkInProgress_upvr_result1_4.index = 1
			createWorkInProgress_upvr_result1_4.sibling = nil
			local var118 = createWorkInProgress_upvr_result1_4
			var118.return_ = arg2
			local var119 = var118
			do
				return var119
			end
			return var119
		end
		if __DEV___upvr and type_result1_9 == "function" and __DEV___upvr then
			local var120 = getComponentName_upvr(arg2.type) or "Component"
			if var14_upvw[var120] then
			else
				var14_upvw[var120] = true
				console_upvr.error("Functions are not valid as a React child. This may happen if ".."you return a Component instead of <Component /> from render. ".."Or maybe you meant to call this function rather than return it.")
			end
		end
		return nil
	end
	local function warnOnInvalidKey_upvr(arg1_16, arg2, arg3) -- Line 854, Named "warnOnInvalidKey"
		--[[ Upvalues[8]:
			[1]: __DEV___upvr (copied, readonly)
			[2]: REACT_ELEMENT_TYPE_upvr (copied, readonly)
			[3]: REACT_PORTAL_TYPE_upvr (copied, readonly)
			[4]: var16_upvw (copied, read and write)
			[5]: console_upvr (copied, readonly)
			[6]: REACT_LAZY_TYPE_upvr (copied, readonly)
			[7]: enableLazyElements_upvr (copied, readonly)
			[8]: warnOnInvalidKey_upvr (readonly)
		]]
		if __DEV___upvr then
			if arg1_16 == nil or type(arg1_16) ~= "table" then
				return arg2
			end
			local __typeof_7 = arg1_16["$$typeof"]
			if __typeof_7 == REACT_ELEMENT_TYPE_upvr or __typeof_7 == REACT_PORTAL_TYPE_upvr then
				var16_upvw(arg1_16, arg3)
				local key = arg1_16.key
				if type(key) ~= "string" then
					return arg2
				end
				if arg2 == nil then
					local module = {
						[key] = true;
					}
					return module
				end
				if not module[key] then
					module[key] = true
					return module
				end
				console_upvr.error("Encountered two children with the same key, `%s`. ".."Keys should be unique so that components maintain their identity ".."across updates. Non-unique keys may cause children to be ".."duplicated and/or omitted — the behavior is unsupported and ".."could change in a future version.", key)
				return module
			end
			if __typeof_7 == REACT_LAZY_TYPE_upvr and enableLazyElements_upvr then
				warnOnInvalidKey_upvr(arg1_16._init(arg1_16._payload), module, arg3)
			end
		end
		return module
	end
	local function reconcileChildrenArray_upvr(arg1_17, arg2, arg3, arg4) -- Line 896, Named "reconcileChildrenArray"
		--[[ Upvalues[9]:
			[1]: __DEV___upvr (copied, readonly)
			[2]: warnOnInvalidKey_upvr (readonly)
			[3]: updateSlot_upvr (readonly)
			[4]: arg1 (readonly)
			[5]: Deletion_upvr (copied, readonly)
			[6]: Placement_upvr (copied, readonly)
			[7]: createChild_upvr (readonly)
			[8]: mapRemainingChildren_upvr (readonly)
			[9]: updateFromMap_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 160 start (CF ANALYSIS FAILED)
		local var132
		if __DEV___upvr then
			for _, v in arg3 do
				var132 = v
				local var133
			end
		end
		local var134
		local var135 = arg2
		-- KONSTANTERROR: [0] 1. Error Block 160 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [72] 60. Error Block 198 start (CF ANALYSIS FAILED)
		if arg1 and var135 and var132.alternate == nil then
			if not arg1 then
			else
				local deletions_8 = arg1_17.deletions
				if deletions_8 == nil then
					arg1_17.deletions = {var135}
					arg1_17.flags = bit32.bor(arg1_17.flags, Deletion_upvr)
				else
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					table.insert(deletions_8, var135)
				end
			end
		end
		local var139 = var132
		var139.index = 1
		if not arg1 then
		else
			local alternate_2 = var139.alternate
			if alternate_2 ~= nil then
				if alternate_2.index < 1 then
					var139.flags = bit32.bor(var139.flags, Placement_upvr)
				else
				end
			else
				var139.flags = bit32.bor(var139.flags, Placement_upvr)
			end
		end
		if var134 == nil then
		else
			var134.sibling = var132
		end
		-- KONSTANTERROR: [72] 60. Error Block 198 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [22] 22. Error Block 6 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [22] 22. Error Block 6 end (CF ANALYSIS FAILED)
	end
	local function reconcileChildrenIterator_upvr(arg1_18, arg2, arg3, arg4, arg5) -- Line 1103, Named "reconcileChildrenIterator"
		--[[ Upvalues[11]:
			[1]: __DEV___upvr (copied, readonly)
			[2]: var13_upvw (copied, read and write)
			[3]: console_upvr (copied, readonly)
			[4]: warnOnInvalidKey_upvr (readonly)
			[5]: updateSlot_upvr (readonly)
			[6]: arg1 (readonly)
			[7]: Deletion_upvr (copied, readonly)
			[8]: Placement_upvr (copied, readonly)
			[9]: createChild_upvr (readonly)
			[10]: mapRemainingChildren_upvr (readonly)
			[11]: updateFromMap_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 188 start (CF ANALYSIS FAILED)
		if __DEV___upvr then
			if arg3.entries == arg5 then
				if not var13_upvw then
					console_upvr.error("Using Maps as children is not supported. ".."Use an array of keyed ReactElements instead.")
				end
				var13_upvw = true
			end
			local arg5_result1 = arg5(arg3)
			if arg5_result1 then
				repeat
				until arg5_result1.next().done
			end
		end
		local _ = arg5(arg3)
		local var145
		-- KONSTANTERROR: [0] 1. Error Block 188 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [130] 100. Error Block 202 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [130.13]
		local alternate_3 = nil.alternate
		if alternate_3 ~= nil then
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [136.14]
			if alternate_3.index < nil then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
				nil.flags = bit32.bor(nil.flags, Placement_upvr)
			else
			end
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
			nil.flags = bit32.bor(nil.flags, Placement_upvr)
		end
		if var145 == nil then
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			var145.sibling = nil
		end
		-- KONSTANTERROR: [130] 100. Error Block 202 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [53] 46. Error Block 12 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [53] 46. Error Block 12 end (CF ANALYSIS FAILED)
	end
	local function reconcileSingleTextNode_upvr(arg1_19, arg2, arg3, arg4) -- Line 1316, Named "reconcileSingleTextNode"
		--[[ Upvalues[5]:
			[1]: HostText_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: Deletion_upvr (copied, readonly)
			[4]: createWorkInProgress_upvr (copied, readonly)
			[5]: createFiberFromText_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 2. Error Block 2 start (CF ANALYSIS FAILED)
		local tag = arg2.tag
		-- KONSTANTERROR: [2] 2. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [12] 9. Error Block 56 start (CF ANALYSIS FAILED)
		local var149 = tag
		while var149 ~= nil do
			if not arg1 then
			else
				local deletions_6 = arg1_19.deletions
				if deletions_6 == nil then
					arg1_19.deletions = {var149}
					arg1_19.flags = bit32.bor(arg1_19.flags, Deletion_upvr)
				else
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					table.insert(deletions_6, var149)
				end
			end
		end
		local var11_result1_8 = createWorkInProgress_upvr(arg2, arg3)
		var11_result1_8.index = 1
		var11_result1_8.sibling = nil
		local var153 = var11_result1_8
		var153.return_ = arg1_19
		do
			return var153
		end
		-- KONSTANTERROR: [12] 9. Error Block 56 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [65] 46. Error Block 40 start (CF ANALYSIS FAILED)
		if not arg1 then
			-- KONSTANTWARNING: GOTO [107] #75
		end
		-- KONSTANTERROR: [65] 46. Error Block 40 end (CF ANALYSIS FAILED)
	end
	local function reconcileSingleElement_upvr(arg1_20, arg2, arg3, arg4) -- Line 1341, Named "reconcileSingleElement"
		--[[ Upvalues[8]:
			[1]: Fragment_upvr (copied, readonly)
			[2]: REACT_FRAGMENT_TYPE_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: Deletion_upvr (copied, readonly)
			[5]: createWorkInProgress_upvr (copied, readonly)
			[6]: __DEV___upvr (copied, readonly)
			[7]: createFiberFromFragment_upvr (copied, readonly)
			[8]: createFiberFromElement_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local var154 = arg2
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [222] 152. Error Block 106 start (CF ANALYSIS FAILED)
		if not arg1 then
		else
			local deletions_3 = arg1_20.deletions
			if deletions_3 == nil then
				arg1_20.deletions = {var154}
				arg1_20.flags = bit32.bor(arg1_20.flags, Deletion_upvr)
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				table.insert(deletions_3, var154)
			end
		end
		-- KONSTANTERROR: [222] 152. Error Block 106 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [3] 3. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [3] 3. Error Block 2 end (CF ANALYSIS FAILED)
	end
	local function reconcileSinglePortal_upvr(arg1_21, arg2, arg3, arg4) -- Line 1441, Named "reconcileSinglePortal"
		--[[ Upvalues[5]:
			[1]: HostPortal_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: Deletion_upvr (copied, readonly)
			[4]: createWorkInProgress_upvr (copied, readonly)
			[5]: createFiberFromPortal_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local var157 = arg2
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [138] 93. Error Block 72 start (CF ANALYSIS FAILED)
		if not arg1 then
		else
			local deletions_7 = arg1_21.deletions
			if deletions_7 == nil then
				arg1_21.deletions = {var157}
				arg1_21.flags = bit32.bor(arg1_21.flags, Deletion_upvr)
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				table.insert(deletions_7, var157)
			end
		end
		-- KONSTANTERROR: [138] 93. Error Block 72 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [3] 3. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [3] 3. Error Block 2 end (CF ANALYSIS FAILED)
	end
	local function reconcileChildFibers_upvr(arg1_22, arg2, arg3, arg4) -- Line 1480, Named "reconcileChildFibers"
		--[[ Upvalues[20]:
			[1]: REACT_FRAGMENT_TYPE_upvr (copied, readonly)
			[2]: isArray_upvr (copied, readonly)
			[3]: REACT_ELEMENT_TYPE_upvr (copied, readonly)
			[4]: reconcileSingleElement_upvr (readonly)
			[5]: arg1 (readonly)
			[6]: Placement_upvr (copied, readonly)
			[7]: REACT_PORTAL_TYPE_upvr (copied, readonly)
			[8]: reconcileSinglePortal_upvr (readonly)
			[9]: REACT_LAZY_TYPE_upvr (copied, readonly)
			[10]: enableLazyElements_upvr (copied, readonly)
			[11]: reconcileChildFibers_upvr (readonly)
			[12]: reconcileChildrenArray_upvr (readonly)
			[13]: reconcileSingleTextNode_upvr (readonly)
			[14]: getIteratorFn_upvr (copied, readonly)
			[15]: reconcileChildrenIterator_upvr (readonly)
			[16]: __DEV___upvr (copied, readonly)
			[17]: getComponentName_upvr (copied, readonly)
			[18]: var14_upvw (copied, read and write)
			[19]: console_upvr (copied, readonly)
			[20]: Deletion_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var189 = false
		if arg3 ~= nil then
			var189 = false
			if type(arg3) == "table" then
				var189 = false
				if arg3.type == REACT_FRAGMENT_TYPE_upvr then
					if arg3.key ~= nil then
						var189 = false
					else
						var189 = true
					end
				end
			end
		end
		if var189 then
			local children_2 = arg3.props.children
			local type_result1_5 = type(children_2)
		end
		local var192 = false
		if children_2 ~= nil then
			var192 = false
			if type_result1_5 == "table" then
				var192 = not isArray_upvr(children_2)
			end
		end
		if var192 then
			local __typeof = children_2["$$typeof"]
			if __typeof == REACT_ELEMENT_TYPE_upvr then
				local reconcileSingleElement_upvr_result1 = reconcileSingleElement_upvr(arg1_22, arg2, children_2, arg4)
				if arg1 and reconcileSingleElement_upvr_result1.alternate == nil then
					reconcileSingleElement_upvr_result1.flags = bit32.bor(reconcileSingleElement_upvr_result1.flags, Placement_upvr)
				end
				return reconcileSingleElement_upvr_result1
			end
			if __typeof == REACT_PORTAL_TYPE_upvr then
				local reconcileSinglePortal_result1_2 = reconcileSinglePortal_upvr(arg1_22, arg2, children_2, arg4)
				if arg1 and reconcileSinglePortal_result1_2.alternate == nil then
					reconcileSinglePortal_result1_2.flags = bit32.bor(reconcileSinglePortal_result1_2.flags, Placement_upvr)
				end
				return reconcileSinglePortal_result1_2
			end
			if __typeof == REACT_LAZY_TYPE_upvr and enableLazyElements_upvr then
				do
					return reconcileChildFibers_upvr(arg1_22, arg2, children_2._init(children_2._payload), arg4)
				end
				-- KONSTANTWARNING: GOTO [160] #122
			end
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if isArray_upvr(children_2) then
				return reconcileChildrenArray_upvr(arg1_22, arg2, children_2, arg4)
			end
			if type_result1_5 == "string" or type_result1_5 == "number" then
				local reconcileSingleTextNode_result1 = reconcileSingleTextNode_upvr(arg1_22, arg2, tostring(children_2), arg4)
				if arg1 and reconcileSingleTextNode_result1.alternate == nil then
					reconcileSingleTextNode_result1.flags = bit32.bor(reconcileSingleTextNode_result1.flags, Placement_upvr)
				end
				return reconcileSingleTextNode_result1
			end
		end
		local getIteratorFn_upvr_result1_3 = getIteratorFn_upvr(children_2)
		if getIteratorFn_upvr_result1_3 then
			return reconcileChildrenIterator_upvr(arg1_22, arg2, children_2, arg4, getIteratorFn_upvr_result1_3)
		end
		if __DEV___upvr and type_result1_5 == "function" and __DEV___upvr then
			local var198 = getComponentName_upvr(arg1_22.type) or "Component"
			if var14_upvw[var198] then
			else
				var14_upvw[var198] = true
				console_upvr.error("Functions are not valid as a React child. This may happen if ".."you return a Component instead of <Component /> from render. ".."Or maybe you meant to call this function rather than return it.")
			end
		end
		if children_2 ~= nil or var189 then
		end
		if not arg1 then
			return nil
		end
		local var199 = arg2
		while var199 ~= nil do
			if not arg1 then
			else
				local deletions_4 = arg1_22.deletions
				if deletions_4 == nil then
					arg1_22.deletions = {var199}
					arg1_22.flags = bit32.bor(arg1_22.flags, Deletion_upvr)
				else
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					table.insert(deletions_4, var199)
				end
			end
		end
		return nil
	end
	return reconcileChildFibers_upvr
end
module_2.reconcileChildFibers = ChildReconciler(true)
module_2.mountChildFibers = ChildReconciler(false)
function module_2.cloneChildFibers(arg1, arg2) -- Line 1628
	--[[ Upvalues[1]:
		[1]: createWorkInProgress_upvr (readonly)
	]]
	local var203
	if arg2.child == nil then
	else
		local child_2 = arg2.child
		var203 = createWorkInProgress_upvr(child_2, child_2.pendingProps)
		arg2.child = var203
		var203.return_ = arg2
		while child_2.sibling ~= nil do
			local sibling = child_2.sibling
			var203.sibling = createWorkInProgress_upvr(sibling, sibling.pendingProps)
			var203 = var203.sibling
			var203.return_ = arg2
		end
		var203.sibling = nil
	end
end
local resetWorkInProgress_upvr = new.resetWorkInProgress
function module_2.resetChildFibers(arg1, arg2) -- Line 1655
	--[[ Upvalues[1]:
		[1]: resetWorkInProgress_upvr (readonly)
	]]
	local child = arg1.child
	while child ~= nil do
		resetWorkInProgress_upvr(child, arg2)
	end
end
return module_2