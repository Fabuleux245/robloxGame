-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:11:21
-- Luau version 6, Types version 3
-- Time taken: 0.000413 seconds

return function(arg1, arg2, arg3, arg4, arg5) -- Line 1
	local var2 = arg3
	if arg2 then
		var2 = arg2..var2
	end
	local module = {}
	module.purchase_flow_uuid = arg1
	module.purchase_flow = var2
	module.view_name = arg4
	module.purchase_event_type = "ViewShown"
	module.event_metadata = arg5
	return module
end