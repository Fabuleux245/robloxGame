-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:45:20
-- Luau version 6, Types version 3
-- Time taken: 0.001779 seconds

return function(arg1) -- Line 2
	local var5 = true
	if arg1 ~= nil then
		var5 = true
		if arg1 ~= "" then
			var5 = true
			if arg1 ~= -1 then
				var5 = false
				if typeof(arg1) == "table" then
					if next(arg1) ~= nil then
						var5 = false
					else
						var5 = true
					end
				end
			end
		end
	end
	return var5
end