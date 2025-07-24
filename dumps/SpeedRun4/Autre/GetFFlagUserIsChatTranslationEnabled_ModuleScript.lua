-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:02
-- Luau version 6, Types version 3
-- Time taken: 0.000575 seconds

local pcall_result1_upvr, pcall_result2_upvr = pcall(function() -- Line 1
	return UserSettings():IsUserFeatureEnabled("UserIsChatTranslationEnabled2")
end)
return function() -- Line 5
	--[[ Upvalues[2]:
		[1]: pcall_result1_upvr (readonly)
		[2]: pcall_result2_upvr (readonly)
	]]
	local var5 = pcall_result1_upvr
	if var5 then
		var5 = pcall_result2_upvr
	end
	return var5
end