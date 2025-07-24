-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:30:45
-- Luau version 6, Types version 3
-- Time taken: 0.001621 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact_upvr = dependencies.Roact
local any_extend_result1 = Roact_upvr.PureComponent:extend("PlayerSearchWrapper")
any_extend_result1.defaultProps = {
	layoutOrder = 1;
	onActivated = nil;
	searchText = "";
}
local FriendsLandingContext_upvr = require(FriendsLanding.FriendsLandingContext)
local withStyle_upvr = dependencies.UIBlox.Style.withStyle
function any_extend_result1.render(arg1) -- Line 18
	--[[ Upvalues[3]:
		[1]: FriendsLandingContext_upvr (readonly)
		[2]: withStyle_upvr (readonly)
		[3]: Roact_upvr (readonly)
	]]
	return FriendsLandingContext_upvr.with(function(arg1_2) -- Line 19
		--[[ Upvalues[3]:
			[1]: withStyle_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: Roact_upvr (copied, readonly)
		]]
		return withStyle_upvr(function(arg1_3) -- Line 20
			--[[ Upvalues[3]:
				[1]: arg1 (copied, readonly)
				[2]: Roact_upvr (copied, readonly)
				[3]: arg1_2 (readonly)
			]]
			return Roact_upvr.createElement("Frame", {
				Size = UDim2.fromScale(1, 1);
				BackgroundColor3 = arg1_3.Theme.BackgroundDefault.Color;
				BackgroundTransparency = 0;
				BorderSizePixel = 0;
			}, {Roact_upvr.createElement(arg1_2.playerSearchPage, {
				searchParameters = {
					searchKeyword = arg1.props.navigation.getParam("searchText", nil) or "";
					isKeywordSuggestionEnabled = true;
				};
				shouldShowUserSearchLandingPage = arg1.props.navigation.getParam("shouldShowUserSearchLandingPage", nil);
			})})
		end)
	end)
end
return any_extend_result1