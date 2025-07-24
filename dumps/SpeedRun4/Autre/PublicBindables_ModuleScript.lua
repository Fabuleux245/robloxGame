-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:50:49
-- Luau version 6, Types version 3
-- Time taken: 0.000446 seconds

return {
	new = function(arg1) -- Line 7, Named "new"
		local module = {}
		setmetatable(module, {
			__tostring = function() -- Line 11, Named "__tostring"
				return "Service(PublicBindables)"
			end;
		})
		function module.getWindowStateChangedBindable() -- Line 16
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.windowStateChangedBindable
		end
		return module
	end;
}