-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:55:41
-- Luau version 6, Types version 3
-- Time taken: 0.000438 seconds

local IsVRAppBuild_upvr = require(script.Parent.IsVRAppBuild)
return function() -- Line 3
	--[[ Upvalues[1]:
		[1]: IsVRAppBuild_upvr (readonly)
	]]
	if IsVRAppBuild_upvr() then
		return Enum.QualityLevel.Level07
	end
	return Enum.QualityLevel.Automatic
end