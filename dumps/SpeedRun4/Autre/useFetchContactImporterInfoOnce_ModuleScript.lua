-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:25:03
-- Luau version 6, Types version 3
-- Time taken: 0.001697 seconds

local Parent = script.Parent.Parent
local dependencies = require(Parent.dependencies)
local useSelector_upvr = dependencies.useSelector
local useDispatch_upvr = dependencies.useDispatch
local FetchContactImporterParams_upvr = require(Parent.Networking.FetchContactImporterParams)
local PermissionsProtocol_upvr = dependencies.PermissionsProtocol
local AppStorageService_upvr = dependencies.AppStorageService
local useContactImporterConfiguration_upvr = require(script.Parent.useContactImporterConfiguration)
local useEffectOnce_upvr = dependencies.useEffectOnce
return function(arg1) -- Line 12
	--[[ Upvalues[7]:
		[1]: useSelector_upvr (readonly)
		[2]: useDispatch_upvr (readonly)
		[3]: FetchContactImporterParams_upvr (readonly)
		[4]: PermissionsProtocol_upvr (readonly)
		[5]: AppStorageService_upvr (readonly)
		[6]: useContactImporterConfiguration_upvr (readonly)
		[7]: useEffectOnce_upvr (readonly)
	]]
	local var4_result1_upvr = useSelector_upvr(function(arg1_4) -- Line 13
		return arg1_4.LocalUserId
	end)
	local useDispatch_upvr_result1_upvr_2 = useDispatch_upvr()
	local shouldFetchContactImporterData = useContactImporterConfiguration_upvr(arg1).shouldFetchContactImporterData
	if shouldFetchContactImporterData then
		shouldFetchContactImporterData = var4_result1_upvr
		if shouldFetchContactImporterData then
			shouldFetchContactImporterData = false
			if var4_result1_upvr ~= "" then
				if var4_result1_upvr == '0' then
					shouldFetchContactImporterData = false
				else
					shouldFetchContactImporterData = true
				end
			end
		end
	end
	useEffectOnce_upvr(function() -- Line 19
		--[[ Upvalues[5]:
			[1]: useDispatch_upvr_result1_upvr_2 (readonly)
			[2]: FetchContactImporterParams_upvr (copied, readonly)
			[3]: var4_result1_upvr (readonly)
			[4]: PermissionsProtocol_upvr (copied, readonly)
			[5]: AppStorageService_upvr (copied, readonly)
		]]
		useDispatch_upvr_result1_upvr_2(FetchContactImporterParams_upvr(var4_result1_upvr, PermissionsProtocol_upvr.default, AppStorageService_upvr))
	end, shouldFetchContactImporterData)
end