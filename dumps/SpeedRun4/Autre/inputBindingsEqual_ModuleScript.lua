-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:40
-- Luau version 6, Types version 3
-- Time taken: 0.001111 seconds

return function(arg1, arg2) -- Line 1, Named "inputBindingsEqual"
	if arg1 == arg2 then
		return true
	end
	for i, v in pairs(arg1) do
		local var10 = arg2[i]
		if var10 == nil then
			return false
		end
		if v.kind ~= var10.kind or v.keyCode ~= var10.keyCode or v.action ~= var10.action then
			return false
		end
		local meta = v.meta
		local meta_2 = var10.meta
		if meta ~= meta_2 then
			if typeof(meta) == "table" and typeof(meta_2) == "table" then
				for i_2, v_2 in pairs(meta) do
					if v_2 ~= meta_2[i_2] then
						return false
					end
				end
				for i_3 in pairs(meta_2) do
					if meta[i_3] == nil then
						return false
					end
				end
			else
				return false
			end
		end
	end
	for i_4 in pairs(arg2) do
		if arg1[i_4] == nil then
			return false
		end
	end
	return true
end