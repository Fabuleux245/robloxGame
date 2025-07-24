-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:42:41
-- Luau version 6, Types version 3
-- Time taken: 0.001412 seconds

local isSubjectToDesktopPolicies_upvr = require(script.Parent.Parent.SharedFlags).isSubjectToDesktopPolicies
return function(arg1) -- Line 5, Named "SharePolicies"
	--[[ Upvalues[1]:
		[1]: isSubjectToDesktopPolicies_upvr (readonly)
	]]
	return {
		getAccountProviderName = function() -- Line 7, Named "getAccountProviderName"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.AccountProviderName or ""
		end;
		shouldShowGameDetailsShareButton = function() -- Line 10, Named "shouldShowGameDetailsShareButton"
			--[[ Upvalues[2]:
				[1]: isSubjectToDesktopPolicies_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			if isSubjectToDesktopPolicies_upvr() then
				return false
			end
			return arg1.GameDetailsShareButton or false
		end;
		shouldShowCatalogShareButton = function() -- Line 17, Named "shouldShowCatalogShareButton"
			--[[ Upvalues[2]:
				[1]: isSubjectToDesktopPolicies_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			if isSubjectToDesktopPolicies_upvr() then
				return false
			end
			return arg1.CatalogShareButton or false
		end;
		shouldShareToAccountProvider = function() -- Line 24, Named "shouldShareToAccountProvider"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.ShareToAccountProvider or false
		end;
		shouldInviteFromAccountProvider = function() -- Line 27, Named "shouldInviteFromAccountProvider"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.InviteFromAccountProvider or false
		end;
		getShareToAccountProviderTimeout = function() -- Line 30, Named "getShareToAccountProviderTimeout"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.ShareToAccountProviderTimeout or 5
		end;
	}
end