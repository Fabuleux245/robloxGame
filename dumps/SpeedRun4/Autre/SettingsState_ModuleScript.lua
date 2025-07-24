-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:54
-- Luau version 6, Types version 3
-- Time taken: 0.000651 seconds

local Rodux = require(game:GetService("CorePackages").Packages.Rodux)
return {
	Destruct = function(arg1) -- Line 10, Named "Destruct"
		arg1.store:destruct()
	end;
	store = Rodux.Store.new(require(script.Parent.Reducers.SettingsReducer), nil, {Rodux.thunkMiddleware});
}