-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:30:27
-- Luau version 6, Types version 3
-- Time taken: 0.001721 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact_upvr = dependencies.Roact
local any_new_result1 = dependencies.Lumberyak.Logger.new()
any_new_result1:addSink({
	maxLevel = any_new_result1.Levels.fromString("info");
	log = function(arg1, arg2, arg3) -- Line 25, Named "log"
		print(arg2)
	end;
})
require(FriendsLanding.Logger):setParent(any_new_result1)
local tbl_upvr = {
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
local tbl_upvr_2 = {
	language = "en-us";
}
local module = {}
local llama_upvr = dependencies.llama
function module.mapDefinition(arg1) -- Line 52
	--[[ Upvalues[2]:
		[1]: llama_upvr (readonly)
		[2]: tbl_upvr_2 (readonly)
	]]
	local controls = arg1.controls
	if not controls then
		controls = {}
	end
	return llama_upvr.Dictionary.join(arg1, {
		controls = llama_upvr.Dictionary.join(tbl_upvr_2, controls);
	})
end
module.roact = Roact_upvr
local AppStyleProvider_upvr = dependencies.UIBlox.App.Style.AppStyleProvider
local UniversalAppPolicy_upvr = dependencies.UniversalAppPolicy
local mockLocale_upvr = require(FriendsLanding.Parent.Dev.SocialTestHelpers).StoryHelpers.mockLocale
function module.mapStory(arg1) -- Line 57
	--[[ Upvalues[5]:
		[1]: Roact_upvr (readonly)
		[2]: AppStyleProvider_upvr (readonly)
		[3]: tbl_upvr (readonly)
		[4]: UniversalAppPolicy_upvr (readonly)
		[5]: mockLocale_upvr (readonly)
	]]
	return function(arg1_2) -- Line 58
		--[[ Upvalues[6]:
			[1]: Roact_upvr (copied, readonly)
			[2]: AppStyleProvider_upvr (copied, readonly)
			[3]: tbl_upvr (copied, readonly)
			[4]: UniversalAppPolicy_upvr (copied, readonly)
			[5]: mockLocale_upvr (copied, readonly)
			[6]: arg1 (readonly)
		]]
		local module_2 = {}
		local var20
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var20 = tbl_upvr[arg1_2.theme]
			return var20
		end
		if not arg1_2 or not INLINED() then
			var20 = tbl_upvr.Default
		end
		module_2.style = var20
		var20 = {}
		var20[1] = Roact_upvr.createElement(UniversalAppPolicy_upvr.Provider, {
			policy = {function() -- Line 64
				--[[ Upvalues[1]:
					[1]: arg1_2 (readonly)
				]]
				return {
					getShowDisplayName = function() -- Line 66, Named "getShowDisplayName"
						--[[ Upvalues[1]:
							[1]: arg1_2 (copied, readonly)
						]]
						return arg1_2.controls.getShowDisplayName
					end;
				}
			end};
		}, {
			Child = mockLocale_upvr(arg1, arg1_2);
		})
		return Roact_upvr.createElement(AppStyleProvider_upvr, module_2, var20)
	end
end
return module