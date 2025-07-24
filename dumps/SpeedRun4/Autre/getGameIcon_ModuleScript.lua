-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:32:46
-- Luau version 6, Types version 3
-- Time taken: 0.000355 seconds

local GameIconReducer_upvr = require(script:FindFirstAncestor("GameIconRodux").GameIcons.GameIconReducer)
return function(arg1, arg2) -- Line 4
	--[[ Upvalues[1]:
		[1]: GameIconReducer_upvr (readonly)
	]]
	local var3 = arg1[GameIconReducer_upvr.key][arg2]
	if var3 then
		return var3.url
	end
	return ""
end