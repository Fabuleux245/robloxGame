-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:12
-- Luau version 6, Types version 3
-- Time taken: 0.001854 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local Contexts = require(AppChat.Contexts)
local SquadsCore = require(Parent.SquadsCore)
local React_upvr = require(Parent.React)
local ParentContainerProvider_upvr = Contexts.ParentContainer.ParentContainerProvider
local UnreadMessagesProvider_upvr = Contexts.UnreadMessagesProvider
local RoactRodux_upvr = require(Parent.RoactRodux)
local getFFlagAppChatMoveApolloProvider_upvr = require(AppChat.Flags.getFFlagAppChatMoveApolloProvider)
local ApolloProvider_upvr = require(Parent.ApolloClient).ApolloProvider
local GetFFlagLuaAppEnableSquadPage_upvr = require(Parent.SharedFlags).GetFFlagLuaAppEnableSquadPage
local SquadExternalContractProvider_upvr = SquadsCore.SquadExternalContractProvider.SquadExternalContractProvider
local InExperienceSquadContract_upvr = require(AppChat.Contracts).SquadContract.InExperienceSquadContract
local SquadLocationEnum_upvr = SquadsCore.Enums.SquadLocationEnum
local LocalizationProvider_upvr = require(Parent.Localization).LocalizationProvider
local Localization_upvr = require(Parent.RobloxAppLocales).Localization
local LocalizationService_upvr = game:GetService("LocalizationService")
local ProviderContainer_upvr = require(Parent.RoactUtils).Components.ProviderContainer
return function(arg1) -- Line 44
	--[[ Upvalues[14]:
		[1]: React_upvr (readonly)
		[2]: ParentContainerProvider_upvr (readonly)
		[3]: UnreadMessagesProvider_upvr (readonly)
		[4]: RoactRodux_upvr (readonly)
		[5]: getFFlagAppChatMoveApolloProvider_upvr (readonly)
		[6]: ApolloProvider_upvr (readonly)
		[7]: GetFFlagLuaAppEnableSquadPage_upvr (readonly)
		[8]: SquadExternalContractProvider_upvr (readonly)
		[9]: InExperienceSquadContract_upvr (readonly)
		[10]: SquadLocationEnum_upvr (readonly)
		[11]: LocalizationProvider_upvr (readonly)
		[12]: Localization_upvr (readonly)
		[13]: LocalizationService_upvr (readonly)
		[14]: ProviderContainer_upvr (readonly)
	]]
	return React_upvr.createElement(ProviderContainer_upvr, {
		providers = React_upvr.useMemo(function() -- Line 45
			--[[ Upvalues[13]:
				[1]: ParentContainerProvider_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: UnreadMessagesProvider_upvr (copied, readonly)
				[4]: RoactRodux_upvr (copied, readonly)
				[5]: getFFlagAppChatMoveApolloProvider_upvr (copied, readonly)
				[6]: ApolloProvider_upvr (copied, readonly)
				[7]: GetFFlagLuaAppEnableSquadPage_upvr (copied, readonly)
				[8]: SquadExternalContractProvider_upvr (copied, readonly)
				[9]: InExperienceSquadContract_upvr (copied, readonly)
				[10]: SquadLocationEnum_upvr (copied, readonly)
				[11]: LocalizationProvider_upvr (copied, readonly)
				[12]: Localization_upvr (copied, readonly)
				[13]: LocalizationService_upvr (copied, readonly)
			]]
			local module = {}
			table.insert(module, {
				class = ParentContainerProvider_upvr;
				props = arg1.parentContainerContext;
			})
			table.insert(module, {
				class = UnreadMessagesProvider_upvr;
				props = {
					dispatch = arg1.updateAppChatUnreadMessagesCount;
				};
			})
			table.insert(module, {
				class = RoactRodux_upvr.StoreProvider;
				props = {
					store = arg1.store;
				};
			})
			if getFFlagAppChatMoveApolloProvider_upvr() then
				table.insert(module, {
					class = ApolloProvider_upvr;
					props = {
						client = arg1.apolloClient;
					};
				})
			end
			if GetFFlagLuaAppEnableSquadPage_upvr() then
				table.insert(module, {
					class = SquadExternalContractProvider_upvr;
					props = {
						contract = InExperienceSquadContract_upvr;
						squadLocation = SquadLocationEnum_upvr.InExperience;
					};
				})
			end
			table.insert(module, {
				class = LocalizationProvider_upvr;
				props = {
					localization = Localization_upvr.new(LocalizationService_upvr.RobloxLocaleId);
				};
			})
			return module
		end, {});
	}, arg1.children)
end