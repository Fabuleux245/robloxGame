-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:29:20
-- Luau version 6, Types version 3
-- Time taken: 0.004573 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local Parent = FriendsLanding.Parent
local dependencies = require(FriendsLanding.AddFriends.dependencies)
local TextKeys_upvr = require(FriendsLanding.Common.TextKeys)
local t = dependencies.t
local Roact_upvr = dependencies.Roact
local UIBlox = dependencies.UIBlox
local EmptyState_upvr = UIBlox.App.Indicator.EmptyState
local Colors_upvr = UIBlox.App.Style.Colors
local udim2_upvr = UDim2.new(0, 255, 0, 170)
if require(Parent.SharedFlags).FFlagFriendsRenameSocgraph then
	local FFlagFriendsRenameSocgraphEnabledForAll_upvr = require(Parent.SharedFlags).FFlagFriendsRenameSocgraphEnabledForAll
	local useAppPolicy_upvr = require(Parent.UniversalAppPolicy).useAppPolicy
	local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
	local React_upvr = require(Parent.React)
	return function(arg1) -- Line 31, Named "AddFriendsEmptyState"
		--[[ Upvalues[8]:
			[1]: FFlagFriendsRenameSocgraphEnabledForAll_upvr (readonly)
			[2]: useAppPolicy_upvr (readonly)
			[3]: useLocalization_upvr (readonly)
			[4]: TextKeys_upvr (readonly)
			[5]: React_upvr (readonly)
			[6]: EmptyState_upvr (readonly)
			[7]: Colors_upvr (readonly)
			[8]: udim2_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var15
		if var15 then
			var15 = useAppPolicy_upvr
			var15 = var15(function(arg1_2) -- Line 33
				return arg1_2.getRenameFriendsToConnections()
			end)
		end
		local tbl = {
			noRequestsText = "Feature.AddFriends.Label.NoRequests";
		}
		if arg1.showNewAddFriendsPageVariant then
			if var15 or FFlagFriendsRenameSocgraphEnabledForAll_upvr then
			else
			end
		else
		end
		tbl.emptyStatePromptText = nil
		if arg1.showNewAddFriendsPageVariant then
			if var15 or FFlagFriendsRenameSocgraphEnabledForAll_upvr then
			else
			end
		else
		end
		tbl.titleText = nil
		local var13_result1 = useLocalization_upvr(tbl)
		if arg1.showNewAddFriendsPageVariant then
			return React_upvr.createElement(EmptyState_upvr, {
				iconColor = Colors_upvr.White;
				icon = "rbxassetid://12261497919";
				iconSize = udim2_upvr;
				titleProps = {
					titleText = var13_result1.titleText;
				};
				text = var13_result1.emptyStatePromptText;
				maxSizeTextLabel = arg1.screenSize;
				position = UDim2.new(0.5, 0, 0, 170);
			})
		end
		return React_upvr.createElement(EmptyState_upvr, {
			text = var13_result1.noRequestsText;
			size = UDim2.fromScale(1, 1);
		})
	end
end
local any_extend_result1 = Roact_upvr.PureComponent:extend("AddFriendsEmptyState")
any_extend_result1.validateProps = t.strictInterface({
	screenSize = t.optional(t.Vector2);
	showNewAddFriendsPageVariant = t.optional(t.boolean);
})
local withLocalization_upvr = dependencies.withLocalization
function any_extend_result1.render(arg1) -- Line 85
	--[[ Upvalues[6]:
		[1]: withLocalization_upvr (readonly)
		[2]: TextKeys_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: EmptyState_upvr (readonly)
		[5]: Colors_upvr (readonly)
		[6]: udim2_upvr (readonly)
	]]
	local module = {}
	local var26 = "Feature.AddFriends.Label.NoRequests"
	module.noRequestsText = var26
	if arg1.props.showNewAddFriendsPageVariant then
		var26 = TextKeys_upvr.ADD_FRIENDS_EMPTY_STATE_PROMPT_TEXT
	else
		var26 = nil
	end
	module.emptyStatePromptText = var26
	if arg1.props.showNewAddFriendsPageVariant then
		var26 = TextKeys_upvr.ADD_FRIENDS_TOOLTIP_TITLE
	else
		var26 = nil
	end
	module.titleText = var26
	return withLocalization_upvr(module)(function(arg1_3) -- Line 92
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: EmptyState_upvr (copied, readonly)
			[4]: Colors_upvr (copied, readonly)
			[5]: udim2_upvr (copied, readonly)
		]]
		if arg1.props.showNewAddFriendsPageVariant then
			return Roact_upvr.createElement(EmptyState_upvr, {
				iconColor = Colors_upvr.White;
				icon = "rbxassetid://12261497919";
				iconSize = udim2_upvr;
				titleProps = {
					titleText = arg1_3.titleText;
				};
				text = arg1_3.emptyStatePromptText;
				maxSizeTextLabel = arg1.props.screenSize;
				position = UDim2.new(0.5, 0, 0, 170);
			})
		end
		return Roact_upvr.createElement(EmptyState_upvr, {
			text = arg1_3.noRequestsText;
			size = UDim2.fromScale(1, 1);
		})
	end)
end
return any_extend_result1