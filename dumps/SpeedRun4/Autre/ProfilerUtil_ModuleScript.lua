-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:43
-- Luau version 6, Types version 3
-- Time taken: 0.002466 seconds

local module_upvr = {
	getDurations = function(arg1, arg2) -- Line 11, Named "getDurations"
		local var6
		if 0 < arg2 then
			local var7 = arg1.Nodes[arg2]
			if var7 == nil then
				var6 = false
			else
				var6 = true
			end
			assert(var6)
			var6 = var7.Duration
			return var7.TotalDuration, var6
		end
		for _, _ in arg1.Categories do
			local var8
		end
		return var8, 0
	end;
	getName = function(arg1, arg2) -- Line 31, Named "getName"
		local var9 = arg2
		if var9 then
			var9 = arg2.Name
		end
		return var9
	end;
	getSourceName = function(arg1, arg2) -- Line 35, Named "getSourceName"
		local var10 = arg2
		if var10 then
			var10 = arg2.Source
		end
		return var10
	end;
	getLine = function(arg1, arg2) -- Line 39, Named "getLine"
		local var11 = arg2
		if var11 then
			var11 = arg2.Line
		end
		return var11
	end;
	getNativeFlag = function(arg1, arg2) -- Line 43, Named "getNativeFlag"
		if not arg2 or not arg2.IsNative then
		end
		return false
	end;
	getPluginFlag = function(arg1, arg2) -- Line 47, Named "getPluginFlag"
		if not arg2 or not arg2.IsPlugin then
		end
		return false
	end;
	standardizeChildren = function(arg1, arg2) -- Line 51, Named "standardizeChildren"
		local var12 = arg2
		if var12 then
			var12 = arg2.Children
		end
		return var12
	end;
	formatSessionLength = function(arg1) -- Line 55, Named "formatSessionLength"
		if arg1 then
			return string.format("%02i:%02i:%02i.%04i", arg1 / 3600000, arg1 / 60000 % 60, arg1 / 1000 % 60, arg1 % 1000)
		end
		return nil
	end;
	formatTimer = function(arg1) -- Line 68, Named "formatTimer"
		if arg1 ~= nil then
			if arg1 == 0 then
				return ""
			end
			if 60 <= arg1 then
				return string.format("%dm", arg1 / 60)
			end
			return string.format("%ds", arg1)
		end
		return ""
	end;
	formatFrequency = function(arg1) -- Line 82, Named "formatFrequency"
		if arg1 < 1000 then
			return tostring(arg1).." Hz"
		end
		return tostring(arg1 / 1000).." KHz"
	end;
}
function module_upvr.getSourceLocationString(arg1, arg2, arg3) -- Line 92
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local var13 = arg1
	local any_getSourceName_result1 = module_upvr.getSourceName(var13, arg2)
	if not any_getSourceName_result1 or #any_getSourceName_result1 == 0 then
		var13 = arg3
	else
		var13 = any_getSourceName_result1
	end
	local any_getLine_result1 = module_upvr.getLine(arg1, arg2)
	local var16
	if any_getLine_result1 and 1 <= any_getLine_result1 then
		var16 = string.format("%s:%s", var13, tostring(any_getLine_result1))
	end
	return var16
end
return module_upvr