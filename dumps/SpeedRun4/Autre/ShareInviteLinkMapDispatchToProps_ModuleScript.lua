-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:33
-- Luau version 6, Types version 3
-- Time taken: 0.000502 seconds

local ReducerDependencies = require(game:GetService("CorePackages").Workspace.Packages.NotificationsCommon).ReducerDependencies
local ShareLinksNetworking_upvr = ReducerDependencies.ShareLinksNetworking
local ShareLinksRodux_upvr = ReducerDependencies.ShareLinksRodux
return function(arg1) -- Line 7
	--[[ Upvalues[2]:
		[1]: ShareLinksNetworking_upvr (readonly)
		[2]: ShareLinksRodux_upvr (readonly)
	]]
	return {
		fetchShareInviteLink = function() -- Line 9, Named "fetchShareInviteLink"
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: ShareLinksNetworking_upvr (copied, readonly)
				[3]: ShareLinksRodux_upvr (copied, readonly)
			]]
			arg1(ShareLinksNetworking_upvr.GenerateLink.API({
				linkType = ShareLinksRodux_upvr.Enums.LinkType.ExperienceInvite.rawValue();
			}))
		end;
	}
end