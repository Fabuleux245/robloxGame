-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:03:38
-- Luau version 6, Types version 3
-- Time taken: 0.000933 seconds

local useLocalPlayer_upvr = require(script.Parent.useLocalPlayer)
local React_upvr = require(game:GetService("CorePackages").Packages.React)
return function() -- Line 5, Named "usePlayerGui"
	--[[ Upvalues[2]:
		[1]: useLocalPlayer_upvr (readonly)
		[2]: React_upvr (readonly)
	]]
	local var1_result1_upvr = useLocalPlayer_upvr()
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(nil)
	React_upvr.useEffect(function() -- Line 9
		--[[ Upvalues[2]:
			[1]: var1_result1_upvr (readonly)
			[2]: any_useState_result2_upvr (readonly)
		]]
		local var7_upvw
		if var1_result1_upvr then
			any_useState_result2_upvr(var1_result1_upvr:FindFirstChildOfClass("PlayerGui"))
			var7_upvw = var1_result1_upvr.ChildAdded:Connect(function(arg1) -- Line 15
				--[[ Upvalues[1]:
					[1]: any_useState_result2_upvr (copied, readonly)
				]]
				if arg1:IsA("PlayerGui") then
					any_useState_result2_upvr(arg1)
				end
			end)
		end
		return function() -- Line 22
			--[[ Upvalues[1]:
				[1]: var7_upvw (read and write)
			]]
			if var7_upvw then
				var7_upvw:Disconnect()
			end
		end
	end, {var1_result1_upvr})
	return any_useState_result1
end