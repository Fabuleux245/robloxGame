-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:55
-- Luau version 6, Types version 3
-- Time taken: 0.000966 seconds

local module_upvr = {
	_initialized = false;
	_isKeyboardJustOff = false;
}
local function getInstance(arg1) -- Line 8
	if not arg1._initialized then
		arg1:initialize()
		arg1._initialized = true
	end
	return arg1
end
module_upvr.getInstance = getInstance
local UserInputService_upvr = game:GetService("UserInputService")
function module_upvr.initialize(arg1) -- Line 16
	--[[ Upvalues[1]:
		[1]: UserInputService_upvr (readonly)
	]]
	arg1._isKeyboardJustOff = false
	UserInputService_upvr:GetPropertyChangedSignal("OnScreenKeyboardVisible"):Connect(function() -- Line 18
		--[[ Upvalues[2]:
			[1]: UserInputService_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if not UserInputService_upvr.OnScreenKeyboardVisible then
			arg1._isKeyboardJustOff = true
		end
	end)
	UserInputService_upvr.InputEnded:Connect(function(arg1_2) -- Line 23
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1._isKeyboardJustOff then
			arg1._isKeyboardJustOff = false
		end
	end)
end
function module_upvr.isKeyboardJustOff(arg1) -- Line 35
	return arg1._isKeyboardJustOff
end
return {
	getInstance = function() -- Line 40, Named "getInstance"
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		return module_upvr:getInstance()
	end;
}