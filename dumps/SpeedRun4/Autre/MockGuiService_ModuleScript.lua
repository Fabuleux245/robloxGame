-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:20
-- Luau version 6, Types version 3
-- Time taken: 0.001120 seconds

local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
function module_2_upvr.new() -- Line 4
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local module = {
		broadcasts = {};
	}
	local tbl = {}
	local BindableEvent_upvr = Instance.new("BindableEvent")
	function tbl.Connect(arg1, arg2) -- Line 10
		--[[ Upvalues[1]:
			[1]: BindableEvent_upvr (readonly)
		]]
		return BindableEvent_upvr.Event:Connect(arg2)
	end
	module.NativeClose = tbl
	module.MenuIsOpen = false
	module.openedMenus = {}
	setmetatable(module, {
		__index = module_2_upvr;
	})
	return module
end
function module_2_upvr.SetMenuIsOpen(arg1, arg2, arg3) -- Line 23
	if arg2 then
		table.insert(arg1.openedMenus, arg3)
	else
		local table_find_result1 = table.find(arg1.openedMenus, arg3)
		if table_find_result1 then
			table.remove(arg1.openedMenus, table_find_result1)
		end
	end
	if 0 >= #arg1.openedMenus then
	else
	end
	arg1.MenuIsOpen = true
end
function module_2_upvr.BroadcastNotification(arg1, arg2, arg3) -- Line 36
	local tbl_2 = {}
	tbl_2.data = arg2
	tbl_2.notification = arg3
	table.insert(arg1.broadcasts, tbl_2)
end
function module_2_upvr.GetNotificationTypeList(arg1) -- Line 45
	return {
		NATIVE_EXIT = 35;
		RESTART_APP = 41;
	}
end
return module_2_upvr