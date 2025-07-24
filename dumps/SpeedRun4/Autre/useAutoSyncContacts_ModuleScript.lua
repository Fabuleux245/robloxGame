-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:25:02
-- Luau version 6, Types version 3
-- Time taken: 0.000815 seconds

local Parent = script.Parent.Parent
local dependencies = require(Parent.dependencies)
local useDispatch_upvr = dependencies.useDispatch
local useSelector_upvr = dependencies.useSelector
local getContactImporterParams_upvr = require(Parent.Utils.getContactImporterParams)
local AutoSyncContacts_upvr = require(Parent.Networking.AutoSyncContacts)
local ContactsProtocol_upvr = require(Parent.Parent.ContactsProtocol).ContactsProtocol
local AppStorageService_upvr = game:GetService("AppStorageService")
local useEffectOnce_upvr = dependencies.useEffectOnce
return function(arg1) -- Line 21
	--[[ Upvalues[7]:
		[1]: useDispatch_upvr (readonly)
		[2]: useSelector_upvr (readonly)
		[3]: getContactImporterParams_upvr (readonly)
		[4]: AutoSyncContacts_upvr (readonly)
		[5]: ContactsProtocol_upvr (readonly)
		[6]: AppStorageService_upvr (readonly)
		[7]: useEffectOnce_upvr (readonly)
	]]
	local canUploadContacts = useSelector_upvr(getContactImporterParams_upvr).canUploadContacts
	if arg1 then
		canUploadContacts = arg1
	else
		local useDispatch_upvr_result1_upvr = useDispatch_upvr()
		local var5_result1_upvr = useSelector_upvr(function(arg1_2) -- Line 23
			return arg1_2.LocalUserId
		end)
		function canUploadContacts() -- Line 33
			--[[ Upvalues[5]:
				[1]: useDispatch_upvr_result1_upvr (readonly)
				[2]: AutoSyncContacts_upvr (copied, readonly)
				[3]: var5_result1_upvr (readonly)
				[4]: ContactsProtocol_upvr (copied, readonly)
				[5]: AppStorageService_upvr (copied, readonly)
			]]
			useDispatch_upvr_result1_upvr(AutoSyncContacts_upvr(var5_result1_upvr, ContactsProtocol_upvr.default, AppStorageService_upvr))
		end
	end
	useEffectOnce_upvr(canUploadContacts, canUploadContacts or false)
end