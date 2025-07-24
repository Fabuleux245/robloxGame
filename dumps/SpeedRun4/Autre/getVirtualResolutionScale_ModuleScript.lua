-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:18:04
-- Luau version 6, Types version 3
-- Time taken: 0.000476 seconds

local GetFFlagApplyResolutionScale_upvr = require(script:FindFirstAncestor("Responsive").Parent.SharedFlags).GetFFlagApplyResolutionScale
local GuiService_upvr = game:GetService("GuiService")
function getVirtualResolutionScale() -- Line 8
	--[[ Upvalues[2]:
		[1]: GetFFlagApplyResolutionScale_upvr (readonly)
		[2]: GuiService_upvr (readonly)
	]]
	if not GetFFlagApplyResolutionScale_upvr() then
		return nil
	end
	if GuiService_upvr:IsTenFootInterface() then
		return 1.5
	end
	return 1
end
return getVirtualResolutionScale