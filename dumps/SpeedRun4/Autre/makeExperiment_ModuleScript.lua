-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:58:46
-- Luau version 6, Types version 3
-- Time taken: 0.001845 seconds

local IXPService_upvr = game:GetService("IXPService")
return function(arg1, arg2, arg3, arg4, arg5) -- Line 23, Named "makeExperiment"
	--[[ Upvalues[1]:
		[1]: IXPService_upvr (readonly)
	]]
	local tbl = {}
	tbl[1] = arg1
	tbl[2] = arg2
	tbl[3] = arg3
	tbl[4] = arg4
	tbl[5] = arg5
	for _, v in tbl do
		if not IXPService_upvr[v] then
			error("makeExperiment factory expects configured members to exist on IXPService. Member "..v.." not found")
		end
	end
	return function(arg1_2, arg2_2, arg3_2, arg4_2) -- Line 44
		--[[ Upvalues[6]:
			[1]: IXPService_upvr (copied, readonly)
			[2]: arg3 (readonly)
			[3]: arg5 (readonly)
			[4]: arg4 (readonly)
			[5]: arg2 (readonly)
			[6]: arg1 (readonly)
		]]
		if arg4_2 == nil then
		end
		if type(arg2_2) ~= "table" then
		else
		end
		assert(true, "makeExperiment expects layerNames to be a list of layers")
		if type(arg3_2) ~= "function" then
		else
		end
		assert(true, "makeExperiment expects mapLayers to be a function")
		local function updateStateLayerData_upvr(arg1_3) -- Line 57, Named "updateStateLayerData"
			--[[ Upvalues[4]:
				[1]: arg2_2 (readonly)
				[2]: IXPService_upvr (copied, readonly)
				[3]: arg3 (copied, readonly)
				[4]: arg3_2 (readonly)
			]]
			local tbl_2 = {}
			for _, v_2 in ipairs(arg2_2) do
				tbl_2[v_2] = IXPService_upvr[arg3](IXPService_upvr, v_2)
			end
			local tbl_3 = {
				layerToVariables = tbl_2;
			}
			tbl_3.layerLoadingStatus = arg1_3
			arg3_2(tbl_3)
		end
		local function logAllLayersExposure_upvr() -- Line 69, Named "logAllLayersExposure"
			--[[ Upvalues[4]:
				[1]: arg2_2 (readonly)
				[2]: IXPService_upvr (copied, readonly)
				[3]: arg5 (copied, readonly)
				[4]: arg4 (copied, readonly)
			]]
			for _, v_3 in ipairs(arg2_2) do
				if IXPService_upvr[arg5](IXPService_upvr, v_3) == Enum.IXPLoadingStatus.Initialized then
					IXPService_upvr[arg4](IXPService_upvr, v_3)
				end
			end
		end
		updateStateLayerData_upvr(IXPService_upvr[arg2](IXPService_upvr))
		local var21_upvw = true
		local any_Connect_result1_upvr = IXPService_upvr[arg1]:Connect(function() -- Line 81
			--[[ Upvalues[5]:
				[1]: IXPService_upvr (copied, readonly)
				[2]: arg2 (copied, readonly)
				[3]: updateStateLayerData_upvr (readonly)
				[4]: var21_upvw (read and write)
				[5]: logAllLayersExposure_upvr (readonly)
			]]
			local any_any_result1 = IXPService_upvr[arg2](IXPService_upvr)
			updateStateLayerData_upvr(any_any_result1)
			if var21_upvw and any_any_result1 == Enum.IXPLoadingStatus.Initialized then
				logAllLayersExposure_upvr()
			end
		end)
		arg1_2.Destroying:Once(function() -- Line 95
			--[[ Upvalues[1]:
				[1]: any_Connect_result1_upvr (readonly)
			]]
			any_Connect_result1_upvr:Disconnect()
		end)
		return any_Connect_result1_upvr
	end
end