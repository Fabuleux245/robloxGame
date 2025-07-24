-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:33
-- Luau version 6, Types version 3
-- Time taken: 0.000951 seconds

local Analytics_upvr = require(script.Parent.Parent.Analytics)
return function(arg1, arg2) -- Line 7, Named "validateSingleInstance"
	--[[ Upvalues[1]:
		[1]: Analytics_upvr (readonly)
	]]
	local assetTypeEnum = arg2.assetTypeEnum
	if #arg1 == 0 then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateSingleInstance_ZeroInstances, nil, arg2)
		return false, {string.format("Failed to find an instance of the asset type '%s'. Make sure one exists and try again.", assetTypeEnum.Name)}
	end
	if 1 < #arg1 then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateSingleInstance_MultipleInstances, nil, arg2)
		return false, {string.format("Selected more than one instance of type '%s'. Please, select a single instance of this type and try again.", assetTypeEnum.Name)}
	end
	return true
end