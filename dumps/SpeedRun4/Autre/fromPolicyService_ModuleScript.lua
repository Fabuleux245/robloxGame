-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:52:53
-- Luau version 6, Types version 3
-- Time taken: 0.001561 seconds

local Parent = script.Parent.Parent
local PolicyService_upvr_2 = game:GetService("PolicyService")
local Players_upvr = game:GetService("Players")
local Promise_upvr = require(Parent.Parent.Promise)
local Logger_upvr = require(Parent.Logger)
return function(arg1) -- Line 10
	--[[ Upvalues[4]:
		[1]: PolicyService_upvr_2 (readonly)
		[2]: Players_upvr (readonly)
		[3]: Promise_upvr (readonly)
		[4]: Logger_upvr (readonly)
	]]
	local var7 = arg1
	if not var7 then
		var7 = {}
	end
	local var8 = var7
	var7 = var8.PolicyService
	local var9 = var7
	if not var9 then
		var9 = PolicyService_upvr_2
	end
	var8.PolicyService = var9
	var9 = var8.PlayersService
	local var10 = var9
	if not var10 then
		var10 = Players_upvr
	end
	var8.PlayersService = var10
	assert(var8.PolicyService, "expected dependencies.PolicyService")
	assert(var8.PlayersService, "expected dependencies.PlayersService")
	local PlayersService_upvr = var8.PlayersService
	local PolicyService_upvr = var8.PolicyService
	return function() -- Line 21
		--[[ Upvalues[4]:
			[1]: Promise_upvr (copied, readonly)
			[2]: PlayersService_upvr (readonly)
			[3]: PolicyService_upvr (readonly)
			[4]: Logger_upvr (copied, readonly)
		]]
		return {
			read = function() -- Line 23, Named "read"
				return nil
			end;
			onPolicyChanged = function(arg1_2) -- Line 27, Named "onPolicyChanged"
				--[[ Upvalues[4]:
					[1]: Promise_upvr (copied, readonly)
					[2]: PlayersService_upvr (copied, readonly)
					[3]: PolicyService_upvr (copied, readonly)
					[4]: Logger_upvr (copied, readonly)
				]]
				local BindableEvent_upvr = Instance.new("BindableEvent")
				Promise_upvr.new(function(arg1_3, arg2) -- Line 33
					--[[ Upvalues[2]:
						[1]: PlayersService_upvr (copied, readonly)
						[2]: PolicyService_upvr (copied, readonly)
					]]
					local LocalPlayer_upvr = PlayersService_upvr.LocalPlayer
					if LocalPlayer_upvr then
						local pcall_result1, pcall_result2 = pcall(function() -- Line 36
							--[[ Upvalues[2]:
								[1]: PolicyService_upvr (copied, readonly)
								[2]: LocalPlayer_upvr (readonly)
							]]
							return PolicyService_upvr:GetPolicyInfoForPlayerAsync(LocalPlayer_upvr)
						end)
						if pcall_result1 then
							if pcall_result2 then
								arg1_3(pcall_result2)
							else
								arg2("GetPolicyInfoForPlayerAsync return nil value")
							end
						end
						arg2("GetPolicyInfoForPlayerAsync had an error when calling")
					else
						arg2("LocalPlayer not found")
					end
				end):andThen(function(arg1_4) -- Line 52
					--[[ Upvalues[1]:
						[1]: BindableEvent_upvr (readonly)
					]]
					BindableEvent_upvr:Fire(arg1_4)
				end):catch(function(arg1_5) -- Line 55
					--[[ Upvalues[1]:
						[1]: Logger_upvr (copied, readonly)
					]]
					Logger_upvr:warning("Could not fetch from PolicyService due to error: {}", arg1_5)
				end)
				return BindableEvent_upvr.Event:Connect(arg1_2)
			end;
		}
	end
end