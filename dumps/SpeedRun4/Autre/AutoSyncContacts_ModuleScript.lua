-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:24:55
-- Luau version 6, Types version 3
-- Time taken: 0.001190 seconds

local Parent = script.Parent.Parent
local dependencies = require(Parent.dependencies)
local contactImporterSync_upvr = require(Parent.Utils.contactImporterSync)
local Promise_upvr = dependencies.Promise
local formatContacts_upvr = require(Parent.Utils.formatContacts)
local NetworkingContacts_upvr = dependencies.NetworkingContacts
return function(arg1, arg2, arg3, arg4) -- Line 8
	--[[ Upvalues[4]:
		[1]: contactImporterSync_upvr (readonly)
		[2]: Promise_upvr (readonly)
		[3]: formatContacts_upvr (readonly)
		[4]: NetworkingContacts_upvr (readonly)
	]]
	return function(arg1_2) -- Line 9
		--[[ Upvalues[8]:
			[1]: contactImporterSync_upvr (copied, readonly)
			[2]: arg3 (readonly)
			[3]: arg1 (readonly)
			[4]: arg4 (readonly)
			[5]: arg2 (readonly)
			[6]: Promise_upvr (copied, readonly)
			[7]: formatContacts_upvr (copied, readonly)
			[8]: NetworkingContacts_upvr (copied, readonly)
		]]
		local UnixTimestampMillis_upvr = DateTime.now().UnixTimestampMillis
		if arg4 or contactImporterSync_upvr:shouldSyncContacts(arg3, arg1, UnixTimestampMillis_upvr) then
			arg2:supportsContacts():andThen(function(arg1_3) -- Line 15
				--[[ Upvalues[1]:
					[1]: Promise_upvr (copied, readonly)
				]]
				if arg1_3 then
					return Promise_upvr.resolve()
				end
				return Promise_upvr.reject()
			end):andThen(function() -- Line 18
				--[[ Upvalues[1]:
					[1]: arg2 (copied, readonly)
				]]
				return arg2:getContacts()
			end):andThen(function(arg1_4) -- Line 21
				--[[ Upvalues[3]:
					[1]: formatContacts_upvr (copied, readonly)
					[2]: arg1_2 (readonly)
					[3]: NetworkingContacts_upvr (copied, readonly)
				]]
				return arg1_2:dispatch(NetworkingContacts_upvr.UploadContactsByUser.API(formatContacts_upvr(arg1_4)))
			end):andThen(function() -- Line 25
				--[[ Upvalues[4]:
					[1]: contactImporterSync_upvr (copied, readonly)
					[2]: arg3 (copied, readonly)
					[3]: arg1 (copied, readonly)
					[4]: UnixTimestampMillis_upvr (readonly)
				]]
				return contactImporterSync_upvr:updateSyncTimestamp(arg3, arg1, UnixTimestampMillis_upvr)
			end):catch(function() -- Line 28
			end)
		end
	end
end