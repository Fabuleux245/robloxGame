-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:17:44
-- Luau version 6, Types version 3
-- Time taken: 0.000986 seconds

local Parent_2 = script.Parent.Parent.Parent
local Parent = Parent_2.Parent
local React_upvr = require(Parent.React)
local CreateLayoutValues_upvr = require(Parent_2.Common.CreateLayoutValues)
local SignalsReact_upvr = require(Parent.SignalsReact)
local LeaderboardStoreContext_upvr = require(Parent_2.Common.LeaderboardStoreContext)
local LayoutValuesContext_upvr = require(Parent_2.Common.LayoutValuesContext)
return React_upvr.memo(function(arg1) -- Line 21
	--[[ Upvalues[5]:
		[1]: CreateLayoutValues_upvr (readonly)
		[2]: SignalsReact_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: LeaderboardStoreContext_upvr (readonly)
		[5]: LayoutValuesContext_upvr (readonly)
	]]
	return React_upvr.createElement(LeaderboardStoreContext_upvr.Provider, {
		value = SignalsReact_upvr.useSignalState(arg1.leaderboardStore);
	}, React_upvr.createElement(LayoutValuesContext_upvr.Provider, {
		value = CreateLayoutValues_upvr(arg1.isTenFoot or false, arg1.TopBarConstants);
	}, arg1.children))
end)