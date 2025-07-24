-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:32:06
-- Luau version 6, Types version 3
-- Time taken: 0.004227 seconds

local Parent = script:FindFirstAncestor("ToastLite").Parent
local Cryo_upvr = require(Parent.Cryo)
local ToastRodux = require(Parent.ToastRodux)
local function _(arg1, arg2) -- Line 8, Named "messagesAreEqual"
	local var5 = false
	if arg1.toastTitle == arg2.toastTitle then
		var5 = false
		if arg1.toastSubtitle == arg2.toastSubtitle then
			if arg1.toastType ~= arg2.toastType then
				var5 = false
			else
				var5 = true
			end
		end
	end
	return var5
end
local function _(arg1, arg2) -- Line 14, Named "messageIsAlreadyPresent"
	for _, v in ipairs(arg1) do
		local var21 = false
		if v.toastTitle == arg2.toastTitle then
			var21 = false
			if v.toastSubtitle == arg2.toastSubtitle then
				if v.toastType ~= arg2.toastType then
					var21 = false
				else
					var21 = true
				end
			end
		end
		if var21 then
			return true
		end
	end
	return false
end
local module = {}
local var24_upvw = 0
module[ToastRodux.Actions.SetCurrentToastMessage.name] = function(arg1, arg2) -- Line 26
	--[[ Upvalues[2]:
		[1]: Cryo_upvr (readonly)
		[2]: var24_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local _ = Cryo_upvr.Dictionary.join(arg2.toastMessage, {
		sequenceNumber = var24_upvw;
	})
	var24_upvw += 1
	local ipairs_result1_4, ipairs_result2, ipairs_result3_2 = ipairs(arg1)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [45] 32. Error Block 9 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [45] 32. Error Block 9 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [20] 16. Error Block 21 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [45.10]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [45.2147483650]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [45.11]
	if nil == nil then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		if nil == nil then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
			if nil ~= nil then
			else
			end
		end
	end
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [45.9]
	if nil then
		-- KONSTANTWARNING: GOTO [48] #34
	end
	-- KONSTANTERROR: [20] 16. Error Block 21 end (CF ANALYSIS FAILED)
end
module[ToastRodux.Actions.RemoveCurrentToastMessage.name] = function(arg1, arg2) -- Line 39
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	if #arg1 == 0 then
		return arg1
	end
	return Cryo_upvr.List.removeIndex(arg1, 1)
end
module[ToastRodux.Actions.RemoveAllToastMessages.name] = function(arg1, arg2) -- Line 46
	return {}
end
return require(Parent.Rodux).createReducer({}, module)