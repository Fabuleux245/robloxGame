-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:58:34
-- Luau version 6, Types version 3
-- Time taken: 0.000556 seconds

return function(arg1, arg2) -- Line 17, Named "createMutableSource"
	local module = {}
	module._getVersion = arg2
	module._source = arg1
	module._workInProgressVersionPrimary = nil
	module._workInProgressVersionSecondary = nil
	if _G.__DEV__ then
		module._currentPrimaryRenderer = nil
		module._currentSecondaryRenderer = nil
	end
	return module
end