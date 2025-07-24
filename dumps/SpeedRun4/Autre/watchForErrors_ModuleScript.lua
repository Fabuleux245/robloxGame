-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:28:24
-- Luau version 6, Types version 3
-- Time taken: 0.000748 seconds

local Analytics_upvr = require(script:FindFirstAncestor("ExpChatShared").Analytics)
return function(arg1, arg2, arg3) -- Line 4
	--[[ Upvalues[1]:
		[1]: Analytics_upvr (readonly)
	]]
	arg1.Error:Connect(function(arg1_2, arg2_2, arg3_2) -- Line 5
		--[[ Upvalues[3]:
			[1]: arg2 (readonly)
			[2]: arg3 (readonly)
			[3]: Analytics_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var4
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var4 = string.find(arg2_2, "ExpChat")
			return var4
		end
		if arg3_2 == var4 or arg2_2 and INLINED() then
			if arg3 then
				var4 = "expChatErrorCountServer"
			else
				var4 = "expChatErrorCountClient"
			end
			Analytics_upvr.reportCounter(var4)
		end
	end)
end