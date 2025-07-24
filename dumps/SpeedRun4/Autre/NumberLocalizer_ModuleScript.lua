-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:49:11
-- Luau version 6, Types version 3
-- Time taken: 0.000876 seconds

local Roact_upvr = require(game:GetService("CorePackages").Workspace.Packages.PurchasePromptDeps).Roact
local LocalizationContextConsumer_upvr = require(script.Parent.LocalizationContextConsumer)
local LocalizationService_upvr = require(script.Parent.Parent.Parent.Localization.LocalizationService)
return function(arg1) -- Line 11, Named "NumberLocalizer"
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: LocalizationContextConsumer_upvr (readonly)
		[3]: LocalizationService_upvr (readonly)
	]]
	local number_upvr = arg1.number
	local render_upvr = arg1.render
	local var6
	if typeof(number_upvr) ~= "number" then
		var6 = false
	else
		var6 = true
	end
	assert(var6, "prop 'number' must be provided")
	if typeof(render_upvr) ~= "function" then
		var6 = false
	else
		var6 = true
	end
	assert(var6, "Render prop must be a function")
	var6 = Roact_upvr
	var6 = LocalizationContextConsumer_upvr
	return var6.createElement(var6, {
		render = function(arg1_2) -- Line 19, Named "render"
			--[[ Upvalues[3]:
				[1]: render_upvr (readonly)
				[2]: LocalizationService_upvr (copied, readonly)
				[3]: number_upvr (readonly)
			]]
			return render_upvr(LocalizationService_upvr.formatNumber(arg1_2, number_upvr))
		end;
	})
end