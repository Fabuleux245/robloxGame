-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:40:05
-- Luau version 6, Types version 3
-- Time taken: 0.002198 seconds

local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
function module_2_upvr.new(arg1, arg2) -- Line 6
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local module = {}
	module.Interval = arg1
	module.CallsLeft = arg2
	module.CallsPerInterval = arg2
	module.LastCallsRefresh = 0
	module.Queue = {}
	module.QueueConnection = nil
	return setmetatable(module, module_2_upvr)
end
local RunService_upvr = game:GetService("RunService")
function module_2_upvr.Add(arg1, arg2) -- Line 20
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	local BindableEvent = Instance.new("BindableEvent")
	local tbl_2 = {}
	tbl_2.Function = arg2
	tbl_2.Called = BindableEvent
	table.insert(arg1.Queue, tbl_2)
	if not arg1.QueueConnection then
		arg1.QueueConnection = RunService_upvr.Heartbeat:Connect(function() -- Line 25
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if #arg1.Queue == 0 then
			else
				if arg1.LastCallsRefresh + arg1.Interval < tick() then
					arg1.CallsLeft = arg1.CallsPerInterval
					arg1.LastCallsRefresh = tick()
				end
				local tbl = {}
				if arg1.CallsLeft <= 0 then return end
				for i, v_upvr in arg1.Queue do
					task.spawn(function() -- Line 38
						--[[ Upvalues[1]:
							[1]: v_upvr (readonly)
						]]
						v_upvr.Function()
						v_upvr.Called:Fire()
						v_upvr.Called:Destroy()
						v_upvr.Called = nil
					end)
					table.insert(tbl, i)
					local var13 = arg1
					var13.CallsLeft -= 1
					if arg1.CallsLeft <= 0 then break end
				end
				for _, v_2 in tbl do
					table.remove(arg1.Queue, v_2)
				end
			end
		end)
	end
	return BindableEvent.Event
end
function module_2_upvr.Destroy(arg1) -- Line 59
	if arg1.QueueConnection then
		arg1.QueueConnection:Disconnect()
		arg1.QueueConnection = nil
	end
end
return module_2_upvr