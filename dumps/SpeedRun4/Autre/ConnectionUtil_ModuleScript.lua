-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:00:25
-- Luau version 6, Types version 3
-- Time taken: 0.001539 seconds

local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.new() -- Line 21
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, module_upvr)
	setmetatable_result1.connections = {}
	return setmetatable_result1
end
function module_upvr.connect(arg1, arg2, arg3, arg4) -- Line 27
	if arg1.connections[arg2] then
		arg1.connections[arg2]()
	end
	local any_Connect_result1_upvr = arg3:Connect(arg4)
	arg1.connections[arg2] = function() -- Line 33
		--[[ Upvalues[1]:
			[1]: any_Connect_result1_upvr (readonly)
		]]
		any_Connect_result1_upvr:Disconnect()
	end
end
function module_upvr.connectManual(arg1, arg2, arg3) -- Line 38
	if arg1.connections[arg2] then
		arg1.connections[arg2]()
	end
	arg1.connections[arg2] = arg3
end
function module_upvr.disconnect(arg1, arg2) -- Line 45
	if arg1.connections[arg2] then
		arg1.connections[arg2]()
		arg1.connections[arg2] = nil
	end
end
function module_upvr.disconnectAll(arg1) -- Line 52
	for _, v in pairs(arg1.connections) do
		v()
	end
	arg1.connections = {}
end
return module_upvr