-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:43:37
-- Luau version 6, Types version 3
-- Time taken: 0.001402 seconds

local module = {}
local Parent = script.Parent.Parent.Parent
local Promise_upvr = require(Parent.Parent.Promise)
local invariant_upvr = require(Parent.jsutils.invariant).invariant
function module.toPromise(arg1) -- Line 23
	--[[ Upvalues[2]:
		[1]: Promise_upvr (readonly)
		[2]: invariant_upvr (readonly)
	]]
	local var7_upvw = false
	return Promise_upvr.new(function(arg1_2, arg2) -- Line 25
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: var7_upvw (read and write)
			[3]: invariant_upvr (copied, readonly)
		]]
		arg1:subscribe({
			next = function(arg1_3, arg2_2) -- Line 27, Named "next"
				--[[ Upvalues[3]:
					[1]: var7_upvw (copied, read and write)
					[2]: invariant_upvr (copied, readonly)
					[3]: arg1_2 (readonly)
				]]
				if var7_upvw then
					invariant_upvr.warn("Promise Wrapper does not support multiple results from Observable")
				else
					var7_upvw = true
					arg1_2(arg2_2)
				end
			end;
			error = function(arg1_4, arg2_3) -- Line 35, Named "error"
				--[[ Upvalues[1]:
					[1]: arg2 (readonly)
				]]
				arg2(arg2_3)
			end;
		})
	end):andThen(function(arg1_5) -- Line 41
		--[[ Upvalues[1]:
			[1]: Promise_upvr (copied, readonly)
		]]
		return Promise_upvr.delay(0):andThenReturn(arg1_5)
	end)
end
return module