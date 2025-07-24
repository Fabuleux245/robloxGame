-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:23:08
-- Luau version 6, Types version 3
-- Time taken: 0.001223 seconds

local ChatLineReporting = script:FindFirstAncestor("ChatLineReporting")
local Parent = ChatLineReporting.Parent
local React_upvr = require(Parent.React)
local module = {
	roact = React_upvr;
	reactRoblox = require(Parent.Dev.ReactRoblox);
}
local Dictionary_upvr = require(Parent.Cryo).Dictionary
local MockProviders_upvr = require(script.Parent.MockProviders)
function module.mapStory(arg1) -- Line 14
	--[[ Upvalues[3]:
		[1]: Dictionary_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: MockProviders_upvr (readonly)
	]]
	return function(arg1_2) -- Line 15
		--[[ Upvalues[4]:
			[1]: Dictionary_upvr (copied, readonly)
			[2]: React_upvr (copied, readonly)
			[3]: MockProviders_upvr (copied, readonly)
			[4]: arg1 (readonly)
		]]
		local var8
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var8 = arg1_2.definition.props
			return var8
		end
		if not arg1_2.definition or not INLINED() then
			var8 = {}
		end
		var8 = React_upvr
		var8 = MockProviders_upvr
		return var8.createElement(var8, {}, {
			story = React_upvr.createElement(arg1, Dictionary_upvr.union(arg1_2, var8));
		})
	end
end
module.storyRoots = {ChatLineReporting}
return module