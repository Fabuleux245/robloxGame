-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:49:19
-- Luau version 6, Types version 3
-- Time taken: 0.000498 seconds

local RoactRodux_upvr = require(game:GetService("CorePackages").Workspace.Packages.PurchasePromptDeps).RoactRodux
return function(arg1, arg2) -- Line 12, Named "connectToStore"
	--[[ Upvalues[1]:
		[1]: RoactRodux_upvr (readonly)
	]]
	return function(arg1_2) -- Line 13
		--[[ Upvalues[3]:
			[1]: RoactRodux_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
		]]
		local var3 = RoactRodux_upvr.UNSTABLE_connect2(arg1, arg2)(arg1_2)
		function var3.getUnconnected() -- Line 16
			--[[ Upvalues[1]:
				[1]: arg1_2 (readonly)
			]]
			return arg1_2
		end
		return var3
	end
end