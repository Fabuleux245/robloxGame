-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:29:27
-- Luau version 6, Types version 3
-- Time taken: 0.001698 seconds

local Parent = script:FindFirstAncestor("FriendsLanding").Parent
local FFlagFriendsRenameSocgraph_upvr = require(Parent.SharedFlags).FFlagFriendsRenameSocgraph
local FFlagFriendsRenameSocgraphEnabledForAll_upvr = require(Parent.SharedFlags).FFlagFriendsRenameSocgraphEnabledForAll
local useAppPolicy_upvr = require(Parent.UniversalAppPolicy).useAppPolicy
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local useNavigation_upvr = require(Parent.Navigation).useNavigation
local React_upvr = require(Parent.React)
local AppHeaderBar_upvr = require(Parent.AppHeaderBar)
local HeaderBar_upvr = require(Parent.UIBlox).App.Bar.HeaderBar
return function(arg1) -- Line 23, Named "AddFriendsPageHeader"
	--[[ Upvalues[8]:
		[1]: FFlagFriendsRenameSocgraph_upvr (readonly)
		[2]: FFlagFriendsRenameSocgraphEnabledForAll_upvr (readonly)
		[3]: useAppPolicy_upvr (readonly)
		[4]: useLocalization_upvr (readonly)
		[5]: useNavigation_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: AppHeaderBar_upvr (readonly)
		[8]: HeaderBar_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local topBarHeight = arg1.topBarHeight
	local var11
	if FFlagFriendsRenameSocgraph_upvr and not FFlagFriendsRenameSocgraphEnabledForAll_upvr then
		var11 = useAppPolicy_upvr
		var11 = var11(function(arg1_2) -- Line 27
			return arg1_2.getRenameFriendsToConnections()
		end)
	else
		var11 = nil
	end
	local tbl = {}
	if FFlagFriendsRenameSocgraph_upvr and var11 or FFlagFriendsRenameSocgraphEnabledForAll_upvr then
	else
	end
	tbl.titleText = "Feature.Chat.Label.AddFriends"
	local useNavigation_upvr_result1_upvr = useNavigation_upvr()
	return React_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 0, topBarHeight);
		LayoutOrder = -1;
		ZIndex = 2;
	}, {
		headerBar = React_upvr.createElement(HeaderBar_upvr, {
			title = useLocalization_upvr(tbl).titleText;
			barHeight = topBarHeight;
			renderLeft = React_upvr.useMemo(function() -- Line 40
				--[[ Upvalues[2]:
					[1]: AppHeaderBar_upvr (copied, readonly)
					[2]: useNavigation_upvr_result1_upvr (readonly)
				]]
				return AppHeaderBar_upvr.makeBackButton(function() -- Line 41
					--[[ Upvalues[1]:
						[1]: useNavigation_upvr_result1_upvr (copied, readonly)
					]]
					useNavigation_upvr_result1_upvr.pop()
				end)
			end, {useNavigation_upvr_result1_upvr});
			isSecondary = true;
			paddingTop = UDim.new(0, 0);
			paddingBottom = UDim.new(0, 0);
		});
	})
end