-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:48:02
-- Luau version 6, Types version 3
-- Time taken: 0.000763 seconds

local CorePackages = game:GetService("CorePackages")
local React_upvr = require(CorePackages.Packages.React)
local useLeaderboardStore_upvr = require(CorePackages.Workspace.Packages.PlayerList).Hooks.useLeaderboardStore
local SignalsReact_upvr = require(CorePackages.Packages.SignalsReact)
local TitleBarView_upvr = require(script.Parent.Parent.Parent.Components.PresentationCommon.TitleBarView)
return React_upvr.memo(function(arg1) -- Line 38, Named "TitleBarContainer"
	--[[ Upvalues[4]:
		[1]: useLeaderboardStore_upvr (readonly)
		[2]: SignalsReact_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: TitleBarView_upvr (readonly)
	]]
	local any_getGameStatsList_result1 = useLeaderboardStore_upvr().getGameStatsList()
	return React_upvr.createElement(TitleBarView_upvr, {
		gameStats = any_getGameStatsList_result1;
		gameStatsCount = SignalsReact_upvr.useSignalState(any_getGameStatsList_result1.getCount);
		size = arg1.size;
		entrySizeX = arg1.entrySizeX;
		layoutOrder = arg1.layoutOrder;
		contentsVisible = arg1.contentsVisible;
		isSmallTouchDevice = arg1.isSmallTouchDevice;
		showDivider = arg1.showDivider;
		showBackground = arg1.showBackground;
		backgroundTransparency = arg1.backgroundTransparency;
		useCustomTextColor = arg1.useCustomTextColor;
		customTextColor = arg1.customTextColor;
		headerPaddingLeft = arg1.headerPaddingLeft;
	})
end)