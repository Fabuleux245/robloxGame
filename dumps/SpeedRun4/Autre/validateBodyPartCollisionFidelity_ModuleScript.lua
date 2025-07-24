-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:58
-- Luau version 6, Types version 3
-- Time taken: 0.001026 seconds

local Parent = script.Parent.Parent
local game_DefineFastString_result1_upvr = game:DefineFastString("UGCValidationBodyPartCollisionFidelity", "Default")
local getEngineFeatureRemoveProxyWrap_upvr = require(Parent.flags.getEngineFeatureRemoveProxyWrap)
local checkForProxyWrap_upvr = require(Parent.util.checkForProxyWrap)
local Analytics_upvr = require(Parent.Analytics)
return function(arg1, arg2) -- Line 13, Named "validateBodyPartCollisionFidelity"
	--[[ Upvalues[4]:
		[1]: game_DefineFastString_result1_upvr (readonly)
		[2]: getEngineFeatureRemoveProxyWrap_upvr (readonly)
		[3]: checkForProxyWrap_upvr (readonly)
		[4]: Analytics_upvr (readonly)
	]]
	local descendants = arg1:GetDescendants()
	table.insert(descendants, 1, arg1)
	local Default_upvw = Enum.CollisionFidelity.Default
	pcall(function() -- Line 22
		--[[ Upvalues[2]:
			[1]: Default_upvw (read and write)
			[2]: game_DefineFastString_result1_upvr (copied, readonly)
		]]
		Default_upvw = Enum.CollisionFidelity[game_DefineFastString_result1_upvr]
	end)
	local module = {}
	for _, v in descendants do
		if getEngineFeatureRemoveProxyWrap_upvr() or not arg2.allowEditableInstances or not checkForProxyWrap_upvr(v) then
			if v:IsA("MeshPart") and v.CollisionFidelity ~= Default_upvw then
				table.insert(module, `Expected {v:GetFullName()}.CollisionFidelity to be {Default_upvw.Name}`)
			end
		end
	end
	if #module == 0 then
		return true
	end
	Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateBodyPartCollisionFidelity, nil, arg2)
	return false, module
end