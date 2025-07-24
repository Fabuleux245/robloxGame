-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:49:41
-- Luau version 6, Types version 3
-- Time taken: 0.001056 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local children_upvr_2 = Foundation.Components:GetChildren()
local var1_2_upvr = require(Foundation)
local children_upvr = Foundation.Providers:GetChildren()
local children_upvr_3 = Foundation.Utility:GetChildren()
return function(arg1) -- Line 7, Named "GetStories"
	--[[ Upvalues[4]:
		[1]: children_upvr_2 (readonly)
		[2]: var1_2_upvr (readonly)
		[3]: children_upvr (readonly)
		[4]: children_upvr_3 (readonly)
	]]
	for _, v_upvr in children_upvr_2 do
		local pcall_result1, _ = pcall(function() -- Line 10
			--[[ Upvalues[2]:
				[1]: var1_2_upvr (copied, readonly)
				[2]: v_upvr (readonly)
			]]
			return var1_2_upvr[v_upvr.Name]
		end)
		if pcall_result1 == arg1 then
			table.insert({}, v_upvr)
		end
	end
	for _, v_2_upvr in children_upvr do
		local pcall_result1_3, _ = pcall(function() -- Line 19
			--[[ Upvalues[2]:
				[1]: var1_2_upvr (copied, readonly)
				[2]: v_2_upvr (readonly)
			]]
			return var1_2_upvr[v_2_upvr.Name.."Provider"]
		end)
		if pcall_result1_3 == arg1 then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			table.insert({}, v_2_upvr)
		end
	end
	for _, v_3_upvr in children_upvr_3 do
		local pcall_result1_2, _ = pcall(function() -- Line 28
			--[[ Upvalues[2]:
				[1]: var1_2_upvr (copied, readonly)
				[2]: v_3_upvr (readonly)
			]]
			return var1_2_upvr.Utility[v_3_upvr.Name]
		end)
		if arg1 and pcall_result1_2 == arg1 then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			table.insert({}, v_3_upvr)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end