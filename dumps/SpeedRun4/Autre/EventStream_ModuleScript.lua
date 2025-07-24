-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:46:55
-- Luau version 6, Types version 3
-- Time taken: 0.012126 seconds

local getPlatformTarget_upvw
if require(script:FindFirstAncestor("Analytics").Parent.SharedFlags).GetFFlagShareGetPlatformTargetImpl() then
	getPlatformTarget_upvw = require(script.Parent.Parent.getPlatformTarget)
else
	local UserInputService_upvr = game:GetService("UserInputService")
	function getPlatformTarget_upvw() -- Line 36, Named "getPlatformTarget"
		--[[ Upvalues[1]:
			[1]: UserInputService_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local None_upvw_2 = Enum.Platform.None
		pcall(function() -- Line 42
			--[[ Upvalues[2]:
				[1]: None_upvw_2 (read and write)
				[2]: UserInputService_upvr (copied, readonly)
			]]
			None_upvw_2 = UserInputService_upvr:GetPlatform()
		end)
		local var10 = true
		local var11
		if None_upvw_2 ~= Enum.Platform.Windows then
			if None_upvw_2 ~= Enum.Platform.OSX then
				var10 = false
			else
				var10 = true
			end
		end
		local var12 = true
		var11 = Enum.Platform.IOS
		if None_upvw_2 ~= var11 then
			var11 = Enum.Platform.Android
			if None_upvw_2 ~= var11 then
				var12 = false
			else
				var12 = true
			end
		end
		var11 = var12
		if not var11 then
			if None_upvw_2 ~= Enum.Platform.UWP then
			else
			end
		end
		if None_upvw_2 ~= Enum.Platform.XBox360 then
			if None_upvw_2 ~= Enum.Platform.XBoxOne then
			else
			end
		end
		if not true then
			if None_upvw_2 ~= Enum.Platform.PS3 then
				if None_upvw_2 ~= Enum.Platform.PS4 then
					if game:GetEngineFeature("PlatformEnumPS5") then
						if None_upvw_2 ~= Enum.Platform.PS5 then
						else
						end
					end
				end
			end
		end
		if not true then
			if None_upvw_2 ~= Enum.Platform.WiiU then
			else
			end
		end
		if var10 then
		elseif true then
		elseif true then
		else
		end
		return "console"..tostring(None_upvw_2)
	end
end
local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
function module_2_upvr.new(arg1) -- Line 79
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local type_result1 = type(arg1)
	local var15 = true
	if type_result1 ~= "table" then
		if type_result1 ~= "userdata" then
			var15 = false
		else
			var15 = true
		end
	end
	assert(var15, "Unexpected value for reportingService")
	local module = {}
	module._reporter = arg1
	module._isEnabled = true
	setmetatable(module, module_2_upvr)
	return module
end
function module_2_upvr.setEnabled(arg1, arg2) -- Line 92
	local var17
	if type(arg2) ~= "boolean" then
		var17 = false
	else
		var17 = true
	end
	assert(var17, "Expected isEnabled to be a boolean")
	arg1._isEnabled = arg2
end
function module_2_upvr.setRBXEvent(arg1, arg2, arg3, arg4) -- Line 100
	--[[ Upvalues[1]:
		[1]: getPlatformTarget_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 23 start (CF ANALYSIS FAILED)
	local var18 = arg4
	if not var18 then
		var18 = {}
	end
	local var19 = var18
	if type(arg2) ~= "string" then
	else
	end
	assert(true, "Expected eventContext to be a string")
	if type(arg3) ~= "string" then
		-- KONSTANTWARNING: GOTO [31] #25
	end
	-- KONSTANTERROR: [0] 1. Error Block 23 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [30] 24. Error Block 25 start (CF ANALYSIS FAILED)
	assert(true, "Expected eventName to be a string")
	if type(var19) ~= "table" then
	else
	end
	assert(true, "Expected additionalArgs to be a table")
	assert(arg1._isEnabled, "This reporting service is disabled")
	arg1._reporter:SetRBXEvent(getPlatformTarget_upvw(), arg2, arg3, var19)
	-- KONSTANTERROR: [30] 24. Error Block 25 end (CF ANALYSIS FAILED)
end
function module_2_upvr.setRBXEventStream(arg1, arg2, arg3, arg4) -- Line 116
	--[[ Upvalues[1]:
		[1]: getPlatformTarget_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 23 start (CF ANALYSIS FAILED)
	local var20 = arg4
	if not var20 then
		var20 = {}
	end
	local var21 = var20
	if type(arg2) ~= "string" then
	else
	end
	assert(true, "Expected eventContext to be a string")
	if type(arg3) ~= "string" then
		-- KONSTANTWARNING: GOTO [31] #25
	end
	-- KONSTANTERROR: [0] 1. Error Block 23 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [30] 24. Error Block 25 start (CF ANALYSIS FAILED)
	assert(true, "Expected eventName to be a string")
	if type(var21) ~= "table" then
	else
	end
	assert(true, "Expected additionalArgs to be a table")
	assert(arg1._isEnabled, "This reporting service is disabled")
	arg1._reporter:SetRBXEventStream(getPlatformTarget_upvw(), arg2, arg3, var21)
	-- KONSTANTERROR: [30] 24. Error Block 25 end (CF ANALYSIS FAILED)
end
function module_2_upvr.releaseRBXEventStream(arg1) -- Line 129
	--[[ Upvalues[1]:
		[1]: getPlatformTarget_upvw (read and write)
	]]
	assert(arg1._isEnabled, "This reporting service is disabled")
	arg1._reporter:ReleaseRBXEventStream(getPlatformTarget_upvw())
end
function module_2_upvr.sendEventDeferred(arg1, arg2, arg3, arg4) -- Line 138
	--[[ Upvalues[1]:
		[1]: getPlatformTarget_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 23 start (CF ANALYSIS FAILED)
	local var22 = arg4
	if not var22 then
		var22 = {}
	end
	local var23 = var22
	if type(arg2) ~= "string" then
	else
	end
	assert(true, "Expected eventContext to be a string")
	if type(arg3) ~= "string" then
		-- KONSTANTWARNING: GOTO [31] #25
	end
	-- KONSTANTERROR: [0] 1. Error Block 23 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [30] 24. Error Block 25 start (CF ANALYSIS FAILED)
	assert(true, "Expected eventName to be a string")
	if type(var23) ~= "table" then
	else
	end
	assert(true, "Expected additionalArgs to be a table")
	assert(arg1._isEnabled, "This reporting service is disabled")
	arg1._reporter:SendEventDeferred(getPlatformTarget_upvw(), arg2, arg3, var23)
	-- KONSTANTERROR: [30] 24. Error Block 25 end (CF ANALYSIS FAILED)
end
function module_2_upvr.sendEventImmediately(arg1, arg2, arg3, arg4) -- Line 154
	--[[ Upvalues[1]:
		[1]: getPlatformTarget_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 23 start (CF ANALYSIS FAILED)
	local var24 = arg4
	if not var24 then
		var24 = {}
	end
	local var25 = var24
	if type(arg2) ~= "string" then
	else
	end
	assert(true, "Expected eventContext to be a string")
	if type(arg3) ~= "string" then
		-- KONSTANTWARNING: GOTO [31] #25
	end
	-- KONSTANTERROR: [0] 1. Error Block 23 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [30] 24. Error Block 25 start (CF ANALYSIS FAILED)
	assert(true, "Expected eventName to be a string")
	if type(var25) ~= "table" then
	else
	end
	assert(true, "Expected additionalArgs to be a table")
	assert(arg1._isEnabled, "This reporting service is disabled")
	arg1._reporter:SendEventImmediately(getPlatformTarget_upvw(), arg2, arg3, var25)
	-- KONSTANTERROR: [30] 24. Error Block 25 end (CF ANALYSIS FAILED)
end
function module_2_upvr.updateHeartbeatObject(arg1, arg2) -- Line 168
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var26 = arg2
	if not var26 then
		var26 = {}
	end
	local var27 = var26
	if type(var27) ~= "table" then
	else
	end
	assert(true, "Expected additionalArgs to be a table")
	assert(arg1._isEnabled, "This reporting service is disabled")
	arg1._reporter:UpdateHeartbeatObject(var27)
end
return module_2_upvr