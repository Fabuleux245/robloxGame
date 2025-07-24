-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:25:36
-- Luau version 6, Types version 3
-- Time taken: 0.001605 seconds

local module_2_upvr = {}
function module_2_upvr.new(arg1) -- Line 9
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	module_2_upvr.__index = module_2_upvr
	local module = {
		id = arg1.id;
		phoneNumbers = arg1.phoneNumbers;
		contactName = arg1.contactName;
	}
	setmetatable(module, module_2_upvr)
	return module
end
local getMockName_upvr = require(script.Parent.getMockName)
local Dash_upvr = require(script.Parent.Parent.Parent.Dash)
function module_2_upvr.mock(arg1) -- Line 23
	--[[ Upvalues[3]:
		[1]: getMockName_upvr (readonly)
		[2]: Dash_upvr (readonly)
		[3]: module_2_upvr (readonly)
	]]
	local getMockName_upvr_result1 = getMockName_upvr()
	return module_2_upvr.new(Dash_upvr.join({
		id = getMockName_upvr_result1;
		contactName = getMockName_upvr_result1;
		phoneNumbers = {"123456"};
	}, arg1))
end
function module_2_upvr.formatFromDevice(arg1) -- Line 39
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	return module_2_upvr.new({
		id = module_2_upvr.generateId(arg1);
		contactName = (arg1.firstname or "")..' '..(arg1.lastname or "");
		phoneNumbers = arg1.phonenumber;
	})
end
function module_2_upvr.generateId(arg1) -- Line 49
	return (arg1.firstname or "")..(arg1.lastname or "")..tostring(arg1.phonenumber[1])
end
return module_2_upvr