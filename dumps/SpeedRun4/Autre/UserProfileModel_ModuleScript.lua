-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:34:15
-- Luau version 6, Types version 3
-- Time taken: 0.001614 seconds

local createSignal_upvr = require(script:FindFirstAncestor("UserProfiles").Parent.Signals).createSignal
return {
	update = function(arg1, arg2) -- Line 43, Named "update"
		if not arg2 or type(arg2) ~= "table" then
		else
			local names = arg2.names
			if names and type(names) == "table" then
				local username = names.username
				if username and type(username) == "string" then
					arg1.names.setUsername(username)
				end
				local displayName = names.displayName
				if displayName and type(displayName) == "string" then
					arg1.names.setDisplayName(displayName)
				end
				local combinedName = names.combinedName
				if combinedName and type(combinedName) == "string" then
					arg1.names.setCombinedName(combinedName)
				end
				local inExperienceCombinedName = names.inExperienceCombinedName
				if inExperienceCombinedName and type(inExperienceCombinedName) == "string" then
					arg1.names.setInExperienceCombinedName(inExperienceCombinedName)
				end
				local platformName = names.platformName
				if platformName and type(platformName) == "string" then
					arg1.names.setPlatformName(platformName)
				end
				local contactName = names.contactName
				if contactName and type(contactName) == "string" then
					arg1.names.setContactName(contactName)
				end
				local alias = names.alias
				if alias and type(alias) == "string" then
					arg1.names.setAlias(alias)
				end
			end
			local platformProfileId = arg2.platformProfileId
			if platformProfileId and type(platformProfileId) == "string" then
				arg1.setPlatformProfileId(platformProfileId)
			end
		end
	end;
	create = function(arg1) -- Line 86, Named "create"
		--[[ Upvalues[1]:
			[1]: createSignal_upvr (readonly)
		]]
		local var10_result1, createSignal_upvr_result2_6 = createSignal_upvr("")
		local createSignal_upvr_result1, createSignal_upvr_result2_5 = createSignal_upvr("")
		local createSignal_upvr_result1_6, createSignal_upvr_result2_3 = createSignal_upvr("")
		local createSignal_upvr_result1_7, var10_result2_2 = createSignal_upvr("")
		local createSignal_upvr_result1_3, createSignal_upvr_result2_4 = createSignal_upvr("")
		local createSignal_upvr_result1_5, var10_result2 = createSignal_upvr("")
		local createSignal_upvr_result1_4, createSignal_upvr_result2_2 = createSignal_upvr("")
		local createSignal_upvr_result1_2, createSignal_upvr_result2 = createSignal_upvr("")
		local module = {}
		module.userId = arg1
		module.names = {
			getUsername = var10_result1;
			setUsername = createSignal_upvr_result2_6;
			getDisplayName = createSignal_upvr_result1;
			setDisplayName = createSignal_upvr_result2_5;
			getCombinedName = createSignal_upvr_result1_6;
			setCombinedName = createSignal_upvr_result2_3;
			getInExperienceCombinedName = createSignal_upvr_result1_7;
			setInExperienceCombinedName = var10_result2_2;
			getPlatformName = createSignal_upvr_result1_3;
			setPlatformName = createSignal_upvr_result2_4;
			getContactName = createSignal_upvr_result1_5;
			setContactName = var10_result2;
			getAlias = createSignal_upvr_result1_4;
			setAlias = createSignal_upvr_result2_2;
		}
		module.getPlatformProfileId = createSignal_upvr_result1_2
		module.setPlatformProfileId = createSignal_upvr_result2
		return module
	end;
}