-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:34
-- Luau version 6, Types version 3
-- Time taken: 0.001257 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local LocalizationProvider_upvr = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider
local Localization_upvr = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local LocalizationService_upvr = game:GetService("LocalizationService")
local renderWithCoreScriptsStyleProvider_upvr = require(script.Parent.Parent.Parent.Common.renderWithCoreScriptsStyleProvider)
return function(arg1) -- Line 10
	--[[ Upvalues[5]:
		[1]: Roact_upvr (readonly)
		[2]: LocalizationProvider_upvr (readonly)
		[3]: Localization_upvr (readonly)
		[4]: LocalizationService_upvr (readonly)
		[5]: renderWithCoreScriptsStyleProvider_upvr (readonly)
	]]
	return Roact_upvr.createElement(LocalizationProvider_upvr, {
		localization = Localization_upvr.new(LocalizationService_upvr.RobloxLocaleId);
	}, {
		FTUXMock = Roact_upvr.createElement("ScreenGui", {}, {
			ThemeProvider = renderWithCoreScriptsStyleProvider_upvr({
				Frame = Roact_upvr.createElement("Frame", {
					Size = UDim2.new(1, 0, 1, 0);
				}, arg1);
			});
		});
	})
end