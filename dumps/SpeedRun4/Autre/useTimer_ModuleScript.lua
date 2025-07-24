-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:30:10
-- Luau version 6, Types version 3
-- Time taken: 0.000833 seconds

local Songbird = script:FindFirstAncestor("Songbird")
local useEffect_upvr = require(Songbird.Parent.React).useEffect
local Cryo_upvr = require(Songbird.Parent.Cryo)
return function(arg1, arg2, arg3) -- Line 8, Named "useTimer"
	--[[ Upvalues[2]:
		[1]: useEffect_upvr (readonly)
		[2]: Cryo_upvr (readonly)
	]]
	local tbl = {}
	tbl[1] = arg1
	tbl[2] = arg2
	local var9 = arg3
	if not var9 then
		var9 = {}
	end
	useEffect_upvr(function() -- Line 9
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
		]]
		local var5_upvw = true
		task.spawn(function() -- Line 12
			--[[ Upvalues[3]:
				[1]: var5_upvw (read and write)
				[2]: arg1 (copied, readonly)
				[3]: arg2 (copied, readonly)
			]]
			while var5_upvw do
				task.wait(arg1)
				if not var5_upvw then break end
				arg2()
			end
		end)
		return function() -- Line 24
			--[[ Upvalues[1]:
				[1]: var5_upvw (read and write)
			]]
			var5_upvw = false
		end
	end, Cryo_upvr.Dictionary.join(tbl, var9))
end