-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:19:17
-- Luau version 6, Types version 3
-- Time taken: 0.000774 seconds

local Parent = script:FindFirstAncestor("AppStartup").Parent
local useNavigation_upvr = require(Parent.Navigation).useNavigation
local React_upvr = require(Parent.React)
local ThirdPartyUserService_upvr = game:GetService("ThirdPartyUserService")
local AppPage_upvr = require(Parent.RobloxAppEnums).AppPage
local navigateWithPlatformAccount_upvr = require(script.Parent.Parent.navigateWithPlatformAccount)
local getAppFeaturePolicies_upvr = require(Parent.UniversalAppPolicy).getAppFeaturePolicies
return function(arg1) -- Line 13
	--[[ Upvalues[6]:
		[1]: useNavigation_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: ThirdPartyUserService_upvr (readonly)
		[4]: AppPage_upvr (readonly)
		[5]: navigateWithPlatformAccount_upvr (readonly)
		[6]: getAppFeaturePolicies_upvr (readonly)
	]]
	local useNavigation_upvr_result1_upvr = useNavigation_upvr()
	React_upvr.useEffect(function() -- Line 16
		--[[ Upvalues[5]:
			[1]: useNavigation_upvr_result1_upvr (readonly)
			[2]: ThirdPartyUserService_upvr (copied, readonly)
			[3]: AppPage_upvr (copied, readonly)
			[4]: navigateWithPlatformAccount_upvr (copied, readonly)
			[5]: getAppFeaturePolicies_upvr (copied, readonly)
		]]
		if useNavigation_upvr_result1_upvr then
			if ThirdPartyUserService_upvr and not ThirdPartyUserService_upvr:HaveActiveUser() then
				useNavigation_upvr_result1_upvr.replace(AppPage_upvr.EngagementScreenContainer)
				return
			end
			navigateWithPlatformAccount_upvr(getAppFeaturePolicies_upvr().getUseSingleSignOn(), useNavigation_upvr_result1_upvr.replace)
		end
	end, {useNavigation_upvr_result1_upvr})
	return nil
end