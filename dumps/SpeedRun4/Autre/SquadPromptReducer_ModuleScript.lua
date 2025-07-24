-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:31:19
-- Luau version 6, Types version 3
-- Time taken: 0.001009 seconds

local SquadsCore = script:FindFirstAncestor("SquadsCore")
local Parent = SquadsCore.Parent
local module = {}
local Cryo_upvr = require(Parent.Cryo)
module[require(SquadsCore.Actions.SetSquadPrompt).name] = function(arg1, arg2) -- Line 13
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	local module_2 = {}
	local arguments = arg2.arguments
	if not arguments then
		arguments = {}
	end
	module_2.arguments = arguments
	return Cryo_upvr.Dictionary.join(arg1, module_2)
end
module[require(SquadsCore.Actions.CloseSquadPrompt).name] = function(arg1, arg2) -- Line 18
	return {
		arguments = {};
	}
end
return require(Parent.Rodux).createReducer({
	arguments = {};
}, module)