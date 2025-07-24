-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:50
-- Luau version 6, Types version 3
-- Time taken: 0.000956 seconds

local lerp_upvr = require(script:FindFirstAncestor("Foundation").Utility.lerp)
return function(arg1, arg2) -- Line 7, Named "getBackgroundStyleWithStateLayer"
	--[[ Upvalues[1]:
		[1]: lerp_upvr (readonly)
	]]
	if arg2.Transparency == 1 then
		return {
			Color3 = arg1.Color3;
			Transparency = arg1.Transparency;
		}
	end
	if arg1.Color3 == nil or arg1.Transparency == 1 then
		return {
			Color3 = arg2.Color3;
			Transparency = arg2.Transparency;
		}
	end
	local var5 = arg1.Transparency or 0
	return {
		Color3 = arg1.Color3:Lerp(arg2.Color3, 1 - arg2.Transparency);
		Transparency = lerp_upvr(var5, arg2.Transparency, var5);
	}
end