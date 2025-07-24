-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:54:08
-- Luau version 6, Types version 3
-- Time taken: 0.000758 seconds

return function(arg1, arg2) -- Line 8
	for i, v in arg1 do
		if v and v.type == "one_to_one" and v.participants then
			for _, v_2 in v.participants do
				if v_2 == arg2 then
					return i
				end
			end
		end
	end
	return nil
end