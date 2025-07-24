-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:42:46
-- Luau version 6, Types version 3
-- Time taken: 0.000858 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
require(CorePackages.Packages.UIBlox).init(require(CorePackages.Workspace.Packages.RobloxAppUIBloxConfig))
Roact_upvr.setGlobalConfig({
	elementTracing = true;
	propValidation = true;
})
return {
	roact = Roact_upvr;
	mapStory = function(arg1) -- Line 14, Named "mapStory"
		--[[ Upvalues[1]:
			[1]: Roact_upvr (readonly)
		]]
		return function(arg1_2) -- Line 15
			--[[ Upvalues[2]:
				[1]: Roact_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			return Roact_upvr.createElement(arg1, arg1_2)
		end
	end;
}