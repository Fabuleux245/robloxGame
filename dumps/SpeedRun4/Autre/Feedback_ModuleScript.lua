-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:59:28
-- Luau version 6, Types version 3
-- Time taken: 0.001889 seconds

local CorePackages = game:GetService("CorePackages")
local module = {}
local GlobalConfig_upvr = require(script.GlobalConfig)
local Roact_upvr = require(CorePackages.Packages.Roact)
local Rodux_upvr = require(CorePackages.Packages.Rodux)
local Reducers_upvr = require(script.Reducers)
local RoactRodux_upvr = require(CorePackages.Packages.RoactRodux)
local LocalizationProvider_upvr = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider
local Localization_upvr = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local LocalizationService_upvr = game:GetService("LocalizationService")
local FeedbackApp_upvr = require(script.Components.FeedbackApp)
local CoreGui_upvr = game:GetService("CoreGui")
function module.initialize() -- Line 23
	--[[ Upvalues[10]:
		[1]: GlobalConfig_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: Rodux_upvr (readonly)
		[4]: Reducers_upvr (readonly)
		[5]: RoactRodux_upvr (readonly)
		[6]: LocalizationProvider_upvr (readonly)
		[7]: Localization_upvr (readonly)
		[8]: LocalizationService_upvr (readonly)
		[9]: FeedbackApp_upvr (readonly)
		[10]: CoreGui_upvr (readonly)
	]]
	if GlobalConfig_upvr.propValidation then
		Roact_upvr.setGlobalConfig({
			propValidation = true;
		})
	end
	if GlobalConfig_upvr.elementTracing then
		Roact_upvr.setGlobalConfig({
			elementTracing = true;
		})
	end
	local tbl = {Rodux_upvr.thunkMiddleware}
	if GlobalConfig_upvr.logStore then
		table.insert(tbl, Rodux_upvr.loggerMiddleware)
	end
	Roact_upvr.mount(Roact_upvr.createElement(RoactRodux_upvr.StoreProvider, {
		store = Rodux_upvr.Store.new(Reducers_upvr, nil, tbl);
	}, {
		LocalizationProvider = Roact_upvr.createElement(LocalizationProvider_upvr, {
			localization = Localization_upvr.new(LocalizationService_upvr.RobloxLocaleId);
		}, {
			Feedback = Roact_upvr.createElement(FeedbackApp_upvr);
		});
	}), CoreGui_upvr, "Feedback")
end
return module