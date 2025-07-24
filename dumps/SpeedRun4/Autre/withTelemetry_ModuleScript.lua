-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:59
-- Luau version 6, Types version 3
-- Time taken: 0.000706 seconds

local createTelemetryEmitter_upvr = require(script.Parent.createTelemetryEmitter)
local React_upvr = require(script:FindFirstAncestor("AppChat").Parent.React)
return function(arg1) -- Line 7
	--[[ Upvalues[2]:
		[1]: createTelemetryEmitter_upvr (readonly)
		[2]: React_upvr (readonly)
	]]
	return function(arg1_2) -- Line 8
		--[[ Upvalues[3]:
			[1]: createTelemetryEmitter_upvr (copied, readonly)
			[2]: React_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		local var5
		if type(arg1_2) ~= "function" then
			var5 = false
		else
			var5 = true
		end
		assert(var5, "Expect renderCallback to be a function.")
		var5 = React_upvr.createElement
		var5 = var5(arg1.Consumer, {
			render = function(arg1_3) -- Line 11
				--[[ Upvalues[2]:
					[1]: createTelemetryEmitter_upvr (copied, readonly)
					[2]: arg1_2 (readonly)
				]]
				return arg1_2(createTelemetryEmitter_upvr(arg1_3))
			end;
		})
		return var5
	end
end