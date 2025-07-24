-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:46
-- Luau version 6, Types version 3
-- Time taken: 0.002510 seconds

local CorePackages = game:GetService("CorePackages")
local GuiService_upvr = game:GetService("GuiService")
local function _(arg1) -- Line 24, Named "convertCoreUIPointToHardwareSafeAreaPoint"
	--[[ Upvalues[1]:
		[1]: GuiService_upvr (readonly)
	]]
	return arg1 + GuiService_upvr:GetGuiInset()
end
local function _(arg1) -- Line 29, Named "vector2ToUDim2"
	return UDim2.fromOffset(arg1.X, arg1.Y)
end
local function _(arg1) -- Line 33, Named "reportOcclusionMetrics"
	--[[ Upvalues[1]:
		[1]: GuiService_upvr (readonly)
	]]
	local var3 = arg1.position + GuiService_upvr:GetGuiInset()
	local size = arg1.size
	GuiService_upvr:SendUIOcclusionMetricsForQueryRegion(UDim2.fromOffset(var3.X, var3.Y), UDim2.fromOffset(size.X, size.Y), "currentSizeTR")
end
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("GuiServiceSendUIOcclusionMetricsForQueryRegion")
local React_upvr = require(CorePackages.Packages.React)
local Constants_upvr = require(script:FindFirstAncestor("ChromeShared").Unibar.Constants)
local useSelector_upvr = require(CorePackages.Workspace.Packages.RoactUtils).Hooks.RoactRodux.useSelector
local any_GetFIntLuaUIOcclusionMetricsReportingPeriodSeconds_result1_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFIntLuaUIOcclusionMetricsReportingPeriodSeconds()
return function() -- Line 42, Named "OcclusionMetricsManager"
	--[[ Upvalues[6]:
		[1]: game_GetEngineFeature_result1_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: useSelector_upvr (readonly)
		[5]: GuiService_upvr (readonly)
		[6]: any_GetFIntLuaUIOcclusionMetricsReportingPeriodSeconds_result1_upvr (readonly)
	]]
	if not game_GetEngineFeature_result1_upvr then
	else
		local any_useRef_result1_upvr = React_upvr.useRef({
			id = Constants_upvr.UNIBAR_KEEP_OUT_AREA_ID;
			position = Vector2.new();
			size = Vector2.new();
		})
		local var8_result1_upvr = useSelector_upvr(function(arg1) -- Line 53
			--[[ Upvalues[1]:
				[1]: Constants_upvr (copied, readonly)
			]]
			return arg1.displayOptions.keepOutAreas[Constants_upvr.UNIBAR_KEEP_OUT_AREA_ID]
		end)
		React_upvr.useEffect(function() -- Line 57
			--[[ Upvalues[2]:
				[1]: any_useRef_result1_upvr (readonly)
				[2]: var8_result1_upvr (readonly)
			]]
			any_useRef_result1_upvr.current = var8_result1_upvr
		end, {var8_result1_upvr})
		React_upvr.useEffect(function() -- Line 61
			--[[ Upvalues[3]:
				[1]: any_useRef_result1_upvr (readonly)
				[2]: GuiService_upvr (copied, readonly)
				[3]: any_GetFIntLuaUIOcclusionMetricsReportingPeriodSeconds_result1_upvr (copied, readonly)
			]]
			local task_spawn_result1_upvr = task.spawn(function() -- Line 63
				--[[ Upvalues[3]:
					[1]: any_useRef_result1_upvr (copied, readonly)
					[2]: GuiService_upvr (copied, readonly)
					[3]: any_GetFIntLuaUIOcclusionMetricsReportingPeriodSeconds_result1_upvr (copied, readonly)
				]]
				while true do
					if any_useRef_result1_upvr.current then
						local current = any_useRef_result1_upvr.current
						local var19 = current.position + GuiService_upvr:GetGuiInset()
						local size_2 = current.size
						GuiService_upvr:SendUIOcclusionMetricsForQueryRegion(UDim2.fromOffset(var19.X, var19.Y), UDim2.fromOffset(size_2.X, size_2.Y), "currentSizeTR")
					end
					task.wait(any_GetFIntLuaUIOcclusionMetricsReportingPeriodSeconds_result1_upvr)
				end
			end)
			return function() -- Line 72
				--[[ Upvalues[1]:
					[1]: task_spawn_result1_upvr (readonly)
				]]
				task.cancel(task_spawn_result1_upvr)
			end
		end, {})
	end
end