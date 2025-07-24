-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:22:59
-- Luau version 6, Types version 3
-- Time taken: 0.000617 seconds

local SetCentralOverlay_upvr = require(script:FindFirstAncestor("CentralOverlay").Actions.SetCentralOverlay)
return function() -- Line 4
	--[[ Upvalues[1]:
		[1]: SetCentralOverlay_upvr (readonly)
	]]
	return function(arg1) -- Line 5
		--[[ Upvalues[1]:
			[1]: SetCentralOverlay_upvr (copied, readonly)
		]]
		if arg1:getState().CentralOverlay.Configs.DisableBackButtonClose then
		else
			arg1:dispatch(SetCentralOverlay_upvr())
		end
	end
end