-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:05:05
-- Luau version 6, Types version 3
-- Time taken: 0.000538 seconds

return function(arg1) -- Line 7, Named "getOutputWires"
	local module = {}
	for _, v in arg1:GetOutputPins(), nil do
		for _, v_2 in arg1:GetConnectedWires(v) do
			table.insert(module, v_2)
		end
	end
	return module
end