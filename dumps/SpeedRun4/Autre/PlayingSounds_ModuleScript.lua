-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:47:29
-- Luau version 6, Types version 3
-- Time taken: 0.002443 seconds

local GetFFlagSoundTelemetryOsClock_upvr = require(game:GetService("CoreGui").RobloxGui.Modules.Flags.GetFFlagSoundTelemetryOsClock)
local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
function module_2_upvr.new(arg1) -- Line 9
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local module = {}
	setmetatable(module, module_2_upvr)
	module.aggregatedData = arg1
	module.sounds = {}
	return module
end
function module_2_upvr.addSound(arg1, arg2, arg3) -- Line 17
	--[[ Upvalues[1]:
		[1]: GetFFlagSoundTelemetryOsClock_upvr (readonly)
	]]
	local var4 = arg1.sounds[arg2]
	if var4 == nil then
		if GetFFlagSoundTelemetryOsClock_upvr() then
			arg1.sounds[arg2] = {
				count = 0;
				starttime = os.clock();
				maxLoopCount = 1;
				instances = {};
			}
		else
			arg1.sounds[arg2] = {
				count = 0;
				starttime = os.time();
				maxLoopCount = 1;
				instances = {};
			}
		end
		var4 = arg1.sounds[arg2]
	end
	if var4.instances[arg3] == nil then
		var4.instances[arg3] = 1
		var4.count += 1
	end
end
function module_2_upvr.removeSound(arg1, arg2, arg3) -- Line 37
	--[[ Upvalues[1]:
		[1]: GetFFlagSoundTelemetryOsClock_upvr (readonly)
	]]
	local var7 = arg1.sounds[arg2]
	if var7 == nil then
	else
		if var7.instances[arg3] then
			var7.instances[arg3] = nil
			var7.count -= 1
		end
		if var7.count == 0 then
			if GetFFlagSoundTelemetryOsClock_upvr() then
				arg1.aggregatedData:addPlay(arg2, math.round(os.clock() - var7.starttime), var7.maxLoopCount)
			else
				arg1.aggregatedData:addPlay(arg2, os.time() - var7.starttime, var7.maxLoopCount)
			end
			arg1.sounds[arg2] = nil
		end
	end
end
function module_2_upvr.loopSound(arg1, arg2, arg3) -- Line 66
	local var8 = arg1.sounds[arg2]
	if var8 == nil or var8.instances[arg3] == nil then
	else
		local instances = var8.instances
		instances[arg3] += 1
		var8.maxLoopCount = math.max(var8.maxLoopCount, var8.instances[arg3])
	end
end
return module_2_upvr