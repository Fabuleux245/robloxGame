-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:52
-- Luau version 6, Types version 3
-- Time taken: 0.000554 seconds

local AppChat = script:FindFirstAncestor("AppChat")
return require(AppChat.Parent.RoactNavigation).createRobloxSwitchNavigator({{
	[require(AppChat.EnumScreens).EmptyConversation] = {
		screen = require(AppChat.Components.ChatConversation.EmptyConversationScreen);
		navigationOptions = {
			headerText = {
				raw = "testing";
				shouldLocalize = false;
			};
			backButtonEnabled = false;
			isRoot = true;
			tabBarVisible = true;
		};
	};
}, {
	ConversationStackNavigator = require(script.Parent.ConversationStackNavigatorConnector);
}})