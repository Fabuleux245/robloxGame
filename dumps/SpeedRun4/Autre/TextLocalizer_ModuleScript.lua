-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:49:13
-- Luau version 6, Types version 3
-- Time taken: 0.001388 seconds

local Roact_upvr = require(game:GetService("CorePackages").Workspace.Packages.PurchasePromptDeps).Roact
local LocalizationContextConsumer_upvr = require(script.Parent.LocalizationContextConsumer)
local LocalizationService_upvr = require(script.Parent.Parent.Parent.Localization.LocalizationService)
return function(arg1) -- Line 11, Named "TextLocalizer"
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: LocalizationContextConsumer_upvr (readonly)
		[3]: LocalizationService_upvr (readonly)
	]]
	local locKey_upvr = arg1.locKey
	local render_2_upvr = arg1.render
	local var6
	if typeof(locKey_upvr) ~= "string" then
		var6 = false
	else
		var6 = true
	end
	assert(var6, "String prop 'locKey' must be provided")
	if typeof(render_2_upvr) ~= "function" then
		var6 = false
	else
		var6 = true
	end
	assert(var6, "Render prop must be a function")
	var6 = Roact_upvr
	var6 = LocalizationContextConsumer_upvr
	local module = {}
	local params_upvr = arg1.params
	function module.render(arg1_2) -- Line 20
		--[[ Upvalues[4]:
			[1]: render_2_upvr (readonly)
			[2]: LocalizationService_upvr (copied, readonly)
			[3]: locKey_upvr (readonly)
			[4]: params_upvr (readonly)
		]]
		return render_2_upvr(LocalizationService_upvr.getString(arg1_2, locKey_upvr, params_upvr))
	end
	return var6.createElement(var6, module)
end