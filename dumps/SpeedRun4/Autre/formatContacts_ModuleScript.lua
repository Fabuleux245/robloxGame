-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:25:00
-- Luau version 6, Types version 3
-- Time taken: 0.001506 seconds

local ContactImporter = script:FindFirstAncestor("ContactImporter")
local getFIntContactImporterUploadContactsMax_upvr = require(ContactImporter.Flags.getFIntContactImporterUploadContactsMax)
local getFIntContactImporterUploadContactsMin_upvr = require(ContactImporter.Flags.getFIntContactImporterUploadContactsMin)
local DeviceContact_upvr = require(ContactImporter.dependencies).RoduxContacts.Models.DeviceContact
local Constants_upvr = require(ContactImporter.Common.Constants)
return function(arg1) -- Line 11
	--[[ Upvalues[4]:
		[1]: getFIntContactImporterUploadContactsMax_upvr (readonly)
		[2]: getFIntContactImporterUploadContactsMin_upvr (readonly)
		[3]: DeviceContact_upvr (readonly)
		[4]: Constants_upvr (readonly)
	]]
	local tbl_2 = {}
	local var4_result1 = getFIntContactImporterUploadContactsMin_upvr()
	for _, v in pairs(arg1.contacts) do
		for _, v_2 in pairs(v.phonenumber) do
			if getFIntContactImporterUploadContactsMax_upvr() <= #tbl_2 then break end
			local tbl_3 = {
				idAssignedByFE = DeviceContact_upvr.generateId(v);
			}
			local tbl_5 = {}
			local tbl_4 = {}
			local LAST_NAME = Constants_upvr.LAST_NAME
			tbl_4.name = LAST_NAME
			if v.lastname == nil then
				LAST_NAME = ""
			else
				LAST_NAME = tostring(v.lastname)
			end
			tbl_4.value = LAST_NAME
			local tbl = {}
			local FIRST_NAME = Constants_upvr.FIRST_NAME
			tbl.name = FIRST_NAME
			if v.firstname == nil then
				FIRST_NAME = ""
			else
				FIRST_NAME = tostring(v.firstname)
			end
			tbl.value = FIRST_NAME
			tbl_5[1] = tbl_4
			tbl_5[2] = tbl
			tbl_5[3] = {
				name = Constants_upvr.PHONE_NUMBER;
				value = tostring(v_2):gsub("%s+", "");
			}
			tbl_3.fields = tbl_5
			table.insert(tbl_2, tbl_3)
		end
	end
	local len = #tbl_2
	if var4_result1 <= len then
		return {
			countryCode = arg1.countryCode;
			contacts = tbl_2;
			contactsCount = len;
		}
	end
	if len < var4_result1 then
		return {
			countryCode = arg1.countryCode;
			contacts = {};
			contactsCount = len;
		}
	end
	return {
		countryCode = arg1.countryCode;
		contacts = tbl_2;
		contactsCount = len;
	}
end