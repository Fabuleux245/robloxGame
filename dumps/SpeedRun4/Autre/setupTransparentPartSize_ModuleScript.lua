-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:45
-- Luau version 6, Types version 3
-- Time taken: 0.001376 seconds

local Parent = script.Parent.Parent
local AssetTraversalUtils_upvr = require(Parent.util.AssetTraversalUtils)
local getFFlagUGCValidateFixDeprecatedTransparency_upvr = require(Parent.flags.getFFlagUGCValidateFixDeprecatedTransparency)
local ConstantsInterface_upvr = require(Parent.ConstantsInterface)
return function(arg1, arg2, arg3, arg4, arg5) -- Line 12
	--[[ Upvalues[3]:
		[1]: AssetTraversalUtils_upvr (readonly)
		[2]: getFFlagUGCValidateFixDeprecatedTransparency_upvr (readonly)
		[3]: ConstantsInterface_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 54 start (CF ANALYSIS FAILED)
	local var6
	if Enum.AssetType.DynamicHead == arg4 then
		if getFFlagUGCValidateFixDeprecatedTransparency_upvr() then
			var6 = arg3
		else
			var6 = arg2
		end
		if getFFlagUGCValidateFixDeprecatedTransparency_upvr() then
		else
		end
		AssetTraversalUtils_upvr.calculateBounds(arg4, var6, CFrame.new(), {}, nil)
		arg1.CFrame = CFrame.new()
		arg2.CFrame = CFrame.new()
		arg1.Size = arg2.Size
		-- KONSTANTWARNING: GOTO [177] #130
	end
	-- KONSTANTERROR: [0] 1. Error Block 54 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [42] 32. Error Block 45 start (CF ANALYSIS FAILED)
	if getFFlagUGCValidateFixDeprecatedTransparency_upvr() then
		-- KONSTANTWARNING: GOTO [56] #44
	end
	-- KONSTANTERROR: [42] 32. Error Block 45 end (CF ANALYSIS FAILED)
end