-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:46:27
-- Luau version 6, Types version 3
-- Time taken: 0.000777 seconds

return function(arg1) -- Line 11, Named "iterable"
	local var2_upvw = true
	local var3_upvw = 1
	local var4_upvw
	return function() -- Line 16
		--[[ Upvalues[4]:
			[1]: var2_upvw (read and write)
			[2]: arg1 (readonly)
			[3]: var3_upvw (read and write)
			[4]: var4_upvw (read and write)
		]]
		if var2_upvw then
			local var5 = arg1[var3_upvw]
			if var5 == nil then
				var2_upvw = false
			else
				var3_upvw += 1
				return var3_upvw, var5
			end
		end
		while true do
			var4_upvw = next(arg1, var4_upvw)
			if typeof(var4_upvw) ~= "number" or 0 >= var4_upvw or var4_upvw >= var3_upvw or var4_upvw % 1 ~= 0 then
				if var4_upvw == nil then
					return nil
				end
				return var4_upvw, arg1[var4_upvw]
			end
		end
	end
end