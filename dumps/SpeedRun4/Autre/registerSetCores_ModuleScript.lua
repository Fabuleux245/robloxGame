-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:31
-- Luau version 6, Types version 3
-- Time taken: 0.000748 seconds

local StarterGui_upvr = game:GetService("StarterGui")
local SetRespawnBehavior_upvr = require(script.Parent.Parent.Actions.SetRespawnBehavior)
return function(arg1) -- Line 8, Named "registerSetCores"
	--[[ Upvalues[2]:
		[1]: StarterGui_upvr (readonly)
		[2]: SetRespawnBehavior_upvr (readonly)
	]]
	StarterGui_upvr:RegisterSetCore("ResetButtonCallback", function(arg1_2) -- Line 9
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: SetRespawnBehavior_upvr (copied, readonly)
		]]
		local var4 = true
		local var5
		if typeof(arg1_2) == "boolean" then
			var4 = arg1_2
			var5 = nil
		elseif typeof(arg1_2) == "Instance" and arg1_2:IsA("BindableEvent") then
			var4 = true
			var5 = arg1_2
		else
			error("ResetButtonCallback must be set to a BindableEvent or a boolean", 0)
		end
		arg1:dispatch(SetRespawnBehavior_upvr(var4, var5))
	end)
end