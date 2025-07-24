-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:41
-- Luau version 6, Types version 3
-- Time taken: 0.000389 seconds

local useGuiState_upvr = require(script.Parent.useGuiState)
return function(arg1) -- Line 9, Named "usePressState"
	--[[ Upvalues[1]:
		[1]: useGuiState_upvr (readonly)
	]]
	local var2 = arg1
	if useGuiState_upvr(var2) ~= Enum.GuiState.Press then
		var2 = false
	else
		var2 = true
	end
	return var2
end