-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:43
-- Luau version 6, Types version 3
-- Time taken: 0.001296 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
require(CorePackages.Packages.UIBlox).init(require(CorePackages.Workspace.Packages.RobloxAppUIBloxConfig))
Roact_upvr.setGlobalConfig({
	elementTracing = true;
	propValidation = true;
})
local module = {
	roact = Roact_upvr;
}
local RoactRodux_upvr = require(CorePackages.Packages.RoactRodux)
local StoryStore_upvr = require(script.Parent.Helpers.StoryStore)
local Cryo_upvr = require(CorePackages.Packages.Cryo)
local ChatSettings_upvr = require(script.Parent.ChatSettings)
function module.mapStory(arg1) -- Line 19
	--[[ Upvalues[5]:
		[1]: Roact_upvr (readonly)
		[2]: RoactRodux_upvr (readonly)
		[3]: StoryStore_upvr (readonly)
		[4]: Cryo_upvr (readonly)
		[5]: ChatSettings_upvr (readonly)
	]]
	return function(arg1_2) -- Line 20
		--[[ Upvalues[6]:
			[1]: Roact_upvr (copied, readonly)
			[2]: RoactRodux_upvr (copied, readonly)
			[3]: StoryStore_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: Cryo_upvr (copied, readonly)
			[6]: ChatSettings_upvr (copied, readonly)
		]]
		return Roact_upvr.createElement(RoactRodux_upvr.StoreProvider, {
			store = StoryStore_upvr;
		}, {
			Story = Roact_upvr.createElement(arg1, Cryo_upvr.Dictionary.join(arg1_2, {
				chatSettings = ChatSettings_upvr;
			}));
		})
	end
end
return module