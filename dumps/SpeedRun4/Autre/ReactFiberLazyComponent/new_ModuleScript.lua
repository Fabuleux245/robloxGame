-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:09
-- Luau version 6, Types version 3
-- Time taken: 0.000504 seconds

return {
	resolveDefaultProps = function(arg1, arg2) -- Line 14, Named "resolveDefaultProps"
		if arg1 and typeof(arg1) == "table" and arg1.defaultProps then
			local clone = table.clone(arg2)
			local defaultProps = arg1.defaultProps
			for i, _ in defaultProps do
				if clone[i] == nil then
					clone[i] = defaultProps[i]
				end
			end
			return clone
		end
		return arg2
	end;
}