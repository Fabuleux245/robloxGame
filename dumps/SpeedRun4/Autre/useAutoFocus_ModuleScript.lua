-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:05:53
-- Luau version 6, Types version 3
-- Time taken: 0.003228 seconds

local Parent = script:FindFirstAncestor("FocusNavigationUtils").Parent
local CoreGui_upvr = game:GetService("CoreGui")
local function var2_upvr(arg1, arg2, arg3) -- Line 16
	--[[ Upvalues[1]:
		[1]: CoreGui_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var12_upvw
	if #arg2 ~= 0 then
		var12_upvw = false
	else
		var12_upvw = true
	end
	local tbl_upvr = {}
	local tbl_upvr_2 = {}
	local function _() -- Line 21, Named "disconnect"
		--[[ Upvalues[2]:
			[1]: var12_upvw (read and write)
			[2]: tbl_upvr (readonly)
		]]
		if not var12_upvw then
			var12_upvw = true
			for _, v in tbl_upvr do
				v:Disconnect()
			end
		end
	end
	local function focus_upvr(arg1_3) -- Line 36, Named "focus"
		--[[ Upvalues[7]:
			[1]: arg1 (readonly)
			[2]: var12_upvw (read and write)
			[3]: arg2 (readonly)
			[4]: CoreGui_upvr (copied, readonly)
			[5]: arg3 (readonly)
			[6]: focus_upvr (readonly)
			[7]: tbl_upvr_2 (readonly)
		]]
		table.insert(tbl_upvr_2, task.delay(arg1, function() -- Line 37
			--[[ Upvalues[6]:
				[1]: var12_upvw (copied, read and write)
				[2]: arg2 (copied, readonly)
				[3]: arg1_3 (readonly)
				[4]: CoreGui_upvr (copied, readonly)
				[5]: arg3 (copied, readonly)
				[6]: focus_upvr (copied, readonly)
			]]
			local var22
			if not var12_upvw then
				var22 = arg2
				local var23 = var22[arg1_3]
				if var23 then
					var22 = var23:IsDescendantOf(CoreGui_upvr)
					if var22 then
						var22 = arg3:focusGuiObject
						var22(var23, false)
					end
				end
				if #arg2 < arg1_3 then
					var22 = 1
				else
					var22 = arg1_3 % #arg2 + 1
				end
				focus_upvr(var22)
			end
		end))
	end
	for _, v_3 in arg2 do
		table.insert(tbl_upvr, v_3.SelectionChanged:Connect(function(arg1_2, arg2_2, arg3_2) -- Line 30, Named "onFocusChange"
			--[[ Upvalues[2]:
				[1]: var12_upvw (read and write)
				[2]: tbl_upvr (readonly)
			]]
			if arg3_2 and not var12_upvw then
				var12_upvw = true
				for _, v_2 in tbl_upvr do
					v_2:Disconnect()
				end
			end
		end))
		local var24_upvr
	end
	local var26_upvr = 1
	var26_upvr = task.delay(arg1, function() -- Line 37
		--[[ Upvalues[6]:
			[1]: var12_upvw (read and write)
			[2]: arg2 (readonly)
			[3]: var26_upvr (readonly)
			[4]: CoreGui_upvr (copied, readonly)
			[5]: arg3 (readonly)
			[6]: focus_upvr (readonly)
		]]
		local var27
		if not var12_upvw then
			var27 = arg2
			local var28 = var27[var26_upvr]
			if var28 then
				var27 = var28:IsDescendantOf(CoreGui_upvr)
				if var27 then
					var27 = arg3:focusGuiObject
					var27(var28, false)
				end
			end
			if #arg2 < var26_upvr then
				var27 = 1
			else
				var27 = var26_upvr % #arg2 + 1
			end
			focus_upvr(var27)
		end
	end)
	table.insert(tbl_upvr_2, var26_upvr)
	return {
		cancel = function() -- Line 57, Named "cancel"
			--[[ Upvalues[3]:
				[1]: tbl_upvr_2 (readonly)
				[2]: var12_upvw (read and write)
				[3]: var24_upvr (readonly)
			]]
			for _, v_4 in tbl_upvr_2 do
				task.cancel(v_4)
			end
			table.clear(tbl_upvr_2)
			if not var12_upvw then
				var12_upvw = true
				for _, v_5 in var24_upvr do
					v_5:Disconnect()
				end
			end
		end;
	}
end
local React_upvr = require(Parent.React)
local FocusNavigationContext_upvr = require(Parent.ReactFocusNavigation).FocusNavigationContext
return function(arg1, arg2) -- Line 85
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: FocusNavigationContext_upvr (readonly)
		[3]: var2_upvr (readonly)
	]]
	local any_useContext_result1_upvr = React_upvr.useContext(FocusNavigationContext_upvr)
	local module = {any_useContext_result1_upvr}
	module[2] = arg1
	module[3] = arg2
	return React_upvr.useCallback(function() -- Line 88
		--[[ Upvalues[4]:
			[1]: any_useContext_result1_upvr (readonly)
			[2]: var2_upvr (copied, readonly)
			[3]: arg2 (readonly)
			[4]: arg1 (readonly)
		]]
		if any_useContext_result1_upvr then
			return var2_upvr(arg2, arg1, any_useContext_result1_upvr)
		end
		return nil
	end, module)
end