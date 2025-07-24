-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:53
-- Luau version 6, Types version 3
-- Time taken: 0.000436 seconds

local Analytics_upvr = require(script.Parent.Parent.Analytics)
return function(arg1, arg2) -- Line 6, Named "validateAccessoryName"
	--[[ Upvalues[1]:
		[1]: Analytics_upvr (readonly)
	]]
	if string.match(arg1.Name, "Accessory %(.+%)$") then
		return true
	end
	Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateAccessoryName, nil, arg2)
	return false, {"Accessory.Name must match pattern \"Accessory (Name)\""}
end