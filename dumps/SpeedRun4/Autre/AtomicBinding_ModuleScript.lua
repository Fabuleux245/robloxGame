-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:02:39
-- Luau version 6, Types version 3
-- Time taken: 0.008964 seconds

local function parsePath_upvr(arg1) -- Line 8, Named "parsePath"
	local string_split_result1 = string.split(arg1, '/')
	for i = #string_split_result1, 1, -1 do
		if string_split_result1[i] == "" then
			table.remove(string_split_result1, i)
		end
	end
	return string_split_result1
end
local function _(arg1, arg2) -- Line 18, Named "isManifestResolved"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 15 start (CF ANALYSIS FAILED)
	local var7 = 0
	for _ in pairs(arg1) do
		var7 += 1
	end
	if var7 > arg2 then
		-- KONSTANTWARNING: GOTO [13] #11
	end
	-- KONSTANTERROR: [0] 1. Error Block 15 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [12] 10. Error Block 18 start (CF ANALYSIS FAILED)
	assert(true, var7)
	if var7 ~= arg2 then
	else
	end
	do
		return true
	end
	-- KONSTANTERROR: [12] 10. Error Block 18 end (CF ANALYSIS FAILED)
end
local function unbindNodeDescend_upvr(arg1, arg2) -- Line 28, Named "unbindNodeDescend"
	--[[ Upvalues[1]:
		[1]: unbindNodeDescend_upvr (readonly)
	]]
	if arg1.instance == nil then
	else
		arg1.instance = nil
		local connections = arg1.connections
		if connections then
			for _, v_7 in ipairs(connections) do
				v_7:Disconnect()
			end
			table.clear(connections)
		end
		if arg2 and arg1.alias then
			arg2[arg1.alias] = nil
		end
		local children = arg1.children
		if children then
			for _, v_8 in pairs(children) do
				unbindNodeDescend_upvr(v_8, arg2)
			end
		end
	end
