-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:16:03
-- Luau version 6, Types version 3
-- Time taken: 0.001257 seconds

local PeopleReactView = script:FindFirstAncestor("PeopleReactView")
local Parent = PeopleReactView.Parent
local Foundation_upvr = require(Parent.Foundation)
local React_upvr = require(Parent.React)
local tbl_upvr = {
	Default = "Desktop";
	Desktop = "Desktop";
	Console = "Console";
}
local FoundationProvider_upvr = Foundation_upvr.FoundationProvider
return {
	name = PeopleReactView.Name;
	storyRoot = PeopleReactView;
	roact = React_upvr;
	reactRoblox = require(Parent.ReactRoblox);
	mapStory = function(arg1) -- Line 21, Named "StoryBookMapStory"
		--[[ Upvalues[4]:
			[1]: React_upvr (readonly)
			[2]: FoundationProvider_upvr (readonly)
			[3]: Foundation_upvr (readonly)
			[4]: tbl_upvr (readonly)
		]]
		return function(arg1_2) -- Line 22
			--[[ Upvalues[5]:
				[1]: React_upvr (copied, readonly)
				[2]: FoundationProvider_upvr (copied, readonly)
				[3]: Foundation_upvr (copied, readonly)
				[4]: tbl_upvr (copied, readonly)
				[5]: arg1 (readonly)
			]]
			local module = {
				theme = Foundation_upvr.Enums.Theme.Dark;
			}
			local var9
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var9 = tbl_upvr[arg1_2.platform]
				return var9
			end
			if not arg1_2 or not INLINED() then
				var9 = tbl_upvr.Default
			end
			module.device = var9
			var9 = React_upvr.createElement(arg1, arg1_2)
			return React_upvr.createElement(FoundationProvider_upvr, module, var9)
		end
	end;
}