-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:26:44
-- Luau version 6, Types version 3
-- Time taken: 0.000469 seconds

game:DefineFastFlag("TenFootUiSupportSortHeaderTooltip2", false)
local GetFFlagUIBloxSupportControlStateSelectedForTooltipHover_upvr = require(script.Parent.UIBlox.GetFFlagUIBloxSupportControlStateSelectedForTooltipHover)
return function() -- Line 6
	--[[ Upvalues[1]:
		[1]: GetFFlagUIBloxSupportControlStateSelectedForTooltipHover_upvr (readonly)
	]]
	local var2_result1 = GetFFlagUIBloxSupportControlStateSelectedForTooltipHover_upvr()
	if var2_result1 then
		var2_result1 = game:GetFastFlag("TenFootUiSupportSortHeaderTooltip2")
	end
	return var2_result1
end