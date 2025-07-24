-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:46
-- Luau version 6, Types version 3
-- Time taken: 0.000672 seconds

local useEffect_upvr = require(script:FindFirstAncestor("ReactSceneUnderstanding").Parent.React).useEffect
return function(arg1, arg2) -- Line 7, Named "useTimedLoop"
	--[[ Upvalues[1]:
		[1]: useEffect_upvr (readonly)
	]]
	local tbl = {}
	tbl[1] = arg1
	tbl[2] = arg2
	useEffect_upvr(function() -- Line 8
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
		]]
		local var3_upvw = true
		task.spawn(function() -- Line 11
			--[[ Upvalues[3]:
				[1]: var3_upvw (read and write)
				[2]: arg1 (copied, readonly)
				[3]: arg2 (copied, readonly)
			]]
			while var3_upvw do
				task.wait(arg1)
				if not var3_upvw then break end
				arg2()
			end
		end)
		return function() -- Line 23
			--[[ Upvalues[1]:
				[1]: var3_upvw (read and write)
			]]
			var3_upvw = false
		end
	end, tbl)
end