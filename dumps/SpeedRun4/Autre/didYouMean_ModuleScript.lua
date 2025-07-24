-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:24
-- Luau version 6, Types version 3
-- Time taken: 0.002125 seconds

return {
	didYouMean = function(arg1, arg2) -- Line 20, Named "didYouMean"
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var5
		if arg2 then
			var5 = arg1
			local _ = arg2
		else
		end
		if var5 then
			local var7 = " Did you mean "..var5..' '
		end
		local tbl = {}
		for i = 1, #arg1 do
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl[i] = "%q":format(arg1[i])
			local _
		end
		local len = #tbl
		if len == 0 then
			return ""
		end
		if len == 1 then
			i = var7
			return i..tbl[1]..'?'
		end
		if len == 2 then
			i = var7
			return i..tbl[1].." or "..tbl[2]..'?'
		end
		local module = {}
		table.move(tbl, 1, 5, 1, module)
		return var7..table.concat(module, ", ")..", or "..tostring(table.remove(module))..'?'
	end;
}