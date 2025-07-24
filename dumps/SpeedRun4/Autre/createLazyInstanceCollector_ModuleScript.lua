-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:05:04
-- Luau version 6, Types version 3
-- Time taken: 0.003803 seconds

local DataModelTraversalOptions_upvr = require(script:FindFirstAncestor("SceneUnderstanding").options.DataModelTraversalOptions)
return function(arg1, arg2, arg3) -- Line 9, Named "createLazyInstanceCollector"
	--[[ Upvalues[1]:
		[1]: DataModelTraversalOptions_upvr (readonly)
	]]
	local any_new_result1_upvr = DataModelTraversalOptions_upvr.new(arg3)
	local var3_upvw = false
	local module_upvr = {}
	local tbl_upvr = {}
	local var6_upvw
	local tbl_upvr_2 = {}
	local tbl_upvw = {}
	local function _() -- Line 24, Named "getBatchCount"
		--[[ Upvalues[2]:
			[1]: tbl_upvr_2 (readonly)
			[2]: any_new_result1_upvr (readonly)
		]]
		return math.min(#tbl_upvr_2, any_new_result1_upvr.instanceProcessingLimit)
	end
	local function onAncestryChanged_upvr(arg1_2) -- Line 28, Named "onAncestryChanged"
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		if arg1_2.Parent == nil then
			local table_find_result1 = table.find(module_upvr, arg1_2)
			if table_find_result1 then
				table.remove(module_upvr, table_find_result1)
			end
		end
	end
	local var11_upvw = 0
	local function processStack_upvr() -- Line 37, Named "processStack"
		--[[ Upvalues[9]:
			[1]: tbl_upvr_2 (readonly)
			[2]: any_new_result1_upvr (readonly)
			[3]: arg2 (readonly)
			[4]: module_upvr (readonly)
			[5]: tbl_upvr (readonly)
			[6]: onAncestryChanged_upvr (readonly)
			[7]: var11_upvw (read and write)
			[8]: tbl_upvw (read and write)
			[9]: var3_upvw (read and write)
		]]
		local minimum = math.min(#tbl_upvr_2, any_new_result1_upvr.instanceProcessingLimit)
		for _ = 1, minimum do
			local popped = table.remove(tbl_upvr_2, #tbl_upvr_2)
			if popped then
				if not arg2 or arg2(popped) then
					table.insert(module_upvr, popped)
					table.insert(tbl_upvr, popped.AncestryChanged:Connect(onAncestryChanged_upvr))
				end
				for _, v in popped:GetChildren() do
					table.insert(tbl_upvr_2, v)
				end
			end
		end
		var11_upvw += minimum
		for i_3_upvr in tbl_upvw do
			task.spawn(function() -- Line 58
				--[[ Upvalues[2]:
					[1]: i_3_upvr (readonly)
					[2]: module_upvr (copied, readonly)
				]]
				i_3_upvr(module_upvr)
			end)
		end
		if #tbl_upvr_2 == 0 then
			var3_upvw = false
			return false
		end
		if any_new_result1_upvr.instanceProcessingLimit <= var11_upvw then
			var11_upvw = 0
			return true
		end
		return false
	end
	local function _() -- Line 80, Named "startProcessingLoop"
		--[[ Upvalues[5]:
			[1]: var3_upvw (read and write)
			[2]: tbl_upvr_2 (readonly)
			[3]: any_new_result1_upvr (readonly)
			[4]: processStack_upvr (readonly)
			[5]: var6_upvw (read and write)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 3. Error Block 7 start (CF ANALYSIS FAILED)
		if math.min(#tbl_upvr_2, any_new_result1_upvr.instanceProcessingLimit) == 0 then
			-- KONSTANTERROR: [14] 11. Error Block 3 start (CF ANALYSIS FAILED)
			do
				return
			end
			-- KONSTANTERROR: [14] 11. Error Block 3 end (CF ANALYSIS FAILED)
		end
		var3_upvw = true
		processStack_upvr()
		var6_upvw = task.spawn(function() -- Line 89
			--[[ Upvalues[2]:
				[1]: var3_upvw (copied, read and write)
				[2]: processStack_upvr (copied, readonly)
			]]
			task.wait()
			while var3_upvw do
				if var3_upvw and processStack_upvr() then
					task.wait()
				end
			end
		end)
		-- KONSTANTERROR: [2] 3. Error Block 7 end (CF ANALYSIS FAILED)
	end
	local function onDescendantAdded_upvr(arg1_3) -- Line 102, Named "onDescendantAdded"
		--[[ Upvalues[5]:
			[1]: tbl_upvr_2 (readonly)
			[2]: var3_upvw (read and write)
			[3]: any_new_result1_upvr (readonly)
			[4]: processStack_upvr (readonly)
			[5]: var6_upvw (read and write)
		]]
		table.insert(tbl_upvr_2, arg1_3)
		if not var3_upvw and not var3_upvw then
			if math.min(#tbl_upvr_2, any_new_result1_upvr.instanceProcessingLimit) == 0 then return end
			var3_upvw = true
			processStack_upvr()
			var6_upvw = task.spawn(function() -- Line 89
				--[[ Upvalues[2]:
					[1]: var3_upvw (copied, read and write)
					[2]: processStack_upvr (copied, readonly)
				]]
				task.wait()
				while var3_upvw do
					if var3_upvw and processStack_upvr() then
						task.wait()
					end
				end
			end)
		end
	end
	return {
		setInstancesProcessedPerFrame = function(arg1_5) -- Line 143, Named "setInstancesProcessedPerFrame"
			--[[ Upvalues[5]:
				[1]: any_new_result1_upvr (readonly)
				[2]: var3_upvw (read and write)
				[3]: tbl_upvr_2 (readonly)
				[4]: processStack_upvr (readonly)
				[5]: var6_upvw (read and write)
			]]
			any_new_result1_upvr.instanceProcessingLimit = math.clamp(arg1_5, 0, math.huge)
			if not var3_upvw then
				if math.min(#tbl_upvr_2, any_new_result1_upvr.instanceProcessingLimit) == 0 then return end
				var3_upvw = true
				processStack_upvr()
				var6_upvw = task.spawn(function() -- Line 89
					--[[ Upvalues[2]:
						[1]: var3_upvw (copied, read and write)
						[2]: processStack_upvr (copied, readonly)
					]]
					task.wait()
					while var3_upvw do
						if var3_upvw and processStack_upvr() then
							task.wait()
						end
					end
				end)
			end
		end;
		listen = function() -- Line 110, Named "listen"
			--[[ Upvalues[8]:
				[1]: arg1 (readonly)
				[2]: tbl_upvr (readonly)
				[3]: onDescendantAdded_upvr (readonly)
				[4]: tbl_upvr_2 (readonly)
				[5]: var3_upvw (read and write)
				[6]: any_new_result1_upvr (readonly)
				[7]: processStack_upvr (readonly)
				[8]: var6_upvw (read and write)
			]]
			for i_4, v_2 in arg1 do
				table.insert(tbl_upvr, v_2.DescendantAdded:Connect(onDescendantAdded_upvr))
				for _, v_3 in v_2:GetChildren() do
					table.insert(tbl_upvr_2, v_3)
				end
			end
			if not var3_upvw then
				i_4 = any_new_result1_upvr
				if math.min(#tbl_upvr_2, i_4.instanceProcessingLimit) == 0 then return end
				var3_upvw = true
				processStack_upvr()
				var6_upvw = task.spawn(function() -- Line 89
					--[[ Upvalues[2]:
						[1]: var3_upvw (copied, read and write)
						[2]: processStack_upvr (copied, readonly)
					]]
					task.wait()
					while var3_upvw do
						if var3_upvw and processStack_upvr() then
							task.wait()
						end
					end
				end)
			end
		end;
		get = function() -- Line 148, Named "get"
			--[[ Upvalues[1]:
				[1]: module_upvr (readonly)
			]]
			return module_upvr
		end;
		destroy = function() -- Line 129, Named "destroy"
			--[[ Upvalues[4]:
				[1]: var3_upvw (read and write)
				[2]: tbl_upvr (readonly)
				[3]: tbl_upvw (read and write)
				[4]: var6_upvw (read and write)
			]]
			var3_upvw = false
			for _, v_4 in tbl_upvr do
				v_4:Disconnect()
			end
			tbl_upvw = {}
			if var6_upvw then
				task.cancel(var6_upvw)
			end
		end;
		onStepped = function(arg1_4) -- Line 122, Named "onStepped"
			--[[ Upvalues[1]:
				[1]: tbl_upvw (read and write)
			]]
			tbl_upvw[arg1_4] = true
			return function() -- Line 124
				--[[ Upvalues[2]:
					[1]: tbl_upvw (copied, read and write)
					[2]: arg1_4 (readonly)
				]]
				tbl_upvw[arg1_4] = nil
			end
		end;
	}
end