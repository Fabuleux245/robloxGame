-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:51
-- Luau version 6, Types version 3
-- Time taken: 0.002157 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local Cryo_upvr = require(Parent.Cryo)
local React_upvr = require(Parent.React)
local conversationStackNavigator = require(script.Parent.conversationStackNavigator)
local tbl_2_upvr = {
	configureTopBar = require(AppChat.configureTopBarWithNavigationOptions);
	createNewNavigator = conversationStackNavigator;
}
local memoize_upvr = require(Parent.AppCommonLib).memoize
local useStyle_upvr = require(Parent.UIBlox).Core.Style.useStyle
function ConversationStackNavigatorConnector(arg1) -- Line 30
	--[[ Upvalues[5]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: memoize_upvr (readonly)
		[4]: useStyle_upvr (readonly)
		[5]: React_upvr (readonly)
	]]
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_2_upvr, arg1)
	return React_upvr.createElement(React_upvr.Fragment, nil, {
		layout = React_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
		topBar = any_join_result1_upvr.configureTopBar(any_join_result1_upvr.navigation);
		navigatorFrame = React_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, -any_join_result1_upvr.navigation.getScreenProps("topBarHeight", 0));
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
		}, {
			navigator = React_upvr.createElement(memoize_upvr(function(arg1_2) -- Line 33
				--[[ Upvalues[1]:
					[1]: any_join_result1_upvr (readonly)
				]]
				local tbl = {}
				tbl.cardColor3 = arg1_2
				tbl.transparent = true
				local any_createNewNavigator_result1 = any_join_result1_upvr.createNewNavigator(tbl)
				any_join_result1_upvr.setRouter(any_createNewNavigator_result1.router)
				return any_createNewNavigator_result1
			end)(useStyle_upvr().Theme.BackgroundDefault.Color), any_join_result1_upvr);
		});
	})
end
local any_extend_result1_upvr = React_upvr.PureComponent:extend("ConversationStackNavigatorConnectorWrapper")
any_extend_result1_upvr.router = conversationStackNavigator().router
function any_extend_result1_upvr.render(arg1) -- Line 64
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: any_extend_result1_upvr (readonly)
	]]
	return React_upvr.createElement(ConversationStackNavigatorConnector, Cryo_upvr.Dictionary.join(arg1.props, {
		setRouter = function(arg1_3) -- Line 68, Named "setRouter"
			--[[ Upvalues[1]:
				[1]: any_extend_result1_upvr (copied, readonly)
			]]
			any_extend_result1_upvr.router = arg1_3
		end;
	}))
end
return any_extend_result1_upvr