end
local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.new(arg1, arg2) -- Line 58
	--[[ Upvalues[2]:
		[1]: parsePath_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local tbl_3 = {}
	local var29 = 1
	for i_3, v in pairs(arg1) do
		tbl_3[i_3] = parsePath_upvr(v)
		var29 += 1
	end
	local module = {}
	module._boundFn = arg2
	module._parsedManifest = tbl_3
	module._manifestSizeTarget = var29
	module._dtorMap = {}
	module._connections = {}
	module._rootInstToRootNode = {}
	module._rootInstToManifest = {}
	return setmetatable(module, module_upvr)
end
function module_upvr._startBoundFn(arg1, arg2, arg3) -- Line 84
	local _dtorMap = arg1._dtorMap
	local var35 = _dtorMap[arg2]
	if var35 then
		var35()
		_dtorMap[arg2] = nil
	end
	local any__boundFn_result1 = arg1._boundFn(arg3)
	if any__boundFn_result1 then
		_dtorMap[arg2] = any__boundFn_result1
	end
end
function module_upvr._stopBoundFn(arg1, arg2) -- Line 100
	local _dtorMap_2 = arg1._dtorMap
	local var38 = _dtorMap_2[arg2]
	if var38 then
		var38()
		_dtorMap_2[arg2] = nil
	end
end
local getFFlagCheckRootInstToManifest_upvr = require(script:FindFirstAncestor("ExpChat").Flags.getFFlagCheckRootInstToManifest)
function module_upvr.bindRoot(arg1, arg2) -- Line 110
	--[[ Upvalues[2]:
		[1]: getFFlagCheckRootInstToManifest_upvr (readonly)
		[2]: unbindNodeDescend_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 48 start (CF ANALYSIS FAILED)
	debug.profilebegin("AtomicBinding:BindRoot")
	local _parsedManifest = arg1._parsedManifest
	local _rootInstToManifest_2 = arg1._rootInstToManifest
	local var58
	if getFFlagCheckRootInstToManifest_upvr() then
		if _rootInstToManifest_2[arg2] ~= nil then
			do
				return
			end
			-- KONSTANTWARNING: GOTO [31] #23
		end
		-- KONSTANTWARNING: GOTO [31] #23
	end
	-- KONSTANTERROR: [0] 1. Error Block 48 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [20] 15. Error Block 51 start (CF ANALYSIS FAILED)
	if _rootInstToManifest_2[arg2] ~= nil then
		var58 = false
	else
		var58 = true
	end
	assert(var58, "rootInstToManifest is not nil")
	local tbl_2_upvr = {}
	_rootInstToManifest_2[arg2] = tbl_2_upvr
	var58 = debug.profilebegin
	var58("BuildTree")
	var58 = {}
	var58.alias = "root"
	var58.instance = arg2
	if next(_parsedManifest) then
		var58.children = {}
		var58.connections = {}
	end
	arg1._rootInstToRootNode[arg2] = var58
	for i_4, v_2 in pairs(_parsedManifest) do
		local var63 = var58
		for i_5, v_3 in ipairs(v_2) do
			local var67
			if i_5 ~= #v_2 then
				var67 = false
			else
				var67 = true
			end
			if not var63.children[v_3] then
				local tbl = {}
				local var69
			end
			if var67 then
				var69 = tbl.alias
				if var69 ~= nil then
					var69 = error
					var69("Multiple aliases assigned to one instance")
				end
				tbl.alias = i_4
			else
				var69 = tbl.children
				if not var69 then
					var69 = {}
				end
				tbl.children = var69
				var69 = tbl.connections
				if not var69 then
					var69 = {}
				end
				tbl.connections = var69
			end
			var63.children[v_3] = tbl
		end
	end
	debug.profileend()
	local _manifestSizeTarget_upvr = arg1._manifestSizeTarget
	local function processNode_upvr(arg1_2) -- Line 170, Named "processNode"
		--[[ Upvalues[6]:
			[1]: tbl_2_upvr (readonly)
			[2]: processNode_upvr (readonly)
			[3]: arg1 (readonly)
			[4]: arg2 (readonly)
			[5]: unbindNodeDescend_upvr (copied, readonly)
			[6]: _manifestSizeTarget_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local alias = arg1_2.alias
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [14] 10. Error Block 2 start (CF ANALYSIS FAILED)
		tbl_2_upvr[alias] = assert(arg1_2.instance, "instance does not exist")
		-- KONSTANTERROR: [14] 10. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [16] 12. Error Block 3 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [16] 12. Error Block 3 end (CF ANALYSIS FAILED)
	end
	debug.profilebegin("ResolveTree")
	processNode_upvr(var58)
	debug.profileend()
	debug.profileend()
	-- KONSTANTERROR: [20] 15. Error Block 51 end (CF ANALYSIS FAILED)
end
function module_upvr.unbindRoot(arg1, arg2) -- Line 246
	--[[ Upvalues[1]:
		[1]: unbindNodeDescend_upvr (readonly)
	]]
	local _rootInstToRootNode = arg1._rootInstToRootNode
	local _rootInstToManifest = arg1._rootInstToManifest
	arg1:_stopBoundFn(arg2)
	local var74 = _rootInstToRootNode[arg2]
	if var74 then
		unbindNodeDescend_upvr(var74, assert(_rootInstToManifest[arg2], "rootInstToManifest is nil"))
		_rootInstToRootNode[arg2] = nil
	end
	_rootInstToManifest[arg2] = nil
end
function module_upvr.destroy(arg1) -- Line 262
	--[[ Upvalues[1]:
		[1]: unbindNodeDescend_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	debug.profilebegin("AtomicBinding:destroy")
	for _, v_4 in pairs(arg1._dtorMap) do
		v_4:destroy()
	end
	table.clear(arg1._dtorMap)
	for _, v_5 in ipairs(arg1._connections) do
		v_5:Disconnect()
	end
	table.clear(arg1._connections)
	for i_8, v_6 in pairs(arg1._rootInstToRootNode) do
		unbindNodeDescend_upvr(v_6, assert(arg1._rootInstToManifest[i_8], "rootInstToManifest is nil"))
		local _
	end
	table.clear(arg1._rootInstToManifest)
	table.clear(arg1._rootInstToRootNode)
	debug.profileend()
end
return module_upvr