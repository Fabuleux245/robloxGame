-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:12
-- Luau version 6, Types version 3
-- Time taken: 0.002332 seconds

local Players = game:GetService("Players")
local FFlagNavigateToBlockingModal_upvr = require(game:GetService("CoreGui").RobloxGui.Modules.Common.Flags.FFlagNavigateToBlockingModal)
local module_upvr = {}
module_upvr.__index = module_upvr
local var4_upvw
if FFlagNavigateToBlockingModal_upvr then
	var4_upvw = Players.LocalPlayer
	while not var4_upvw do
		Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
		var4_upvw = Players.LocalPlayer
	end
end
local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
function module_upvr.new(arg1, arg2) -- Line 22
	--[[ Upvalues[4]:
		[1]: FFlagNavigateToBlockingModal_upvr (readonly)
		[2]: var4_upvw (read and write)
		[3]: RbxAnalyticsService_upvr (readonly)
		[4]: module_upvr (readonly)
	]]
	local var6
	if FFlagNavigateToBlockingModal_upvr then
		local var7 = var6
		if not var7 then
			var7 = var4_upvw.UserId
		end
		var6 = var7
	end
	local var8 = var6
	assert(var8, "BlockingAnalytics must be passed the ID of the local user")
	local module = {}
	if FFlagNavigateToBlockingModal_upvr then
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var8 = arg2.EventStream
			return var8
		end
		if not arg2 or not INLINED() then
			var8 = RbxAnalyticsService_upvr
			-- KONSTANTWARNING: GOTO [26] #22
		end
	else
		var8 = arg2.EventStream
	end
	module._eventStreamImpl = var8
	module.localUserId = var6
	setmetatable(module, module_upvr)
	return module
end
local Cryo_upvr = require(game:GetService("CorePackages").Packages.Cryo)
function module_upvr.action(arg1, arg2, arg3, arg4) -- Line 42
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	local var11 = arg4
	if not var11 then
		var11 = {}
	end
	arg1._eventStreamImpl:SendEventDeferred("AccountSettingsApi", arg2, arg3, Cryo_upvr.Dictionary.join(var11, {
		blockerUserId = arg1.localUserId;
	}))
end
return module_upvr