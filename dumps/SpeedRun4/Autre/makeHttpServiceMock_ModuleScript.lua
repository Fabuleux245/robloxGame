-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:33
-- Luau version 6, Types version 3
-- Time taken: 0.000625 seconds

return function(arg1, arg2) -- Line 1, Named "makeHttpServiceMock"
	return {
		RequestInternal = function(arg1_2) -- Line 3, Named "RequestInternal"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
			]]
			return {
				Start = function(arg1_3, arg2_2) -- Line 5, Named "Start"
					--[[ Upvalues[2]:
						[1]: arg1 (copied, readonly)
						[2]: arg2 (copied, readonly)
					]]
					arg2_2(arg1, arg2)
				end;
			}
		end;
	}
end