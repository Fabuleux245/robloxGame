-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:05:05
-- Luau version 6, Types version 3
-- Time taken: 0.000531 seconds

return function(arg1) -- Line 1, Named "isWirable"
	return pcall(function() -- Line 2
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local var2 = arg1
		var2:GetInputPins()
		var2:GetOutputPins()
		var2:GetConnectedWires("Foo")
	end)
end