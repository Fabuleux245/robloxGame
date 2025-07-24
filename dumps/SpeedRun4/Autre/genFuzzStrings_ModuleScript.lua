-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:15
-- Luau version 6, Types version 3
-- Time taken: 0.000855 seconds

return {
	genFuzzStrings = function(arg1) -- Line 13, Named "genFuzzStrings"
		return coroutine.wrap(function() -- Line 14, Named "getFuzzStrings"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			local allowedChars = arg1.allowedChars
			local len = #allowedChars
			local var8 = 0
			for i = 1, arg1.maxLength do
				var8 += len ^ i
			end
			coroutine.yield("")
			for i_2 = 0, var8 - 1 do
				local var9 = i_2
				local var10
				while 0 <= var9 do
					var10 = allowedChars[var9 % len + 1]..var10
				end
				coroutine.yield(var10)
			end
		end)
	end;
}