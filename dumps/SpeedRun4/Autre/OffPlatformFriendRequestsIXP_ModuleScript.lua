-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:24:50
-- Luau version 6, Types version 3
-- Time taken: 0.004340 seconds

game:DefineFastInt("OffPlatformFriendRequestsRolloutEnabled", 0)
local ContactImporter = script:FindFirstAncestor("ContactImporter")
local dependencies = require(ContactImporter.dependencies)
local getFStringSocialFriendsLayer_upvr = dependencies.getFStringSocialFriendsLayer
local useUserExperiment_upvr = dependencies.useUserExperiment
local IXPVariants_upvr = require(ContactImporter.Common.IXPVariants)
local var6_upvr = require(script.Parent.getFStringOffPlatformIXPName)()
local function _(arg1) -- Line 21
	--[[ Upvalues[1]:
		[1]: var6_upvr (readonly)
	]]
	local var9
	if arg1 then
		var9 = arg1[var6_upvr]
	end
	return var9
end
local function var10_upvr(arg1) -- Line 30
	--[[ Upvalues[2]:
		[1]: getFStringSocialFriendsLayer_upvr (readonly)
		[2]: var6_upvr (readonly)
	]]
	if arg1 then
		local _ = arg1[getFStringSocialFriendsLayer_upvr()]
	else
	end
	if nil then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	end
	return nil[var6_upvr]
end
local var13_upvr = require(script.Parent.getFStringShowFindFriendsBannerIXPName)()
local function var12_upvr(arg1) -- Line 34
	--[[ Upvalues[2]:
		[1]: getFStringSocialFriendsLayer_upvr (readonly)
		[2]: var13_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var14
	if arg1 then
		var14 = arg1[getFStringSocialFriendsLayer_upvr()]
	else
		var14 = nil
	end
	if var14 then
	end
	return var14[var13_upvr]
end
local any_setupIsRolloutEnabledForUser_result1_upvr = dependencies.SocialLibraries.ReleaseHelpers.setupIsRolloutEnabledForUser(function() -- Line 17
	return game:GetFastInt("OffPlatformFriendRequestsRolloutEnabled")
end)
local function var16_upvr(arg1) -- Line 46
	--[[ Upvalues[4]:
		[1]: getFStringSocialFriendsLayer_upvr (readonly)
		[2]: var6_upvr (readonly)
		[3]: IXPVariants_upvr (readonly)
		[4]: any_setupIsRolloutEnabledForUser_result1_upvr (readonly)
	]]
	if arg1 then
		local _ = arg1[getFStringSocialFriendsLayer_upvr()]
	else
	end
	if nil then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	end
	local var18 = nil[var6_upvr]
	local var19 = false
	if var18 then
		local var20 = true
		if var18 ~= IXPVariants_upvr.INVITES_ONLY then
			if var18 ~= IXPVariants_upvr.BLENDED then
				var20 = false
			else
				var20 = true
			end
		end
		var19 = var20
	end
	if not var19 then
	end
	return any_setupIsRolloutEnabledForUser_result1_upvr()
end
return {
	experimentOrRolloutEnabled = var16_upvr;
	IXPVariants = IXPVariants_upvr;
	useOffPlatformFriendRequestsVariant = function() -- Line 57
		--[[ Upvalues[3]:
			[1]: useUserExperiment_upvr (readonly)
			[2]: getFStringSocialFriendsLayer_upvr (readonly)
			[3]: var10_upvr (readonly)
		]]
		return useUserExperiment_upvr({getFStringSocialFriendsLayer_upvr()}, var10_upvr)
	end;
	useOffPlatformFriendRequestsEnabled = function() -- Line 63
		--[[ Upvalues[3]:
			[1]: useUserExperiment_upvr (readonly)
			[2]: getFStringSocialFriendsLayer_upvr (readonly)
			[3]: var16_upvr (readonly)
		]]
		return useUserExperiment_upvr({getFStringSocialFriendsLayer_upvr()}, var16_upvr)
	end;
	useFindFriendsBannerVariant = function() -- Line 69
		--[[ Upvalues[3]:
			[1]: useUserExperiment_upvr (readonly)
			[2]: getFStringSocialFriendsLayer_upvr (readonly)
			[3]: var12_upvr (readonly)
		]]
		return useUserExperiment_upvr({getFStringSocialFriendsLayer_upvr()}, var12_upvr)
	end;
	getExperimentVariant = var10_upvr;
	isRolloutEnabled = function(arg1) -- Line 83, Named "isRolloutEnabled"
		--[[ Upvalues[4]:
			[1]: getFStringSocialFriendsLayer_upvr (readonly)
			[2]: var6_upvr (readonly)
			[3]: IXPVariants_upvr (readonly)
			[4]: any_setupIsRolloutEnabledForUser_result1_upvr (readonly)
		]]
		if arg1 then
			local _ = arg1[getFStringSocialFriendsLayer_upvr()]
		else
		end
		if nil then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		end
		local var29 = nil[var6_upvr]
		local var30 = false
		if var29 then
			local var31 = true
			if var29 ~= IXPVariants_upvr.INVITES_ONLY then
				if var29 ~= IXPVariants_upvr.BLENDED then
					var31 = false
				else
					var31 = true
				end
			end
			var30 = var31
		end
		if not var30 then
		end
		if any_setupIsRolloutEnabledForUser_result1_upvr() then
			return IXPVariants_upvr.BLENDED
		end
		return IXPVariants_upvr.CONTROL
	end;
}