-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:30:00
-- Luau version 6, Types version 3
-- Time taken: 0.001671 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact_upvr = dependencies.Roact
local any_extend_result1 = Roact_upvr.PureComponent:extend("FriendsLandingHeaderBar")
local GetFFlagUIBloxUseNewHeaderBar_upvr = require(FriendsLanding.Parent.SharedFlags).UIBlox.GetFFlagUIBloxUseNewHeaderBar
local AppHeaderBar_upvr = dependencies.AppHeaderBar
local HeaderBar_upvr = dependencies.UIBlox.App.Bar.HeaderBar
local Actions_upvr = dependencies.RoactNavigation.Actions
function any_extend_result1.init(arg1) -- Line 21
	--[[ Upvalues[4]:
		[1]: GetFFlagUIBloxUseNewHeaderBar_upvr (readonly)
		[2]: AppHeaderBar_upvr (readonly)
		[3]: HeaderBar_upvr (readonly)
		[4]: Actions_upvr (readonly)
	]]
	function arg1.renderLeft(arg1_2, arg2, arg3) -- Line 22
		--[[ Upvalues[4]:
			[1]: GetFFlagUIBloxUseNewHeaderBar_upvr (copied, readonly)
			[2]: AppHeaderBar_upvr (copied, readonly)
			[3]: HeaderBar_upvr (copied, readonly)
			[4]: Actions_upvr (copied, readonly)
		]]
		local var10
		if GetFFlagUIBloxUseNewHeaderBar_upvr() then
			var10 = AppHeaderBar_upvr.makeBackButton
		else
			var10 = HeaderBar_upvr.renderLeft.backButton
		end
		return var10(function() -- Line 27
			--[[ Upvalues[2]:
				[1]: arg1_2 (readonly)
				[2]: Actions_upvr (copied, readonly)
			]]
			arg1_2.dispatch(Actions_upvr.back())
		end)
	end
end
local FriendsLandingContext_upvr = require(FriendsLanding.FriendsLandingContext)
local getActiveChildNavigationOptionsSafely_upvr = require(FriendsLanding.Navigator.getActiveChildNavigationOptionsSafely)
local withLocalization_upvr = dependencies.withLocalization
local FriendsLandingHeaderBarPresentational_upvr = require(script.FriendsLandingHeaderBarPresentational)
function any_extend_result1.render(arg1) -- Line 34
	--[[ Upvalues[5]:
		[1]: FriendsLandingContext_upvr (readonly)
		[2]: getActiveChildNavigationOptionsSafely_upvr (readonly)
		[3]: withLocalization_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: FriendsLandingHeaderBarPresentational_upvr (readonly)
	]]
	return FriendsLandingContext_upvr.with(function(arg1_3) -- Line 35
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: getActiveChildNavigationOptionsSafely_upvr (copied, readonly)
			[3]: withLocalization_upvr (copied, readonly)
			[4]: Roact_upvr (copied, readonly)
			[5]: FriendsLandingHeaderBarPresentational_upvr (copied, readonly)
		]]
		local navigation_upvr = arg1.props.navigation
		local getActiveChildNavigationOptionsSafely_upvr_result1_upvr = getActiveChildNavigationOptionsSafely_upvr(navigation_upvr)
		return withLocalization_upvr({
			titleText = getActiveChildNavigationOptionsSafely_upvr_result1_upvr.headerText.raw;
		})(function(arg1_4) -- Line 41
			--[[ Upvalues[6]:
				[1]: arg1_3 (readonly)
				[2]: Roact_upvr (copied, readonly)
				[3]: FriendsLandingHeaderBarPresentational_upvr (copied, readonly)
				[4]: getActiveChildNavigationOptionsSafely_upvr_result1_upvr (readonly)
				[5]: arg1 (copied, readonly)
				[6]: navigation_upvr (readonly)
			]]
			local titleText = arg1_4.titleText
			if arg1_3.addFriendsPageSearchbarEnabled then
				local module = {
					title = titleText;
				}
				local renderLeft_3 = getActiveChildNavigationOptionsSafely_upvr_result1_upvr.renderLeft
				if not renderLeft_3 then
					renderLeft_3 = arg1.renderLeft(navigation_upvr)
				end
				module.renderLeft = renderLeft_3
				module.renderCenter = getActiveChildNavigationOptionsSafely_upvr_result1_upvr.renderCenter
				module.renderRight = getActiveChildNavigationOptionsSafely_upvr_result1_upvr.renderRight
				module.isSecondary = getActiveChildNavigationOptionsSafely_upvr_result1_upvr.useSecondaryHeader
				return Roact_upvr.createElement(FriendsLandingHeaderBarPresentational_upvr, module)
			end
			local module_2 = {
				title = titleText;
			}
			local renderLeft_2 = getActiveChildNavigationOptionsSafely_upvr_result1_upvr.renderLeft
			if not renderLeft_2 then
				renderLeft_2 = arg1.renderLeft(navigation_upvr)
			end
			module_2.renderLeft = renderLeft_2
			module_2.renderCenter = getActiveChildNavigationOptionsSafely_upvr_result1_upvr.renderCenter
			module_2.renderRight = getActiveChildNavigationOptionsSafely_upvr_result1_upvr.renderRight
			return Roact_upvr.createElement(FriendsLandingHeaderBarPresentational_upvr, module_2)
		end)
	end)
end
return any_extend_result1