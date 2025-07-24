-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:10
-- Luau version 6, Types version 3
-- Time taken: 0.001736 seconds

local UserInputService_upvr = game:GetService("UserInputService")
local module_upvr = {}
module_upvr.__index = module_upvr
local Cryo_upvr = require(game:GetService("CorePackages").Workspace.Packages.PurchasePromptDeps).Cryo
function module_upvr.new(arg1) -- Line 25
	--[[ Upvalues[3]:
		[1]: Cryo_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: UserInputService_upvr (readonly)
	]]
	local var5 = arg1
	if not var5 then
		var5 = {}
	end
	local module_upvr_2 = {
		_inputConnection = nil;
		_clickCount = 0;
		_startTime = tick();
		_options = Cryo_upvr.Dictionary.join({
			clickSpeedThreshold = 3;
			clickTimeWindow = 1;
			initialDelay = 1;
			buttonInput = nil;
		}, var5);
	}
	setmetatable(module_upvr_2, module_upvr)
	module_upvr_2._inputConnection = UserInputService_upvr.InputBegan:Connect(function(arg1_2) -- Line 50
		--[[ Upvalues[1]:
			[1]: module_upvr_2 (readonly)
		]]
		module_upvr_2:_onInput(arg1_2)
	end)
	return module_upvr_2
end
function module_upvr._onInput(arg1, arg2) -- Line 63
	local UserInputType = arg2.UserInputType
	local var9 = false
	if arg1._options.buttonInput ~= nil then
		if arg2.KeyCode ~= arg1._options.buttonInput then
			var9 = false
		else
			var9 = true
		end
	end
	local var10 = true
	if UserInputType ~= Enum.UserInputType.MouseButton1 then
		if UserInputType ~= Enum.UserInputType.Touch then
			var10 = false
		else
			var10 = true
		end
	end
	if var9 or var10 then
		arg1._clickCount += 1
		delay(arg1._options.clickTimeWindow, function() -- Line 73
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1._clickCount -= 1
		end)
	end
end
function module_upvr.isClickValid(arg1) -- Line 83
	--[[ Upvalues[1]:
		[1]: UserInputService_upvr (readonly)
	]]
	local var12
	if var12 == Enum.MouseBehavior.LockCurrentPosition then
		var12 = false
		return var12
	end
	var12 = tick() - arg1._startTime
	if var12 < arg1._options.initialDelay then
		var12 = false
		return var12
	end
	if arg1._clickCount / arg1._options.clickTimeWindow >= arg1._options.clickSpeedThreshold then
		var12 = false
	else
		var12 = true
	end
	return var12
end
function module_upvr.destroy(arg1) -- Line 105
	arg1._inputConnection:Disconnect()
end
return module_upvr