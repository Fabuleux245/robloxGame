-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:05:55
-- Luau version 6, Types version 3
-- Time taken: 0.004657 seconds

local GuiService_upvr = game:GetService("GuiService")
local function _(arg1) -- Line 6, Named "hasFocus"
	--[[ Upvalues[1]:
		[1]: GuiService_upvr (readonly)
	]]
	local SelectedCoreObject_2 = GuiService_upvr.SelectedCoreObject
	if arg1 and SelectedCoreObject_2 then
		local var3 = true
		if SelectedCoreObject_2 ~= arg1 then
			var3 = SelectedCoreObject_2:IsDescendantOf(arg1)
		end
		local var4 = var3
		if var4 then
			if SelectedCoreObject_2:FindFirstAncestorOfClass("CoreGui") == nil then
				var4 = false
			else
				var4 = true
			end
		end
		return var4
	end
	return false
end
local React_upvr = require(script:FindFirstAncestor("FocusNavigationUtils").Parent.React)
return function(arg1) -- Line 18, Named "useDescendantHasFocus"
	--[[ Upvalues[2]:
		[1]: GuiService_upvr (readonly)
		[2]: React_upvr (readonly)
	]]
	local SelectedCoreObject_5 = GuiService_upvr.SelectedCoreObject
	local var7
	if arg1 and SelectedCoreObject_5 then
		local var8 = true
		if SelectedCoreObject_5 ~= arg1 then
			var8 = SelectedCoreObject_5:IsDescendantOf(arg1)
		end
		var7 = var8
		if var7 then
			if SelectedCoreObject_5:FindFirstAncestorOfClass("CoreGui") == nil then
				var7 = false
			else
				var7 = true
			end
			-- KONSTANTWARNING: GOTO [25] #21
		end
	else
		var7 = false
	end
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(var7)
	local tbl = {}
	tbl[1] = arg1
	React_upvr.useEffect(function() -- Line 22
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: any_useState_result2_upvr (readonly)
			[3]: GuiService_upvr (copied, readonly)
		]]
		local var12_upvw
		local var13_upvw
		local var14
		if arg1 then
			local var15 = arg1
			local SelectedCoreObject_4 = GuiService_upvr.SelectedCoreObject
			if var15 and SelectedCoreObject_4 then
				local var17 = true
				if SelectedCoreObject_4 ~= var15 then
					var17 = SelectedCoreObject_4:IsDescendantOf(var15)
				end
				var14 = var17
				if var14 then
					if SelectedCoreObject_4:FindFirstAncestorOfClass("CoreGui") == nil then
						var14 = false
					else
						var14 = true
					end
					-- KONSTANTWARNING: GOTO [31] #27
				end
			else
				var14 = false
			end
			any_useState_result2_upvr(var14)
			var12_upvw = GuiService_upvr:GetPropertyChangedSignal("SelectedCoreObject"):Connect(function() -- Line 28
				--[[ Upvalues[4]:
					[1]: var13_upvw (read and write)
					[2]: arg1 (copied, readonly)
					[3]: GuiService_upvr (copied, readonly)
					[4]: any_useState_result2_upvr (copied, readonly)
				]]
				local var19
				if var19 then
					var19 = var13_upvw:Disconnect
					var19()
				end
				local var20 = arg1
				local SelectedCoreObject_3 = GuiService_upvr.SelectedCoreObject
				if var20 and SelectedCoreObject_3 then
					local var22 = true
					if SelectedCoreObject_3 ~= var20 then
						var22 = SelectedCoreObject_3:IsDescendantOf(var20)
					end
					var19 = var22
					if var19 then
						if SelectedCoreObject_3:FindFirstAncestorOfClass("CoreGui") == nil then
							var19 = false
						else
							var19 = true
						end
						-- KONSTANTWARNING: GOTO [32] #27
					end
				else
					var19 = false
				end
				local SelectedCoreObject_6_upvr = GuiService_upvr.SelectedCoreObject
				if var19 and SelectedCoreObject_6_upvr then
					var13_upvw = SelectedCoreObject_6_upvr.AncestryChanged:Connect(function() -- Line 36
						--[[ Upvalues[5]:
							[1]: SelectedCoreObject_6_upvr (readonly)
							[2]: var13_upvw (copied, read and write)
							[3]: any_useState_result2_upvr (copied, readonly)
							[4]: arg1 (copied, readonly)
							[5]: GuiService_upvr (copied, readonly)
						]]
						-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
						-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
						-- KONSTANTERROR: [7] 6. Error Block 20 start (CF ANALYSIS FAILED)
						var13_upvw:Disconnect()
						local var25 = arg1
						local SelectedCoreObject = GuiService_upvr.SelectedCoreObject
						if var25 and SelectedCoreObject then
							local var27 = true
							if SelectedCoreObject ~= var25 then
								var27 = SelectedCoreObject:IsDescendantOf(var25)
							end
							if var27 then
								if SelectedCoreObject:FindFirstAncestorOfClass("CoreGui") == nil then
								else
								end
								-- KONSTANTWARNING: GOTO [38] #31
							end
						else
						end
						-- KONSTANTERROR: [7] 6. Error Block 20 end (CF ANALYSIS FAILED)
					end)
				end
				any_useState_result2_upvr(var19)
			end)
		else
			var14 = false
			any_useState_result2_upvr(var14)
		end
		return function() -- Line 50
			--[[ Upvalues[2]:
				[1]: var12_upvw (read and write)
				[2]: var13_upvw (read and write)
			]]
			if var12_upvw then
				var12_upvw:Disconnect()
			end
			if var13_upvw then
				var13_upvw:Disconnect()
			end
		end
	end, tbl)
	return any_useState_result1
end