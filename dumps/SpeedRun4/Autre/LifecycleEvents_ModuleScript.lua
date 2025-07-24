-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:32:47
-- Luau version 6, Types version 3
-- Time taken: 0.002567 seconds

return {
	ToastEvents = {
		AttemptDisplay = "ToastNotifications.displayToastNotification";
		Display = "ToastNotifications.displayedToastNotification";
		Update = "ToastNotifications.updatedToastNotification";
		UserAction = "ToastNotifications.UserActionOnToastNotification";
	};
	RegisteredCallbacks = {};
	DispatchEvent = function(arg1, arg2, arg3, arg4) -- Line 12, Named "DispatchEvent"
		local var5 = arg1.RegisteredCallbacks[arg3]
		if var5 then
			var5 = arg1.RegisteredCallbacks[arg3][arg2]
		end
		if var5 then
			for i in var5 do
				task.spawn(i, arg4)
			end
		end
	end;
	RemoveCallback = function(arg1, arg2, arg3, arg4) -- Line 22, Named "RemoveCallback"
		local var7 = arg1.RegisteredCallbacks[arg3]
		if var7 then
			var7 = arg1.RegisteredCallbacks[arg3][arg2]
		end
		if not var7 then
		else
			var7[arg4] = nil
			if not next(var7) then
				arg1.RegisteredCallbacks[arg3][arg2] = nil
				if not next(arg1.RegisteredCallbacks[arg3]) then
					arg1.RegisteredCallbacks[arg3] = nil
				end
			end
		end
	end;
	RegisterCallback = function(arg1, arg2, arg3, arg4) -- Line 37, Named "RegisterCallback"
		if not arg1.RegisteredCallbacks[arg3] then
			arg1.RegisteredCallbacks[arg3] = {}
		end
		if not arg1.RegisteredCallbacks[arg3][arg2] then
			arg1.RegisteredCallbacks[arg3][arg2] = {}
		end
		arg1.RegisteredCallbacks[arg3][arg2][arg4] = true
		return function() -- Line 45
			--[[ Upvalues[4]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
				[3]: arg3 (readonly)
				[4]: arg4 (readonly)
			]]
			arg1:RemoveCallback(arg2, arg3, arg4)
		end
	end;
}