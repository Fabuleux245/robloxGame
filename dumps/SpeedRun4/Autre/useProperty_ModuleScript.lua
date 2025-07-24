-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:41
-- Luau version 6, Types version 3
-- Time taken: 0.002518 seconds

local function _(arg1) -- Line 10, Named "getRefValue"
	if typeof(arg1) == "table" then
		return arg1.current
	end
	return arg1
end
local React_upvr = require(script:FindFirstAncestor("GuiObjectUtils").Parent.React)
return function(arg1, arg2) -- Line 47, Named "useProperty"
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	local var2_upvr
	if typeof(arg1) == "table" then
		var2_upvr = arg1.current
	else
		var2_upvr = arg1
	end
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(function() -- Line 50
		--[[ Upvalues[2]:
			[1]: var2_upvr (readonly)
			[2]: arg2 (readonly)
		]]
		if var2_upvr then
			return var2_upvr[arg2]
		end
		return nil
	end)
	local tbl_2 = {}
	tbl_2[1] = arg1
	tbl_2[2] = arg2
	local any_useCallback_result1_upvr = React_upvr.useCallback(function() -- Line 55
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: any_useState_result2_upvr (readonly)
		]]
		local var7 = arg1
		local var8
		if typeof(var7) == "table" then
			var8 = var7.current
		else
			var8 = var7
		end
		if var8 then
			any_useState_result2_upvr(var8[arg2])
		end
	end, tbl_2)
	local tbl = {var2_upvr}
	tbl[2] = arg2
	tbl[3] = any_useCallback_result1_upvr
	React_upvr.useEffect(function() -- Line 66
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: any_useCallback_result1_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var12 = arg1
		local var13
		if typeof(var12) == "table" then
			var13 = var12.current
		else
			var13 = var12
		end
		if var13 then
			any_useCallback_result1_upvr()
		end
		local any_Connect_result1_upvw = var13:GetPropertyChangedSignal(arg2):Connect(any_useCallback_result1_upvr)
		return function() -- Line 76
			--[[ Upvalues[1]:
				[1]: any_Connect_result1_upvw (read and write)
			]]
			if any_Connect_result1_upvw then
				any_Connect_result1_upvw:Disconnect()
			end
		end
	end, tbl)
	return any_useState_result1
end