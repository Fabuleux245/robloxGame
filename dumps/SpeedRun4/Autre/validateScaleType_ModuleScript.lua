-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:32
-- Luau version 6, Types version 3
-- Time taken: 0.000900 seconds

local Parent = script.Parent.Parent
local Constants_upvr = require(Parent.Constants)
local Analytics_upvr = require(Parent.Analytics)
return function(arg1, arg2) -- Line 12, Named "validateScaleType"
	--[[ Upvalues[2]:
		[1]: Constants_upvr (readonly)
		[2]: Analytics_upvr (readonly)
	]]
	if not arg1 then
		return true
	end
	if not Constants_upvr.AvatarPartScaleTypes[arg1.Value] then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateScaleType_InvalidAvatarPartScaleType, nil, arg2)
		assert(arg1.Parent)
		return false, {string.format("The AvatarPartScaleType value in '%s' is invalid. Please, verify the value you are using is either Classic, ProportionsSlender, or ProportionsNormal.", arg1.Parent.Name)}
	end
	return true
end