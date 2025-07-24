-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:48
-- Luau version 6, Types version 3
-- Time taken: 0.001201 seconds

local React_upvr = require(game:GetService("CorePackages").Packages.React)
local StarterGui_upvr = game:GetService("StarterGui")
function useCoreGuiEnabled(arg1) -- Line 5
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: StarterGui_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(StarterGui_upvr:GetCoreGuiEnabled(arg1))
	local tbl = {}
	tbl[1] = arg1
	React_upvr.useEffect(function() -- Line 7
		--[[ Upvalues[3]:
			[1]: StarterGui_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: any_useState_result2_upvr (readonly)
		]]
		any_useState_result2_upvr(StarterGui_upvr:GetCoreGuiEnabled(arg1))
		local any_Connect_result1_upvr = StarterGui_upvr.CoreGuiChangedSignal:Connect(function(arg1_2, arg2) -- Line 9
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: any_useState_result2_upvr (copied, readonly)
			]]
			if arg1_2 == arg1 then
				any_useState_result2_upvr(arg2)
			end
		end)
		return function() -- Line 16
			--[[ Upvalues[1]:
				[1]: any_Connect_result1_upvr (readonly)
			]]
			any_Connect_result1_upvr:Disconnect()
		end
	end, tbl)
	return any_useState_result1
end
return useCoreGuiEnabled