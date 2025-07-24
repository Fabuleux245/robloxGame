-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:16
-- Luau version 6, Types version 3
-- Time taken: 0.001767 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
require(Parent.UIBlox).init(require(Parent.Dev.RobloxAppUIBloxConfig))
local Roact_upvr = require(Parent.Roact)
local Logger = require(Parent.Loggers).Logger
Logger:addSink({
	maxLevel = Logger.Levels.fromString("trace");
	log = function(arg1, arg2, arg3) -- Line 23, Named "log"
		print(arg2)
	end;
})
require(AppChat.Logger):setParent(Logger)
local module = {
	roact = Roact_upvr;
}
local MockProviders_upvr = require(AppChat.Components.MockProviders)
local Cryo_upvr = require(Parent.Cryo)
function module.mapStory(arg1) -- Line 32
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: MockProviders_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	return function(arg1_2) -- Line 33
		--[[ Upvalues[4]:
			[1]: Roact_upvr (copied, readonly)
			[2]: MockProviders_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: Cryo_upvr (copied, readonly)
		]]
		if not arg1_2 or not arg1_2.definition or not arg1_2.definition.props then
			local tbl = {}
		end
		return Roact_upvr.createElement(MockProviders_upvr, {
			rodux = tbl.rodux;
		}, {
			story = Roact_upvr.createElement(arg1, Cryo_upvr.Dictionary.union(tbl, arg1_2));
		})
	end
end
return module