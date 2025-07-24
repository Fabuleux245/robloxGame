-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:50:34
-- Luau version 6, Types version 3
-- Time taken: 0.001237 seconds

local PurchasePromptDeps = require(game:GetService("CorePackages").Workspace.Packages.PurchasePromptDeps)
local module = {}
local Cryo_upvr = PurchasePromptDeps.Cryo
module[require(script.Parent.Parent.Actions.SetABVariation).name] = function(arg1, arg2) -- Line 11
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	local var5
	if type(arg2.key) ~= "string" then
		var5 = false
	else
		var5 = true
	end
	assert(var5, "Expected 'key' to be a string")
	if type(arg2.variation) ~= "string" then
		var5 = false
	else
		var5 = true
	end
	assert(var5, "Expected 'variation' to be a string")
	var5 = Cryo_upvr.Dictionary
	var5 = arg1
	return var5.join(var5, {
		[arg2.key] = arg2.variation;
	})
end
return PurchasePromptDeps.Rodux.createReducer({}, module)