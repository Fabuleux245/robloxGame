-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:20:35
-- Luau version 6, Types version 3
-- Time taken: 0.001060 seconds

local SettingReactView = script:FindFirstAncestor("SettingReactView")
local Parent = SettingReactView.Parent
local React_upvr = require(Parent.React)
local Foundation = require(Parent.Foundation)
local tbl_upvr_2 = {
	Default = Foundation.Enums.Theme.Dark;
	Light = Foundation.Enums.Theme.Light;
	Dark = Foundation.Enums.Theme.Dark;
}
local tbl_upvr = {
	Default = "Desktop";
	Desktop = "Desktop";
	Console = "Console";
}
local FoundationProvider_upvr = Foundation.FoundationProvider
return {
	name = SettingReactView.Name;
	storyRoot = SettingReactView;
	roact = React_upvr;
	reactRoblox = require(Parent.ReactRoblox);
	mapStory = function(arg1) -- Line 26, Named "StoryBookMapStory"
		--[[ Upvalues[4]:
			[1]: React_upvr (readonly)
			[2]: FoundationProvider_upvr (readonly)
			[3]: tbl_upvr_2 (readonly)
			[4]: tbl_upvr (readonly)
		]]
		return function(arg1_2) -- Line 27
			--[[ Upvalues[5]:
				[1]: React_upvr (copied, readonly)
				[2]: FoundationProvider_upvr (copied, readonly)
				[3]: tbl_upvr_2 (copied, readonly)
				[4]: tbl_upvr (copied, readonly)
				[5]: arg1 (readonly)
			]]
			local module = {}
			local var10
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var10 = tbl_upvr_2[arg1_2.theme]
				return var10
			end
			if not arg1_2 or not INLINED() then
				var10 = tbl_upvr_2.Default
			end
			module.theme = var10
			local function INLINED_2() -- Internal function, doesn't exist in bytecode
				var10 = tbl_upvr[arg1_2.platform]
				return var10
			end
			if not arg1_2 or not INLINED_2() then
				var10 = tbl_upvr.Default
			end
			module.device = var10
			var10 = React_upvr.createElement(arg1, arg1_2)
			return React_upvr.createElement(FoundationProvider_upvr, module, var10)
		end
	end;
}