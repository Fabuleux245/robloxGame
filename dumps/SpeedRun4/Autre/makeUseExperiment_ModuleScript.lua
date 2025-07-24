-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:14
-- Luau version 6, Types version 3
-- Time taken: 0.003452 seconds

local RoactAppExperiment = script:FindFirstAncestor("RoactAppExperiment")
local function _(arg1) -- Line 21, Named "getLayerNamesKey"
	local var9
	for i, v in ipairs(arg1) do
		if 1 < i then
			var9 = var9..','
		end
		var9 = var9..v
	end
	return var9
end
local useIXPService_upvr = require(RoactAppExperiment.useIXPService)
local React_upvr = require(RoactAppExperiment.Parent.React)
local usePrevious_upvr = require(script.Parent.usePrevious)
return function(arg1, arg2, arg3, arg4, arg5) -- Line 35, Named "makeUseExperiment"
	--[[ Upvalues[3]:
		[1]: useIXPService_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: usePrevious_upvr (readonly)
	]]
	return function(arg1_2, arg2_2, arg3_2) -- Line 45
		--[[ Upvalues[8]:
			[1]: useIXPService_upvr (copied, readonly)
			[2]: arg3 (readonly)
			[3]: arg2 (readonly)
			[4]: React_upvr (copied, readonly)
			[5]: arg1 (readonly)
			[6]: usePrevious_upvr (copied, readonly)
			[7]: arg5 (readonly)
			[8]: arg4 (readonly)
		]]
		if arg3_2 == nil then
			local var18_upvw = true
		end
		local useIXPService_upvr_result1_upvr = useIXPService_upvr()
		if type(arg1_2) ~= "table" then
		else
		end
		assert(true, "useExperiment expects layerNames to be a list of layers")
		if type(arg2_2) ~= "function" then
		else
		end
		assert(true, "useExperiment expects mapLayers to be a function")
		local function getNewLayerToVariables_upvr() -- Line 59, Named "getNewLayerToVariables"
			--[[ Upvalues[3]:
				[1]: arg1_2 (readonly)
				[2]: useIXPService_upvr_result1_upvr (readonly)
				[3]: arg3 (copied, readonly)
			]]
			local module = {}
			for _, v_2 in ipairs(arg1_2) do
				module[v_2] = useIXPService_upvr_result1_upvr[arg3](useIXPService_upvr_result1_upvr, v_2)
				if module[v_2] and not next(module[v_2]) then
					module[v_2] = nil
				end
			end
			return module
		end
		local any_useState_result1, any_useState_result2_upvr_2 = React_upvr.useState(getNewLayerToVariables_upvr)
		local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(function() -- Line 75, Named "getLoadingStatus"
			--[[ Upvalues[2]:
				[1]: useIXPService_upvr_result1_upvr (readonly)
				[2]: arg2 (copied, readonly)
			]]
			return useIXPService_upvr_result1_upvr[arg2](useIXPService_upvr_result1_upvr)
		end)
		for i_3, v_3 in ipairs(arg1_2) do
			local var33
			if 1 < i_3 then
				var33 = var33..','
			end
			var33 = var33..v_3
		end
		local var34 = var33
		React_upvr.useEffect(function() -- Line 86
			--[[ Upvalues[6]:
				[1]: useIXPService_upvr_result1_upvr (readonly)
				[2]: arg2 (copied, readonly)
				[3]: getNewLayerToVariables_upvr (readonly)
				[4]: any_useState_result2_upvr_2 (readonly)
				[5]: any_useState_result2_upvr (readonly)
				[6]: arg1 (copied, readonly)
			]]
			if useIXPService_upvr_result1_upvr == nil then
				return function() -- Line 88
				end
			end
			local function _() -- Line 91, Named "updateStateLayerData"
				--[[ Upvalues[5]:
					[1]: useIXPService_upvr_result1_upvr (copied, readonly)
					[2]: arg2 (copied, readonly)
					[3]: getNewLayerToVariables_upvr (copied, readonly)
					[4]: any_useState_result2_upvr_2 (copied, readonly)
					[5]: any_useState_result2_upvr (copied, readonly)
				]]
				local getNewLayerToVariables_upvr_result1_upvr = getNewLayerToVariables_upvr()
				any_useState_result2_upvr_2(function(arg1_3) -- Line 95
					--[[ Upvalues[1]:
						[1]: getNewLayerToVariables_upvr_result1_upvr (readonly)
					]]
					if not next(getNewLayerToVariables_upvr_result1_upvr) ~= not next(arg1_3) then
						return getNewLayerToVariables_upvr_result1_upvr
					end
					return arg1_3
				end)
				any_useState_result2_upvr(useIXPService_upvr_result1_upvr[arg2](useIXPService_upvr_result1_upvr))
			end
			local getNewLayerToVariables_upvr_result1_upvr_2 = getNewLayerToVariables_upvr()
			any_useState_result2_upvr_2(function(arg1_6) -- Line 95
				--[[ Upvalues[1]:
					[1]: getNewLayerToVariables_upvr_result1_upvr_2 (readonly)
				]]
				if not next(getNewLayerToVariables_upvr_result1_upvr_2) ~= not next(arg1_6) then
					return getNewLayerToVariables_upvr_result1_upvr_2
				end
				return arg1_6
			end)
			any_useState_result2_upvr(useIXPService_upvr_result1_upvr[arg2](useIXPService_upvr_result1_upvr))
			local any_Connect_result1_upvr = useIXPService_upvr_result1_upvr[arg1]:Connect(function(arg1_4) -- Line 106
				--[[ Upvalues[5]:
					[1]: useIXPService_upvr_result1_upvr (copied, readonly)
					[2]: arg2 (copied, readonly)
					[3]: getNewLayerToVariables_upvr (copied, readonly)
					[4]: any_useState_result2_upvr_2 (copied, readonly)
					[5]: any_useState_result2_upvr (copied, readonly)
				]]
				local getNewLayerToVariables_upvr_result1_upvr_3 = getNewLayerToVariables_upvr()
				any_useState_result2_upvr_2(function(arg1_5) -- Line 95
					--[[ Upvalues[1]:
						[1]: getNewLayerToVariables_upvr_result1_upvr_3 (readonly)
					]]
					if not next(getNewLayerToVariables_upvr_result1_upvr_3) ~= not next(arg1_5) then
						return getNewLayerToVariables_upvr_result1_upvr_3
					end
					return arg1_5
				end)
				any_useState_result2_upvr(useIXPService_upvr_result1_upvr[arg2](useIXPService_upvr_result1_upvr))
			end)
			return function() -- Line 117
				--[[ Upvalues[1]:
					[1]: any_Connect_result1_upvr (readonly)
				]]
				if any_Connect_result1_upvr ~= nil then
					any_Connect_result1_upvr:Disconnect()
				end
			end
		end, {useIXPService_upvr_result1_upvr, var34})
		local var12_result1_upvr = usePrevious_upvr(any_useState_result1_upvr)
		if not var12_result1_upvr then
			var12_result1_upvr = Enum.IXPLoadingStatus.None
		end
		React_upvr.useEffect(function() -- Line 127
			--[[ Upvalues[7]:
				[1]: var18_upvw (read and write)
				[2]: useIXPService_upvr_result1_upvr (readonly)
				[3]: any_useState_result1_upvr (readonly)
				[4]: var12_result1_upvr (readonly)
				[5]: arg1_2 (readonly)
				[6]: arg5 (copied, readonly)
				[7]: arg4 (copied, readonly)
			]]
			if var18_upvw and useIXPService_upvr_result1_upvr ~= nil and any_useState_result1_upvr == Enum.IXPLoadingStatus.Initialized and var12_result1_upvr ~= Enum.IXPLoadingStatus.Initialized then
				for _, v_4 in ipairs(arg1_2) do
					if useIXPService_upvr_result1_upvr[arg5](useIXPService_upvr_result1_upvr, v_4) == Enum.IXPLoadingStatus.Initialized then
						useIXPService_upvr_result1_upvr[arg4](useIXPService_upvr_result1_upvr, v_4)
					end
				end
			end
		end, {useIXPService_upvr_result1_upvr, var34, var18_upvw, any_useState_result1_upvr, var12_result1_upvr})
		return arg2_2(any_useState_result1)
	end
end