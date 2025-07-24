-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:24:29
-- Luau version 6, Types version 3
-- Time taken: 0.003345 seconds

local ContactImporter = script:FindFirstAncestor("ContactImporter")
local dependencies = require(ContactImporter.dependencies)
local Promise_upvr = dependencies.Promise
local function _(arg1) -- Line 20
	--[[ Upvalues[1]:
		[1]: Promise_upvr (readonly)
	]]
	return function(arg1_2) -- Line 21
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Promise_upvr (copied, readonly)
		]]
		return arg1.smsProtocol:supportsSMS():andThen(function(arg1_3) -- Line 22
			--[[ Upvalues[3]:
				[1]: arg1 (copied, readonly)
				[2]: arg1_2 (readonly)
				[3]: Promise_upvr (copied, readonly)
			]]
			if arg1_3 then
				local module_2 = {
					address = arg1.address;
				}
				module_2.message = arg1_2
				return arg1.smsProtocol:sendSMS(module_2)
			end
			return Promise_upvr.reject()
		end)
	end
end
local useDispatch_upvr = dependencies.useDispatch
local React_upvr = dependencies.React
local useAnalytics_upvr = require(ContactImporter.Analytics.useAnalytics)
local EventNames_upvr = require(ContactImporter.Analytics.Enums.EventNames)
local useLocalization_upvr = dependencies.useLocalization
local TextKeys_upvr = require(ContactImporter.Common.TextKeys)
local ShareLinksNetworking_upvr = dependencies.ShareLinksNetworking
local ShareLinksRodux_upvr = dependencies.ShareLinksRodux
local RoduxContacts_upvr = dependencies.RoduxContacts
return function(arg1) -- Line 32
	--[[ Upvalues[10]:
		[1]: useDispatch_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: useAnalytics_upvr (readonly)
		[4]: EventNames_upvr (readonly)
		[5]: useLocalization_upvr (readonly)
		[6]: TextKeys_upvr (readonly)
		[7]: ShareLinksNetworking_upvr (readonly)
		[8]: ShareLinksRodux_upvr (readonly)
		[9]: Promise_upvr (readonly)
		[10]: RoduxContacts_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(false)
	local function var20_upvr() -- Line 35
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr (readonly)
		]]
		any_useState_result2_upvr(false)
	end
	local var21_upvw
	local useAnalytics_upvr_result1_upvr = useAnalytics_upvr()
	local function var22_upvr() -- Line 41
		--[[ Upvalues[4]:
			[1]: useAnalytics_upvr_result1_upvr (readonly)
			[2]: EventNames_upvr (copied, readonly)
			[3]: var21_upvw (read and write)
			[4]: any_useState_result2_upvr (readonly)
		]]
		useAnalytics_upvr_result1_upvr.fireAnalyticsEvent(EventNames_upvr.InviteContact, {
			offNetworkFriendRequestLinkId = var21_upvw;
		})
		any_useState_result2_upvr(false)
	end
	local function _(arg1_4) -- Line 51
		--[[ Upvalues[1]:
			[1]: var21_upvw (read and write)
		]]
		return function(arg1_5) -- Line 52
			--[[ Upvalues[2]:
				[1]: var21_upvw (copied, read and write)
				[2]: arg1_4 (readonly)
			]]
			var21_upvw = arg1_5.responseBody.linkId
			return arg1_5.responseBody.shortUrl.."\n\n"..arg1_4.rootMessage
		end
	end
	local module_3 = {}
	local var9_result1_upvr = useDispatch_upvr()
	local useLocalization_upvr_result1_upvr = useLocalization_upvr({
		rootMessage = TextKeys_upvr.SMS_DEFAULT_MESSAGE;
	})
	function module_3.sendInvite() -- Line 61
		--[[ Upvalues[11]:
			[1]: any_useState_result2_upvr (readonly)
			[2]: var9_result1_upvr (readonly)
			[3]: ShareLinksNetworking_upvr (copied, readonly)
			[4]: ShareLinksRodux_upvr (copied, readonly)
			[5]: useLocalization_upvr_result1_upvr (readonly)
			[6]: var21_upvw (read and write)
			[7]: arg1 (readonly)
			[8]: Promise_upvr (copied, readonly)
			[9]: RoduxContacts_upvr (copied, readonly)
			[10]: var22_upvr (readonly)
			[11]: var20_upvr (readonly)
		]]
		any_useState_result2_upvr(true)
		return var9_result1_upvr(ShareLinksNetworking_upvr.GenerateLink.API({
			linkType = ShareLinksRodux_upvr.Enums.LinkType.FriendInvite.rawValue();
		})):andThen(function(arg1_6) -- Line 52
			--[[ Upvalues[2]:
				[1]: var21_upvw (copied, read and write)
				[2]: useLocalization_upvr_result1_upvr (readonly)
			]]
			var21_upvw = arg1_6.responseBody.linkId
			return arg1_6.responseBody.shortUrl.."\n\n"..useLocalization_upvr_result1_upvr.rootMessage
		end):andThen(function(arg1_7) -- Line 21
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: Promise_upvr (copied, readonly)
			]]
			return arg1.smsProtocol:supportsSMS():andThen(function(arg1_8) -- Line 22
				--[[ Upvalues[3]:
					[1]: arg1 (copied, readonly)
					[2]: arg1_7 (readonly)
					[3]: Promise_upvr (copied, readonly)
				]]
				if arg1_8 then
					local module = {
						address = arg1.address;
					}
					module.message = arg1_7
					return arg1.smsProtocol:sendSMS(module)
				end
				return Promise_upvr.reject()
			end)
		end):andThen(var9_result1_upvr(RoduxContacts_upvr.Actions.RequestSent({
			id = arg1.deviceContactId;
		}))):andThen(var22_upvr):catch(var20_upvr)
	end
	module_3.isLoading = any_useState_result1
	return module_3
end