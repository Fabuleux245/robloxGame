-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:08
-- Luau version 6, Types version 3
-- Time taken: 0.000526 seconds

local React_upvr = require(game:GetService("CorePackages").Packages.React)
local TooltipContext_upvr = require(script.Parent.TooltipContext)
function useIsTooltipTurn(arg1) -- Line 9
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: TooltipContext_upvr (readonly)
	]]
	local var4 = React_upvr.useContext(TooltipContext_upvr)
	if var4 then
		var4 = React_upvr.useContext(TooltipContext_upvr).isCurrentTooltip(arg1)
	end
	return var4
end
return useIsTooltipTurn