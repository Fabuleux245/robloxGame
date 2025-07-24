-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:46:54
-- Luau version 6, Types version 3
-- Time taken: 0.006852 seconds

local Analytics = script:FindFirstAncestor("Analytics")
local getPlatformTarget_upvw
if require(Analytics.Parent.SharedFlags).GetFFlagShareGetPlatformTargetImpl() then
	getPlatformTarget_upvw = require(Analytics.getPlatformTarget)
else
	local UserInputService_upvr = game:GetService("UserInputService")
	function getPlatformTarget_upvw() -- Line 19, Named "getPlatformTarget"
		--[[ Upvalues[1]:
			[1]: UserInputService_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local None_upvw_2 = Enum.Platform.None
		pcall(function() -- Line 25
			--[[ Upvalues[2]:
				[1]: None_upvw_2 (read and write)
				[2]: UserInputService_upvr (copied, readonly)
			]]
			None_upvw_2 = UserInputService_upvr:GetPlatform()
		end)
		local var11 = true
		local var12
		if None_upvw_2 ~= Enum.Platform.Windows then
			if None_upvw_2 ~= Enum.Platform.OSX then
				var11 = false
			else
				var11 = true
			end
		end
		local var13 = true
		var12 = Enum.Platform.IOS
		if None_upvw_2 ~= var12 then
			var12 = Enum.Platform.Android
			if None_upvw_2 ~= var12 then
				var13 = false
			else
				var13 = true
			end
		end
		var12 = var13
		if not var12 then
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
		if var11 then
		elseif true then
		elseif true then
		else
		end
		return "console"..tostring(None_upvw_2)
	end
end
local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.new(arg1) -- Line 61
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local type_result1 = type(arg1)
	local var16 = true
	if type_result1 ~= "table" then
		if type_result1 ~= "userdata" then
			var16 = false
		else
			var16 = true
		end
	end
	assert(var16, "Unexpected value for eventIngestService")
	local module = {}
	module._eventIngest = arg1
	setmetatable(module, module_upvr)
	return module
end
function module_upvr.setRBXEvent(arg1, arg2, arg3, arg4) -- Line 76
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
	arg1._eventIngest:SetRBXEvent(getPlatformTarget_upvw(), arg2, arg3, var19)
	-- KONSTANTERROR: [30] 24. Error Block 25 end (CF ANALYSIS FAILED)
end
function module_upvr.setRBXEventStream(arg1, arg2, arg3, arg4) -- Line 90
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
	arg1._eventIngest:SetRBXEventStream(getPlatformTarget_upvw(), arg2, arg3, var21)
	-- KONSTANTERROR: [30] 24. Error Block 25 end (CF ANALYSIS FAILED)
end
function module_upvr.sendEventDeferred(arg1, arg2, arg3, arg4) -- Line 104
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
	arg1._eventIngest:SendEventDeferred(getPlatformTarget_upvw(), arg2, arg3, var23)
	-- KONSTANTERROR: [30] 24. Error Block 25 end (CF ANALYSIS FAILED)
end
function module_upvr.sendEventImmediately(arg1, arg2, arg3, arg4) -- Line 119
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
	arg1._eventIngest:SendEventImmediately(getPlatformTarget_upvw(), arg2, arg3, var25)
	-- KONSTANTERROR: [30] 24. Error Block 25 end (CF ANALYSIS FAILED)
end
return module_upvr