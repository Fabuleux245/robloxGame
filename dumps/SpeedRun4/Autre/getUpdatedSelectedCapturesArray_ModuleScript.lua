-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:59:25
-- Luau version 6, Types version 3
-- Time taken: 0.000545 seconds

function getUpdatedSelectedCapturesArray(arg1, arg2) -- Line 1
	local module = {}
	local var9
	for _, v in ipairs(arg1) do
		if v == arg2 then
		else
			table.insert(module, v)
		end
	end
	if not nil then
		table.insert(module, arg2)
	end
	return module
end
return getUpdatedSelectedCapturesArray