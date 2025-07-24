-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:07
-- Luau version 6, Types version 3
-- Time taken: 0.003886 seconds

local CorePackages = game:GetService("CorePackages")
local React_upvr = require(CorePackages.Packages.React)
local dependencyArray_upvr = require(CorePackages.Workspace.Packages.RoactUtils).Hooks.dependencyArray
local TooltipContext_upvr = require(script.Parent.TooltipContext)
function TooltipProvider(arg1) -- Line 30
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: dependencyArray_upvr (readonly)
		[3]: TooltipContext_upvr (readonly)
	]]
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(nil)
	local any_useRef_result1_upvr_4 = React_upvr.useRef(nil)
	local any_useRef_result1_upvr_3 = React_upvr.useRef(nil)
	local any_useRef_result1_upvr_2 = React_upvr.useRef(nil)
	local any_useRef_result1_upvr = React_upvr.useRef({})
	local any_useCallback_result1_upvr_2 = React_upvr.useCallback(function(arg1_2) -- Line 41
		--[[ Upvalues[3]:
			[1]: any_useState_result2_upvr (readonly)
			[2]: any_useRef_result1_upvr_4 (readonly)
			[3]: any_useRef_result1_upvr_3 (readonly)
		]]
		any_useState_result2_upvr(arg1_2)
		any_useRef_result1_upvr_4.current = arg1_2
		if any_useRef_result1_upvr_4.current and any_useRef_result1_upvr_3.current and any_useRef_result1_upvr_4.current.id == any_useRef_result1_upvr_3.current.id then
			any_useRef_result1_upvr_3.current = nil
		end
	end, {})
	local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1_3) -- Line 53
		--[[ Upvalues[4]:
			[1]: any_useRef_result1_upvr_4 (readonly)
			[2]: any_useCallback_result1_upvr_2 (readonly)
			[3]: any_useRef_result1_upvr_3 (readonly)
			[4]: any_useRef_result1_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 21 start (CF ANALYSIS FAILED)
		if any_useRef_result1_upvr_4 and any_useRef_result1_upvr_4.current and any_useRef_result1_upvr_4.current.id == arg1_3 then
			any_useCallback_result1_upvr_2(nil)
		end
		if any_useRef_result1_upvr_3 and any_useRef_result1_upvr_3.current and any_useRef_result1_upvr_3.current.id == arg1_3 then
			any_useRef_result1_upvr_3.current = nil
		end
		local pairs_result1, pairs_result2, pairs_result3 = pairs(any_useRef_result1_upvr.current)
		-- KONSTANTERROR: [0] 1. Error Block 21 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [47] 35. Error Block 12 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [47] 35. Error Block 12 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [41] 31. Error Block 10 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [47.7]
		-- KONSTANTERROR: [41] 31. Error Block 10 end (CF ANALYSIS FAILED)
	end, dependencyArray_upvr(any_useState_result1_upvr))
	any_useRef_result1_upvr_2.current = React_upvr.useCallback(function() -- Line 74
		--[[ Upvalues[6]:
			[1]: any_useRef_result1_upvr_4 (readonly)
			[2]: any_useRef_result1_upvr_3 (readonly)
			[3]: any_useRef_result1_upvr (readonly)
			[4]: any_useCallback_result1_upvr_2 (readonly)
			[5]: any_useCallback_result1_upvr (readonly)
			[6]: any_useRef_result1_upvr_2 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		if any_useRef_result1_upvr_4.current or any_useRef_result1_upvr_3.current then
		else
			for _, v in pairs(any_useRef_result1_upvr.current) do
				table.insert({}, v)
				local var31
			end
			table.sort(var31, function(arg1_4, arg2) -- Line 86
				local var33
				if arg2.priority >= arg1_4.priority then
					var33 = false
				else
					var33 = true
				end
				return var33
			end)
			local _1_upvr = var31[1]
			if not _1_upvr then return end
			any_useRef_result1_upvr_3.current = _1_upvr
			task.delay(_1_upvr.showDelay / 1000, function() -- Line 97
				--[[ Upvalues[4]:
					[1]: any_useCallback_result1_upvr_2 (copied, readonly)
					[2]: _1_upvr (readonly)
					[3]: any_useCallback_result1_upvr (copied, readonly)
					[4]: any_useRef_result1_upvr_2 (copied, readonly)
				]]
				any_useCallback_result1_upvr_2(_1_upvr)
				task.delay(_1_upvr.dismissDelay / 1000, function() -- Line 100
					--[[ Upvalues[3]:
						[1]: any_useCallback_result1_upvr (copied, readonly)
						[2]: _1_upvr (copied, readonly)
						[3]: any_useRef_result1_upvr_2 (copied, readonly)
					]]
					any_useCallback_result1_upvr(_1_upvr.id)
					if any_useRef_result1_upvr_2.current then
						any_useRef_result1_upvr_2.current()
					end
				end)
			end)
		end
	end, dependencyArray_upvr(any_useState_result1_upvr))
	local function _() -- Line 109
		--[[ Upvalues[1]:
			[1]: any_useRef_result1_upvr_2 (readonly)
		]]
		if any_useRef_result1_upvr_2.current then
			any_useRef_result1_upvr_2.current()
		end
	end
	return React_upvr.createElement(TooltipContext_upvr.Provider, {
		value = React_upvr.useMemo(function() -- Line 115
			--[[ Upvalues[4]:
				[1]: any_useRef_result1_upvr (readonly)
				[2]: any_useRef_result1_upvr_2 (readonly)
				[3]: any_useCallback_result1_upvr (readonly)
				[4]: any_useState_result1_upvr (readonly)
			]]
			return {
				registerTooltip = function(arg1_5, arg2, arg3, arg4) -- Line 117, Named "registerTooltip"
					--[[ Upvalues[2]:
						[1]: any_useRef_result1_upvr (copied, readonly)
						[2]: any_useRef_result1_upvr_2 (copied, readonly)
					]]
					if not any_useRef_result1_upvr.current[arg2] then
						local tbl = {}
						tbl.id = arg1_5
						tbl.priority = arg2
						tbl.showDelay = arg3
						tbl.dismissDelay = arg4
						table.insert(any_useRef_result1_upvr.current, arg2, tbl)
						if any_useRef_result1_upvr_2.current then
							any_useRef_result1_upvr_2.current()
						end
					end
				end;
				unregisterTooltip = function(arg1_6) -- Line 128, Named "unregisterTooltip"
					--[[ Upvalues[2]:
						[1]: any_useCallback_result1_upvr (copied, readonly)
						[2]: any_useRef_result1_upvr_2 (copied, readonly)
					]]
					any_useCallback_result1_upvr(arg1_6)
					if any_useRef_result1_upvr_2.current then
						any_useRef_result1_upvr_2.current()
					end
				end;
				dismissTooltip = function(arg1_7, arg2) -- Line 132, Named "dismissTooltip"
					--[[ Upvalues[2]:
						[1]: any_useCallback_result1_upvr (copied, readonly)
						[2]: any_useRef_result1_upvr_2 (copied, readonly)
					]]
					any_useCallback_result1_upvr(arg1_7)
					if any_useRef_result1_upvr_2.current then
						any_useRef_result1_upvr_2.current()
					end
				end;
				isCurrentTooltip = function(arg1_8) -- Line 136, Named "isCurrentTooltip"
					--[[ Upvalues[1]:
						[1]: any_useState_result1_upvr (copied, readonly)
					]]
					local var42 = any_useState_result1_upvr
					if var42 then
						if any_useState_result1_upvr.id ~= arg1_8 then
							var42 = false
						else
							var42 = true
						end
					end
					return var42
				end;
			}
		end, dependencyArray_upvr(any_useState_result1_upvr));
	}, arg1.children)
end
return TooltipProvider