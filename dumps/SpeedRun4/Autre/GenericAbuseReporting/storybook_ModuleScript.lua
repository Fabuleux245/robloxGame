-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:35:32
-- Luau version 6, Types version 3
-- Time taken: 0.002056 seconds

local GenericAbuseReporting = script:FindFirstAncestor("GenericAbuseReporting")
local Parent = GenericAbuseReporting.Parent
local React_upvr = require(Parent.React)
local Logger = require(GenericAbuseReporting.Logger)
Logger:addSink({
	maxLevel = Logger.Levels.fromString("trace");
	log = function(arg1, arg2, arg3) -- Line 17, Named "log"
		print(`[{arg3.loggerName}] {arg2}`)
	end;
})
local module = {
	roact = React_upvr;
	reactRoblox = require(Parent.Dev.ReactRoblox);
}
local Dictionary_upvr = require(Parent.Cryo).Dictionary
local MockProviders_upvr = require(script.Parent.MockProviders)
local FoundationProvider_upvr = require(Parent.Foundation).FoundationProvider
function module.mapStory(arg1) -- Line 25
	--[[ Upvalues[4]:
		[1]: Dictionary_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: MockProviders_upvr (readonly)
		[4]: FoundationProvider_upvr (readonly)
	]]
	return function(arg1_2) -- Line 26
		--[[ Upvalues[5]:
			[1]: Dictionary_upvr (copied, readonly)
			[2]: React_upvr (copied, readonly)
			[3]: MockProviders_upvr (copied, readonly)
			[4]: FoundationProvider_upvr (copied, readonly)
			[5]: arg1 (readonly)
		]]
		local var11
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var11 = arg1_2.definition.props
			return var11
		end
		if not arg1_2.definition or not INLINED() then
			var11 = {}
		end
		var11 = React_upvr
		var11 = MockProviders_upvr
		return var11.createElement(var11, {}, {
			FoundationProvider = React_upvr.createElement(FoundationProvider_upvr, {
				theme = "Dark";
				preferences = arg1_2.settings;
				overlayGui = arg1_2.focus;
			}, {
				story = React_upvr.createElement(arg1, Dictionary_upvr.union(arg1_2, var11));
			});
		})
	end
end
module.storyRoots = {GenericAbuseReporting}
return module