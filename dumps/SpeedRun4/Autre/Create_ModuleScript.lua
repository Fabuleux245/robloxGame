-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:55:39
-- Luau version 6, Types version 3
-- Time taken: 0.000732 seconds

return function(arg1) -- Line 21, Named "create"
	return function(arg1_2) -- Line 22
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local any = Instance.new(arg1)
		local var10
		for i, v in pairs(arg1_2) do
			if type(i) == "number" and typeof(v) == "Instance" then
				v.Parent = any
			elseif type(i) == "string" then
				if i == "Parent" then
				else
					any[i] = v
				end
			end
		end
		any.Parent = nil
		return any
	end
end