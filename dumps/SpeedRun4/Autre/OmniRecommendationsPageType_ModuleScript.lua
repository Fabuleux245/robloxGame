-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:27:35
-- Luau version 6, Types version 3
-- Time taken: 0.000874 seconds

local AppPage_upvr = require(script:FindFirstAncestor("DiscoveryUtils").Parent.RobloxAppEnums).AppPage
local tbl_upvr = {
	PAGE_TYPE_HOME = "Home";
}
return {
	toAppPage = function(arg1) -- Line 9, Named "toAppPage"
		--[[ Upvalues[2]:
			[1]: tbl_upvr (readonly)
			[2]: AppPage_upvr (readonly)
		]]
		if arg1 == tbl_upvr.PAGE_TYPE_HOME then
			return AppPage_upvr.Home
		end
		return nil
	end;
	fromAppPage = function(arg1) -- Line 16, Named "fromAppPage"
		--[[ Upvalues[2]:
			[1]: AppPage_upvr (readonly)
			[2]: tbl_upvr (readonly)
		]]
		if arg1 == AppPage_upvr.Home then
			return tbl_upvr.PAGE_TYPE_HOME
		end
		return nil
	end;
	OmniRecommendationsPageType = tbl_upvr;
}