-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:42
-- Luau version 6, Types version 3
-- Time taken: 0.001774 seconds

local GuiService_upvr = game:GetService("GuiService")
local function _(arg1) -- Line 12, Named "isGuiObjectSelected"
	--[[ Upvalues[1]:
		[1]: GuiService_upvr (readonly)
	]]
	if arg1.current == nil then
		return false
	end
	local var2 = true
	if GuiService_upvr.SelectedCoreObject ~= arg1.current then
		if GuiService_upvr.SelectedObject ~= arg1.current then
			var2 = false
		else
			var2 = true
		end
	end
	return var2
end
local React_upvr = require(script:FindFirstAncestor("GuiObjectUtils").Parent.React)
return function(arg1) -- Line 19, Named "useSelected"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: GuiService_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(function() -- Line 20
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: GuiService_upvr (copied, readonly)
		]]
		local var5 = arg1
		if var5.current == nil then
			return false
		end
		local var6 = true
		if GuiService_upvr.SelectedCoreObject ~= var5.current then
			if GuiService_upvr.SelectedObject ~= var5.current then
				var6 = false
			else
				var6 = true
			end
		end
		return var6
	end)
	local tbl_3 = {}
	tbl_3[1] = arg1
	React_upvr.useEffect(function() -- Line 25
		--[[ Upvalues[3]:
			[1]: any_useState_result2_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: GuiService_upvr (copied, readonly)
		]]
		local var10 = arg1
		local var11
		if var10.current == nil then
			var11 = false
		else
			var11 = true
			if GuiService_upvr.SelectedCoreObject ~= var10.current then
				if GuiService_upvr.SelectedObject ~= var10.current then
					var11 = false
				else
					var11 = true
				end
			end
		end
		any_useState_result2_upvr(var11)
	end, tbl_3)
	local tbl = {}
	tbl[1] = arg1
	React_upvr.useEffect(function() -- Line 33
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: any_useState_result2_upvr (readonly)
		]]
		local tbl_2_upvr = {}
		local current = arg1.current
		if current then
			table.insert(tbl_2_upvr, current.SelectionGained:Connect(function() -- Line 39
				--[[ Upvalues[1]:
					[1]: any_useState_result2_upvr (copied, readonly)
				]]
				any_useState_result2_upvr(true)
			end))
			table.insert(tbl_2_upvr, current.SelectionLost:Connect(function() -- Line 45
				--[[ Upvalues[1]:
					[1]: any_useState_result2_upvr (copied, readonly)
				]]
				any_useState_result2_upvr(false)
			end))
		end
		return function() -- Line 51
			--[[ Upvalues[1]:
				[1]: tbl_2_upvr (readonly)
			]]
			for _, v in ipairs(tbl_2_upvr) do
				v:Disconnect()
			end
		end
	end, tbl)
	return any_useState_result1
end