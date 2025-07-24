-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:04:19
-- Luau version 6, Types version 3
-- Time taken: 0.001242 seconds

return function(arg1, arg2) -- Line 1, Named "createGetFFlag"
	local pcall_result1, pcall_result2 = pcall(function() -- Line 2
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
		]]
		local var2
		if arg2 then
			var2 = arg2
		else
			var2 = false
		end
		game:DefineFastFlag(arg1, var2)
	end)
	if not pcall_result1 and pcall_result2:match("The current thread cannot call") then
		return function() -- Line 7
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			local var6
			if arg1:match("^Debug") ~= nil then
				var6 = false
			else
				var6 = true
			end
			return var6
		end
	end
	return function() -- Line 13
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return game:GetFastFlag(arg1)
	end
end