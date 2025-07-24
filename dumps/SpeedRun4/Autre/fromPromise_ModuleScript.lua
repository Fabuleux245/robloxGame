-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:43:36
-- Luau version 6, Types version 3
-- Time taken: 0.000950 seconds

local module = {}
local Observable_upvr = require(script.Parent.Parent.Parent.utilities).Observable
function module.fromPromise(arg1) -- Line 21
	--[[ Upvalues[1]:
		[1]: Observable_upvr (readonly)
	]]
	return Observable_upvr.new(function(arg1_2) -- Line 22
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:andThen(function(arg1_3) -- Line 24
			--[[ Upvalues[1]:
				[1]: arg1_2 (readonly)
			]]
			arg1_2:next(arg1_3)
			arg1_2:complete()
		end):catch(function(arg1_4) -- Line 28
			--[[ Upvalues[1]:
				[1]: arg1_2 (readonly)
			]]
			arg1_2.error(arg1_2, arg1_4)
		end)
	end)
end
return module