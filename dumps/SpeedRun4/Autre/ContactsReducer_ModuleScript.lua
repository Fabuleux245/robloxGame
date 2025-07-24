-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:25:40
-- Luau version 6, Types version 3
-- Time taken: 0.001351 seconds

local Parent = script.Parent.Parent
local tbl_upvr = {
	byContactId = {};
	byDeviceContactId = {};
	hasSentRequest = {};
	deviceContactToRobloxContact = {};
}
local byContactId_upvr = require(Parent.Reducers.Contacts.byContactId)
local byDeviceContactId_upvr = require(Parent.Reducers.Contacts.byDeviceContactId)
local hasSentRequest_upvr = require(Parent.Reducers.Contacts.hasSentRequest)
local deviceContactToRobloxContact_upvr = require(Parent.Reducers.Contacts.deviceContactToRobloxContact)
return function(arg1) -- Line 16
	--[[ Upvalues[5]:
		[1]: byContactId_upvr (readonly)
		[2]: byDeviceContactId_upvr (readonly)
		[3]: hasSentRequest_upvr (readonly)
		[4]: deviceContactToRobloxContact_upvr (readonly)
		[5]: tbl_upvr (readonly)
	]]
	local byContactId_upvr_result1_upvr = byContactId_upvr(arg1)
	local var5_result1_upvr = byDeviceContactId_upvr(arg1)
	local hasSentRequest_upvr_result1_upvr = hasSentRequest_upvr(arg1)
	local deviceContactToRobloxContact_upvr_result1_upvr = deviceContactToRobloxContact_upvr(arg1)
	return function(arg1_2, arg2) -- Line 22
		--[[ Upvalues[5]:
			[1]: tbl_upvr (copied, readonly)
			[2]: byContactId_upvr_result1_upvr (readonly)
			[3]: var5_result1_upvr (readonly)
			[4]: hasSentRequest_upvr_result1_upvr (readonly)
			[5]: deviceContactToRobloxContact_upvr_result1_upvr (readonly)
		]]
		local var13 = arg1_2
		if not var13 then
			var13 = tbl_upvr
		end
		return {
			byContactId = byContactId_upvr_result1_upvr(var13.byContactId, arg2);
			byDeviceContactId = var5_result1_upvr(var13.byDeviceContactId, arg2);
			hasSentRequest = hasSentRequest_upvr_result1_upvr(var13.hasSentRequest, arg2);
			deviceContactToRobloxContact = deviceContactToRobloxContact_upvr_result1_upvr(var13.deviceContactToRobloxContact, arg2);
		}
	end
end