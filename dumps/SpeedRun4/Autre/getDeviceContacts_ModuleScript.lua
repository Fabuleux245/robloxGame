-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:24:26
-- Luau version 6, Types version 3
-- Time taken: 0.003798 seconds

local Dash_upvr = require(script:FindFirstAncestor("ContactImporter").dependencies).Dash
local tbl_upvr = {}
local function var4_upvr(arg1) -- Line 8
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local byDeviceContactId = arg1.byDeviceContactId
	if not byDeviceContactId then
		byDeviceContactId = tbl_upvr
	end
	return byDeviceContactId
end
local function _(arg1) -- Line 12
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: Dash_upvr (readonly)
	]]
	return function(arg1_2) -- Line 13
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: tbl_upvr (copied, readonly)
			[3]: Dash_upvr (copied, readonly)
		]]
		local hasSentRequest_upvr_2 = arg1.hasSentRequest
		if not hasSentRequest_upvr_2 then
			hasSentRequest_upvr_2 = tbl_upvr
		end
		return Dash_upvr.map(arg1_2, function(arg1_3) -- Line 16
			--[[ Upvalues[2]:
				[1]: Dash_upvr (copied, readonly)
				[2]: hasSentRequest_upvr_2 (readonly)
			]]
			return Dash_upvr.join(arg1_3, {
				hasSentRequest = hasSentRequest_upvr_2[arg1_3.id];
			})
		end)
	end
end
local function var11_upvr(arg1) -- Line 24
	--[[ Upvalues[1]:
		[1]: Dash_upvr (readonly)
	]]
	return Dash_upvr.map(arg1, function(arg1_4) -- Line 25
		--[[ Upvalues[1]:
			[1]: Dash_upvr (copied, readonly)
		]]
		return Dash_upvr.join(arg1_4, {
			phoneNumber = tostring(arg1_4.phoneNumbers[1]);
			phoneNumbers = Dash_upvr.None;
		})
	end)
end
local function _(arg1) -- Line 33
	--[[ Upvalues[1]:
		[1]: Dash_upvr (readonly)
	]]
	return function(arg1_5) -- Line 34
		--[[ Upvalues[2]:
			[1]: Dash_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		local module_upvr = {}
		Dash_upvr.forEach(arg1_5, function(arg1_6) -- Line 37
			--[[ Upvalues[3]:
				[1]: arg1 (copied, readonly)
				[2]: module_upvr (readonly)
				[3]: Dash_upvr (copied, readonly)
			]]
			if not arg1.deviceContactToRobloxContact or not arg1.deviceContactToRobloxContact[arg1_6.id] then
				module_upvr[arg1_6.id] = Dash_upvr.join(arg1_6, {
					deviceContactId = arg1_6.id;
					isMatchedContact = false;
					id = Dash_upvr.None;
				})
			end
		end)
		return module_upvr
	end
end
local function var19_upvr(arg1) -- Line 53
	--[[ Upvalues[1]:
		[1]: Dash_upvr (readonly)
	]]
	return Dash_upvr.values(arg1)
end
local function _(arg1) -- Line 57, Named "stripLeadingWhitespace"
	return string.gsub(arg1, "^%s*(.*)$", "%1")
end
local function var20_upvr(arg1) -- Line 61
	table.sort(arg1, function(arg1_7, arg2) -- Line 62
		local var28
		if var28 then
			var28 = arg2.contactName
			if var28 then
				var28 = string.gsub(string.upper(arg1_7.contactName), "^%s*(.*)$", "%1")
				local string_upper_result1 = string.upper(arg2.contactName)
				local string_gsub_result1_4 = string.gsub(string_upper_result1, "^%s*(.*)$", "%1")
				if var28 and string_gsub_result1_4 and var28 ~= string_gsub_result1_4 then
					if var28 >= string_gsub_result1_4 then
						string_upper_result1 = false
					else
						string_upper_result1 = true
					end
					return string_upper_result1
				end
			end
		end
		if arg1_7.deviceContactId >= arg2.deviceContactId then
			var28 = false
		else
			var28 = true
		end
		return var28
	end)
	return arg1
end
return function(arg1) -- Line 75
	--[[ Upvalues[6]:
		[1]: tbl_upvr (readonly)
		[2]: Dash_upvr (readonly)
		[3]: var4_upvr (readonly)
		[4]: var11_upvr (readonly)
		[5]: var19_upvr (readonly)
		[6]: var20_upvr (readonly)
	]]
	local var32_upvr = arg1
	if not var32_upvr then
		var32_upvr = tbl_upvr
	end
	local var41 = var32_upvr
	if not var41 then
		var41 = {}
	end
	return Dash_upvr.compose(var4_upvr, function(arg1_8) -- Line 13
		--[[ Upvalues[3]:
			[1]: var32_upvr (readonly)
			[2]: tbl_upvr (copied, readonly)
			[3]: Dash_upvr (copied, readonly)
		]]
		local hasSentRequest_upvr = var32_upvr.hasSentRequest
		if not hasSentRequest_upvr then
			hasSentRequest_upvr = tbl_upvr
		end
		return Dash_upvr.map(arg1_8, function(arg1_9) -- Line 16
			--[[ Upvalues[2]:
				[1]: Dash_upvr (copied, readonly)
				[2]: hasSentRequest_upvr (readonly)
			]]
			return Dash_upvr.join(arg1_9, {
				hasSentRequest = hasSentRequest_upvr[arg1_9.id];
			})
		end)
	end, var11_upvr, function(arg1_10) -- Line 34
		--[[ Upvalues[2]:
			[1]: Dash_upvr (copied, readonly)
			[2]: var32_upvr (readonly)
		]]
		local module_upvr_2 = {}
		Dash_upvr.forEach(arg1_10, function(arg1_11) -- Line 37
			--[[ Upvalues[3]:
				[1]: var32_upvr (copied, readonly)
				[2]: module_upvr_2 (readonly)
				[3]: Dash_upvr (copied, readonly)
			]]
			if not var32_upvr.deviceContactToRobloxContact or not var32_upvr.deviceContactToRobloxContact[arg1_11.id] then
				module_upvr_2[arg1_11.id] = Dash_upvr.join(arg1_11, {
					deviceContactId = arg1_11.id;
					isMatchedContact = false;
					id = Dash_upvr.None;
				})
			end
		end)
		return module_upvr_2
	end, var19_upvr, var20_upvr)(var41)
end