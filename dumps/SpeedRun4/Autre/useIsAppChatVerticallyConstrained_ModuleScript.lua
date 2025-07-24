-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:07
-- Luau version 6, Types version 3
-- Time taken: 0.000704 seconds

local useLayerCollector_upvr = require(script:FindFirstAncestor("AppChat").Parent.UIBlox).Core.Layout.LayerCollector.useLayerCollector
local game_DefineFastInt_result1_upvr = game:DefineFastInt("AppChatVerticalConstraintThreshold", 300)
return function() -- Line 10
	--[[ Upvalues[2]:
		[1]: useLayerCollector_upvr (readonly)
		[2]: game_DefineFastInt_result1_upvr (readonly)
	]]
	local var4
	if useLayerCollector_upvr().absoluteSize.Y > game_DefineFastInt_result1_upvr then
		var4 = false
	else
		var4 = true
	end
	return var4
end