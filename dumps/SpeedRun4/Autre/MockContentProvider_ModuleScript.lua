-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:39
-- Luau version 6, Types version 3
-- Time taken: 0.003548 seconds

local tbl_upvr = {}
tbl_upvr.__index = tbl_upvr
local function new(arg1) -- Line 38
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local module_4 = {}
	setmetatable(module_4, {
		__index = tbl_upvr;
	})
	module_4.callback = arg1
	module_4.connected = true
	module_4.isMock = 231
	return module_4
end
tbl_upvr.new = new
local function Fire(arg1, arg2) -- Line 50
	if arg1.connected then
		arg1.callback(arg2)
	end
end
tbl_upvr.Fire = Fire
function tbl_upvr.Disconnect(arg1) -- Line 56
	arg1.connected = false
end
local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
local function new() -- Line 65
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local module_5 = {}
	setmetatable(module_5, {
		__index = module_2_upvr;
	})
	module_5.connections = {}
	return module_5
end
module_2_upvr.new = new
function module_2_upvr.Connect(arg1, arg2) -- Line 75
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local any_new_result1 = tbl_upvr.new(arg2)
	table.insert(arg1.connections, any_new_result1)
	return any_new_result1
end
function module_2_upvr.Fire(arg1, arg2) -- Line 81
	for _, v in arg1.connections do
		v:Fire(arg2)
	end
end
local module_3_upvr = {}
module_3_upvr.__index = module_3_upvr
function module_3_upvr.new(arg1, arg2, arg3) -- Line 92
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	local module = {}
	setmetatable(module, {
		__index = module_3_upvr;
	})
	module.mockContentProviderProceedWithLoad = false
	module.contentResolved = false
	module.assetFetchStatuses = {}
	module.signals = {}
	module.preloadAsyncCalled = false
	module.isMock = true
	local var13 = arg1
	if not var13 then
		var13 = {}
	end
	module.ultimatelySuccessfulContentIds = var13
	var13 = arg2
	local var14 = var13
	if not var14 then
		var14 = {}
	end
	module.ultimatelyTimedOutContentIds = var14
	var14 = arg3
	local var15 = var14
	if not var15 then
		var15 = {}
	end
	module.ultimatelyFailedContentIds = var15
	return module
end
function module_3_upvr.mockReload(arg1, arg2, arg3) -- Line 114
	arg1.mockContentProviderProceedWithLoad = false
	local var16 = arg3
	if not var16 then
		var16 = Enum.AssetFetchStatus.Success
	end
	arg1:_staggeredProgress(nil, arg2, var16)
end
local Roact_upvr = require(script.Parent.Parent.Parent.Roact)
function module_3_upvr.proceedWithLoad(arg1) -- Line 120
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1.mockContentProviderProceedWithLoad = true
	Roact_upvr.act(function() -- Line 122
		task.wait(0.1)
	end)
end
function module_3_upvr._setAssetFetchStatus(arg1, arg2, arg3) -- Line 127
	arg1.assetFetchStatuses[arg2] = arg3
	if arg1.signals[arg2] then
		arg1.signals[arg2]:Fire(arg3)
	end
end
function module_3_upvr._staggeredProgress(arg1, arg2, arg3, arg4) -- Line 134
	arg1.contentResolved = false
	task.spawn(function() -- Line 137
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: arg3 (readonly)
			[3]: arg2 (readonly)
			[4]: arg4 (readonly)
		]]
		while true do
			if arg1.mockContentProviderProceedWithLoad then
				if not arg1.contentResolved then
					arg1:_setAssetFetchStatus(arg3, Enum.AssetFetchStatus.Loading)
					if arg2 then
						arg2(arg3, Enum.AssetFetchStatus.Loading)
					end
					arg1.contentResolved = true
					arg1.mockContentProviderProceedWithLoad = false
				else
					arg1:_setAssetFetchStatus(arg3, arg4)
					if arg2 then
						arg2(arg3, arg4)
					end
					arg1.mockContentProviderProceedWithLoad = false
					return
				end
			end
			task.wait()
		end
	end)
end
function module_3_upvr._makeMockSignal(arg1) -- Line 161
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	return module_2_upvr.new()
end
function module_3_upvr.GetAssetFetchStatusChangedSignal(arg1, arg2) -- Line 166
	if arg1.signals[arg2] == nil then
		arg1.signals[arg2] = arg1:_makeMockSignal()
	end
	return arg1.signals[arg2]
end
function module_3_upvr.GetAssetFetchStatus(arg1, arg2) -- Line 173
	if arg1.assetFetchStatuses[arg2] ~= nil then
		return arg1.assetFetchStatuses[arg2]
	end
	return Enum.AssetFetchStatus.None
end
function module_3_upvr.PreloadAsync(arg1, arg2, arg3) -- Line 181
	arg1.preloadAsyncCalled = true
	for _, v_2_upvr in ipairs(arg2) do
		if arg1.ultimatelySuccessfulContentIds[v_2_upvr] then
			arg1:_staggeredProgress(arg3, v_2_upvr, Enum.AssetFetchStatus.Success)
		elseif arg1.ultimatelyTimedOutContentIds[v_2_upvr] then
			arg1:_staggeredProgress(arg3, v_2_upvr, Enum.AssetFetchStatus.TimedOut)
		elseif arg1.ultimatelyFailedContentIds[v_2_upvr] then
			arg1:_staggeredProgress(arg3, v_2_upvr, Enum.AssetFetchStatus.Failure)
		else
			task.delay(0, function() -- Line 191
				--[[ Upvalues[3]:
					[1]: arg1 (readonly)
					[2]: v_2_upvr (readonly)
					[3]: arg3 (readonly)
				]]
				arg1:_setAssetFetchStatus(v_2_upvr, Enum.AssetFetchStatus.Success)
				if arg3 then
					arg3(v_2_upvr, Enum.AssetFetchStatus.Success)
				end
			end)
		end
	end
end
return module_3_upvr