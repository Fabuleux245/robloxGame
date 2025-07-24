-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:26:35
-- Luau version 6, Types version 3
-- Time taken: 0.001259 seconds

local dependencies = require(script.Parent.Parent.dependencies)
local EventNames = require(script.Parent.Enums.EventNames)
local Dash = dependencies.Dash
local Enums = dependencies.SocialLuaAnalytics.Analytics.Enums
local Contexts = Enums.Contexts
local EventTypes = Enums.EventTypes
local BtnValues = require(script.Parent.Enums.BtnValues)
return {
	[EventNames.DiscoverabilityModalLoad] = {
		context = Contexts.ContactImport;
		eventType = EventTypes.DiscoverabilityModalLoad;
		formatRulesForAdditionalInfo = {
			version = Dash.identity;
			wordingVersion = Dash.identity;
		};
	};
	[EventNames.DiscoverabilityModalContinue] = {
		context = Contexts.ContactImport;
		eventType = EventTypes.DiscoverabilityModalClick;
		additionalInfo = {
			btn = BtnValues.ContactImporter;
		};
		formatRulesForAdditionalInfo = {
			selected = Dash.identity;
		};
	};
	[EventNames.DiscoverabilityModalClose] = {
		context = Contexts.ContactImport;
		eventType = EventTypes.DiscoverabilityModalClick;
		additionalInfo = {
			btn = BtnValues.Close;
		};
		formatRulesForAdditionalInfo = {
			selected = Dash.identity;
		};
	};
	[EventNames.DiscoverabilityModalRadioButtonClick] = {
		context = Contexts.ContactImport;
		eventType = EventTypes.DiscoverabilityModalRadioButtonClick;
		formatRulesForAdditionalInfo = {
			selected = Dash.identity;
		};
	};
}