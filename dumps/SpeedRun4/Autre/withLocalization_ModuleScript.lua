-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:17
-- Luau version 6, Types version 3
-- Time taken: 0.000853 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local t_upvr = InGameMenuDependencies.t
local Roact_upvr = InGameMenuDependencies.Roact
local LocalizationConsumer_upvr = require(script.Parent.LocalizationConsumer)
return function(arg1) -- Line 9, Named "withLocalization"
	--[[ Upvalues[3]:
		[1]: t_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: LocalizationConsumer_upvr (readonly)
	]]
	assert(t_upvr.table(arg1))
	return function(arg1_2) -- Line 12
		--[[ Upvalues[4]:
			[1]: t_upvr (copied, readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: LocalizationConsumer_upvr (copied, readonly)
			[4]: arg1 (readonly)
		]]
		assert(t_upvr.callback(arg1_2))
		local module = {}
		module.render = arg1_2
		module.stringsToBeLocalized = arg1
		return Roact_upvr.createElement(LocalizationConsumer_upvr, module)
	end
end