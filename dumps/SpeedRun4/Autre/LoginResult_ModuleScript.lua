-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:20:53
-- Luau version 6, Types version 3
-- Time taken: 0.002297 seconds

local Parent = script:FindFirstAncestor("AuthCommon").Parent
local t = require(Parent.t)
local FFlagEnableLuaAccountSwitch_upvr = require(Parent.SharedFlags).FFlagEnableLuaAccountSwitch
local module_upvr = {}
local tbl_upvr = {}
module_upvr[tbl_upvr] = true
function module_upvr.new(arg1) -- Line 51
	--[[ Upvalues[2]:
		[1]: FFlagEnableLuaAccountSwitch_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local module = {
		user = {
			id = '0';
			name = "";
		};
	}
	if arg1 and type(arg1) == "table" then
		if arg1.user then
			local tostring_result1 = tostring(arg1.user.id)
			if not tostring_result1 then
				tostring_result1 = module.user.id
			end
			module.user.id = tostring_result1
			tostring_result1 = arg1.user.name
			local var13 = tostring_result1
			if not var13 then
				var13 = module.user.name
			end
			module.user.name = var13
		end
		if arg1.twoStepVerificationData then
			module.twoStepVerificationData = {}
			module.twoStepVerificationData.mediaType = arg1.twoStepVerificationData.mediaType or ""
			module.twoStepVerificationData.ticket = arg1.twoStepVerificationData.ticket or ""
		end
		if FFlagEnableLuaAccountSwitch_upvr and arg1.accountBlob then
			module.accountBlob = arg1.accountBlob
		end
	end
	setmetatable(module, module_upvr)
	return module
end
function module_upvr.mock() -- Line 79
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local any_new_result1_2 = module_upvr.new()
	any_new_result1_2.user = {
		id = '1';
		name = "ROBLOX";
	}
	any_new_result1_2.twoStepVerificationData = {
		mediaType = "Email";
		ticket = "00000000-0000-0000-0000-000000000000";
	}
	return any_new_result1_2
end
local any_interface_result1_upvr = t.interface({
	user = t.interface({
		id = t.number;
		name = t.string;
	});
	twoStepVerificationData = t.optional(t.interface({
		mediaType = t.string;
		ticket = t.string;
	}));
	twoStepVerificationDataV2 = t.optional(t.interface({
		mediaType = t.string;
		ticket = t.string;
	}));
	accountBlob = t.optional(t.string);
})
local ArgCheck_upvr = require(Parent.ArgCheck)
function module_upvr.fromJsonData(arg1) -- Line 95
	--[[ Upvalues[4]:
		[1]: module_upvr (readonly)
		[2]: any_interface_result1_upvr (readonly)
		[3]: FFlagEnableLuaAccountSwitch_upvr (readonly)
		[4]: ArgCheck_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local any_new_result1 = module_upvr.new()
	local var17_result1, var17_result2 = any_interface_result1_upvr(arg1)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [50] 33. Error Block 6 start (CF ANALYSIS FAILED)
	any_new_result1.accountBlob = arg1.accountBlob
	do
		return any_new_result1
	end
	-- KONSTANTERROR: [50] 33. Error Block 6 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [55] 36. Error Block 7 start (CF ANALYSIS FAILED)
	ArgCheck_upvr.assert(false, var17_result2)
	-- KONSTANTERROR: [55] 36. Error Block 7 end (CF ANALYSIS FAILED)
end
function module_upvr.is(arg1) -- Line 126
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local var22
	if var22 ~= "table" then
		var22 = false
		return var22
	end
	if arg1[tbl_upvr] ~= true then
		var22 = false
	else
		var22 = true
	end
	return var22
end
function module_upvr.hasTwoStepData(arg1) -- Line 134
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local any_is_result1 = module_upvr.is(arg1)
	if any_is_result1 then
		if type(arg1.twoStepVerificationData) ~= "table" then
			any_is_result1 = false
		else
			any_is_result1 = true
		end
	end
	return any_is_result1
end
module_upvr.__index = module_upvr
return module_upvr