-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:43:45
-- Luau version 6, Types version 3
-- Time taken: 0.002399 seconds

local Squads = script:FindFirstAncestor("Squads")
local Parent = Squads.Parent
local UIBlox = require(Parent.UIBlox)
UIBlox.init(require(Parent.Dev.RobloxAppUIBloxConfig))
local dependencies = require(Squads.dependencies)
local Roact_upvr = dependencies.Roact
Roact_upvr.setGlobalConfig({
	propValidation = true;
	elementTracing = true;
})
local tbl_upvr_2 = {
	Default = {
		themeName = "Light";
		fontName = "Gotham";
	};
	Light = {
		themeName = "Light";
		fontName = "Gotham";
	};
	Dark = {
		themeName = "Dark";
		fontName = "Gotham";
	};
}
local tbl_upvr = {
	language = "en-us";
}
local module = {
	name = "Squads";
	storyRoot = Squads;
	roact = Roact_upvr;
}
local Cryo_upvr = dependencies.Cryo
function module.mapDefinition(arg1) -- Line 46
	--[[ Upvalues[2]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	local controls = arg1.controls
	if not controls then
		controls = {}
	end
	return Cryo_upvr.Dictionary.join(arg1, {
		controls = Cryo_upvr.Dictionary.join(tbl_upvr, controls);
	})
end
local Foundation_upvr = dependencies.Foundation
local AppStyleProvider_upvr = UIBlox.App.Style.AppStyleProvider
local mockLocale_upvr = require(Parent.Dev.SocialTestHelpers).StoryHelpers.mockLocale
function module.mapStory(arg1) -- Line 50
	--[[ Upvalues[5]:
		[1]: tbl_upvr_2 (readonly)
		[2]: Roact_upvr (readonly)
		[3]: Foundation_upvr (readonly)
		[4]: AppStyleProvider_upvr (readonly)
		[5]: mockLocale_upvr (readonly)
	]]
	return function(arg1_2) -- Line 51
		--[[ Upvalues[6]:
			[1]: tbl_upvr_2 (copied, readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: Foundation_upvr (copied, readonly)
			[4]: AppStyleProvider_upvr (copied, readonly)
			[5]: mockLocale_upvr (copied, readonly)
			[6]: arg1 (readonly)
		]]
		if not arg1_2 or not tbl_upvr_2[arg1_2.theme] then
			local Default = tbl_upvr_2.Default
		end
		return Roact_upvr.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.XY;
			BackgroundTransparency = 1;
		}, {Roact_upvr.createElement(Foundation_upvr.FoundationProvider, {
			device = "Desktop";
			theme = Default.themeName;
		}, {Roact_upvr.createElement(AppStyleProvider_upvr, {
			style = Default;
		}, {
			Child = mockLocale_upvr(arg1, arg1_2);
		})})})
	end
end
return module