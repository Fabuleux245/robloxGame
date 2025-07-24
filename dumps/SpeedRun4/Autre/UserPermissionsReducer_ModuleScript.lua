-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:04:07
-- Luau version 6, Types version 3
-- Time taken: 0.000725 seconds

local Parent = script.Parent.Parent
local tbl_upvr = {
	isPhoneVerified = false;
	userSettings = {};
	userSettingsMetadata = {};
}
local isPhoneVerified_upvr = require(Parent.Reducers.isPhoneVerified)
local userSettings_upvr = require(Parent.Reducers.userSettings)
local userSettingsMetadata_upvr = require(Parent.Reducers.userSettingsMetadata)
return function(arg1) -- Line 15
	--[[ Upvalues[4]:
		[1]: tbl_upvr (readonly)
		[2]: isPhoneVerified_upvr (readonly)
		[3]: userSettings_upvr (readonly)
		[4]: userSettingsMetadata_upvr (readonly)
	]]
	return function(arg1_2, arg2) -- Line 16
		--[[ Upvalues[5]:
			[1]: tbl_upvr (copied, readonly)
			[2]: isPhoneVerified_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: userSettings_upvr (copied, readonly)
			[5]: userSettingsMetadata_upvr (copied, readonly)
		]]
		local var8 = arg1_2
		if not var8 then
			var8 = tbl_upvr
		end
		return {
			isPhoneVerified = isPhoneVerified_upvr(arg1)(var8.isPhoneVerified, arg2);
			userSettings = userSettings_upvr(arg1)(var8.userSettings, arg2);
			userSettingsMetadata = userSettingsMetadata_upvr(arg1)(var8.userSettingsMetadata, arg2);
		}
	end
end