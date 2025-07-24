-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:41:53
-- Luau version 6, Types version 3
-- Time taken: 0.003831 seconds

local tbl_upvr = {}
tbl_upvr.__index = tbl_upvr
local function new(arg1, arg2) -- Line 10
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local module_3 = {}
	module_3.sid = arg1
	module_3.tag = arg2
	module_3.metadata = {}
	module_3.children = {}
	module_3.timestamp = tick()
	module_3.parent = nil
	setmetatable(module_3, {
		__index = tbl_upvr;
	})
	return module_3
end
tbl_upvr.new = new
function tbl_upvr.addChild(arg1, arg2, arg3) -- Line 27
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local any_new_result1 = tbl_upvr.new(arg2, arg3)
	any_new_result1.parent = arg1
	arg1.children[arg2] = any_new_result1
end
function tbl_upvr.dump(arg1, arg2, arg3) -- Line 34
	arg3 = arg3..`{arg2} sid: {arg1.sid}, tag: {arg1.tag}\n`
	local var9 = arg3
	arg2 = arg2.."----"
	local var10 = arg2
	for _, v in arg1.children do
		var9 = v:dump(var10, var9)
	end
	return var9
end
function findSid(arg1, arg2) -- Line 44
	if arg1.sid == arg2 then
		return arg1
	end
	for _, v_2 in arg1.children do
		local findSid_result1_5 = findSid(v_2, arg2)
		if findSid_result1_5 ~= nil then
			return findSid_result1_5
		end
	end
	return nil
end
local module_2_upvr = {
	MOCK_ROOT_SID = "MOCK_ROOT_SID";
}
module_2_upvr.__index = module_2_upvr
local Signal_upvr = require(script:FindFirstAncestor("SessionizationUtil").Parent.AppCommonLib).Signal
function module_2_upvr.new() -- Line 65
	--[[ Upvalues[3]:
		[1]: tbl_upvr (readonly)
		[2]: module_2_upvr (readonly)
		[3]: Signal_upvr (readonly)
	]]
	local module = {
		mockRootNode = tbl_upvr.new(module_2_upvr.MOCK_ROOT_SID, module_2_upvr.MOCK_ROOT_SID);
		SessionChangedSignal = Signal_upvr.new();
	}
	setmetatable(module, {
		__index = module_2_upvr;
	})
	return module
end
function module_2_upvr._resetMockData(arg1) -- Line 78
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	arg1.mockRootNode = tbl_upvr.new(module_2_upvr.MOCK_ROOT_SID, module_2_upvr.MOCK_ROOT_SID)
end
function module_2_upvr._findSid(arg1, arg2) -- Line 82
	return findSid(arg1.mockRootNode, arg2)
end
function module_2_upvr._dumpSessionTree(arg1) -- Line 86
	if arg1.mockRootNode ~= nil then
		return arg1.mockRootNode:dump("", "")
	end
	return "Root node is nil!"
end
function module_2_upvr.GetRootSID(arg1) -- Line 94
	return arg1.MOCK_ROOT_SID
end
function module_2_upvr.SetSession(arg1, arg2, arg3, arg4) -- Line 98
	local findSid_result1_2 = findSid(arg1.mockRootNode, arg2)
	if not findSid_result1_2 then
		findSid_result1_2 = arg1.mockRootNode
	end
	findSid_result1_2:addChild(arg3, arg4)
end
function module_2_upvr.ReplaceSession(arg1, arg2, arg3) -- Line 104
	local findSid_result1_6 = findSid(arg1.mockRootNode, arg2)
	if findSid_result1_6 ~= nil and findSid_result1_6.parent ~= nil then
		findSid_result1_6.parent.children[arg2] = nil
		findSid_result1_6.parent:addChild(arg2, arg3)
	end
end
function module_2_upvr.RemoveSession(arg1, arg2) -- Line 114
	local findSid_result1_4 = findSid(arg1.mockRootNode, arg2)
	if findSid_result1_4 ~= nil then
		local parent = findSid_result1_4.parent
		if parent ~= nil then
			parent.children[arg2] = nil
		end
	end
end
function module_2_upvr.GetMetadata(arg1, arg2, arg3) -- Line 124
	local findSid_result1_7 = findSid(arg1.mockRootNode, arg2)
	if findSid_result1_7 ~= nil then
		return findSid_result1_7.metadata[arg3]
	end
	return nil
end
function module_2_upvr.SetMetadata(arg1, arg2, arg3, arg4) -- Line 133
	local findSid_result1 = findSid(arg1.mockRootNode, arg2)
	if findSid_result1 ~= nil then
		findSid_result1.metadata[arg3] = arg4
	end
end
function module_2_upvr.SessionExists(arg1, arg2) -- Line 140
	local mockRootNode = arg1.mockRootNode
	if findSid(mockRootNode, arg2) == nil then
		mockRootNode = false
	else
		mockRootNode = true
	end
	return mockRootNode
end
function module_2_upvr.RemoveSessionsWithMetadataKey(arg1, arg2) -- Line 145
	if arg2 == nil then
	else
		local function findNodeWithMetadataKey_upvr(arg1_2, arg2_2) -- Line 150, Named "findNodeWithMetadataKey"
			--[[ Upvalues[1]:
				[1]: findNodeWithMetadataKey_upvr (readonly)
			]]
			if arg2_2 ~= nil then
				if arg2_2.metadata[arg1_2] ~= nil then
					return arg2_2
				end
				for _, v_3 in arg2_2.children do
					local findNodeWithMetadataKey_result1 = findNodeWithMetadataKey_upvr(arg1_2, v_3)
					if findNodeWithMetadataKey_result1 ~= nil then
						return findNodeWithMetadataKey_result1
					end
				end
			end
			return nil
		end
		local findNodeWithMetadataKey_upvr_result1 = findNodeWithMetadataKey_upvr(arg2, arg1.mockRootNode)
		while findNodeWithMetadataKey_upvr_result1 ~= nil do
			arg1:RemoveSession(findNodeWithMetadataKey_upvr_result1.sid)
		end
	end
end
function module_2_upvr.generateSessionInfoString(arg1, arg2, arg3, arg4, arg5) -- Line 174
	return ""
end
function module_2_upvr.GetSessionTag(arg1, arg2) -- Line 183
	local findSid_result1_3 = findSid(arg1.mockRootNode, arg2)
	if findSid_result1_3 ~= nil then
		return findSid_result1_3.tag
	end
	return ""
end
return module_2_upvr