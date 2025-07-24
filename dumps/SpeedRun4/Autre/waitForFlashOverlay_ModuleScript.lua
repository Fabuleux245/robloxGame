-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:59:30
-- Luau version 6, Types version 3
-- Time taken: 0.000495 seconds

local Constants_upvr = require(script.Parent.Parent.Constants)
return function(arg1) -- Line 5, Named "waitForFlashOverlay"
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	if not arg1:getState()[Constants_upvr.RoduxKey].IsOverlayFlashActive then
	else
		while true do
			if not arg1:getState()[Constants_upvr.RoduxKey].IsOverlayFlashActive then break end
			if Constants_upvr.FlashTimeout < tick() - tick() then break end
			task.wait()
		end
	end
end