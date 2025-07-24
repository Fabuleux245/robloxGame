-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:03:30
-- Luau version 6, Types version 3
-- Time taken: 0.000391 seconds

return function(arg1) -- Line 1
	return {
		getStatus = require(script.getStatus)(arg1);
		setStatus = require(script.setStatus)(arg1);
		installReducer = require(script.installReducer)(arg1);
		Enum = {
			Status = require(script.EnumNetworkStatus);
		};
	}
end