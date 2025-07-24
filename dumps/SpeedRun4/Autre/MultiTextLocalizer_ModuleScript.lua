-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:49:10
-- Luau version 6, Types version 3
-- Time taken: 0.001099 seconds

local PurchasePromptDeps = require(game:GetService("CorePackages").Workspace.Packages.PurchasePromptDeps)
local t = PurchasePromptDeps.t
local any_strictInterface_result1_upvr = t.strictInterface({
	locKeys = t.table;
	render = t.callback;
})
local any_strictInterface_result1_upvr_2 = t.strictInterface({
	key = t.string;
	params = t.optional(t.table);
})
local Roact_upvr = PurchasePromptDeps.Roact
local LocalizationContextConsumer_upvr = require(script.Parent.LocalizationContextConsumer)
local LocalizationService_upvr = require(script.Parent.Parent.Parent.Localization.LocalizationService)
return function(arg1) -- Line 23, Named "MultiTextLocalizer"
	--[[ Upvalues[5]:
		[1]: any_strictInterface_result1_upvr (readonly)
		[2]: any_strictInterface_result1_upvr_2 (readonly)
		[3]: Roact_upvr (readonly)
		[4]: LocalizationContextConsumer_upvr (readonly)
		[5]: LocalizationService_upvr (readonly)
	]]
	assert(any_strictInterface_result1_upvr(arg1))
	for _, v in pairs(arg1.locKeys) do
		assert(any_strictInterface_result1_upvr_2(v))
	end
	local module = {}
	local render_2_upvr = arg1.render
	function module.render(arg1_2) -- Line 32
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: LocalizationService_upvr (copied, readonly)
			[3]: render_2_upvr (readonly)
		]]
		local module_2 = {}
		for i_2, v_2 in pairs(arg1.locKeys) do
			module_2[i_2] = LocalizationService_upvr.getString(arg1_2, v_2.key, v_2.params)
		end
		return render_2_upvr(module_2)
	end
	return Roact_upvr.createElement(LocalizationContextConsumer_upvr, module)
end