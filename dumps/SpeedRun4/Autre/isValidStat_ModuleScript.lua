-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:13:45
-- Luau version 6, Types version 3
-- Time taken: 0.002507 seconds

return function(arg1) -- Line 1, Named "isValidStat"
	local children_2 = arg1:IsA("StringValue")
	if not children_2 then
		children_2 = arg1:IsA("IntValue")
		if not children_2 then
			children_2 = arg1:IsA("BoolValue")
			if not children_2 then
				children_2 = arg1:IsA("NumberValue")
				if not children_2 then
					children_2 = arg1:IsA("DoubleConstrainedValue")
					if not children_2 then
						children_2 = arg1:IsA("IntConstrainedValue")
					end
				end
			end
		end
	end
	return children_2
end