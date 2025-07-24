-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:11
-- Luau version 6, Types version 3
-- Time taken: 0.000407 seconds

game:DefineFastString("UGCValidationMaxAnimationLength", "10")
local module_upvr = {
	asString = function() -- Line 9, Named "asString"
		return game:GetFastString("UGCValidationMaxAnimationLength")
	end;
}
function module_upvr.asNumber() -- Line 13
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return tonumber(module_upvr.asString())
end
return module_upvr