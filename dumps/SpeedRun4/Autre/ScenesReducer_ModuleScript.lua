-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:15
-- Luau version 6, Types version 3
-- Time taken: 0.007248 seconds

local Parent = script.Parent.Parent.Parent
local LuauPolyfill = require(Parent.Parent.LuauPolyfill)
local TableUtilities_upvr = require(Parent.utils.TableUtilities)
local function compareScenes_upvr(arg1, arg2) -- Line 12, Named "compareScenes"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var4
	if arg1.index == var4 then
		var4 = #arg1.key
		local var5 = var4 - #arg2.key
		if var5 == 0 then
			if arg1.key >= arg2.key then
				var4 = false
			else
				var4 = true
			end
			return var4
		end
		if var5 >= 0 then
			var4 = false
		else
			var4 = true
		end
		return var4
	end
	if arg1.index >= arg2.index then
	else
	end
	return true
end
local function _(arg1, arg2) -- Line 27, Named "routesAreShallowEqual"
	--[[ Upvalues[1]:
		[1]: TableUtilities_upvr (readonly)
	]]
	if not arg1 or not arg2 then
		if arg1 ~= arg2 then
		else
		end
		return true
	end
	if arg1.key ~= arg2.key then
		return false
	end
	return TableUtilities_upvr.ShallowEqual(arg1, arg2)
end
local function _(arg1, arg2) -- Line 39, Named "scenesAreShallowEqual"
	--[[ Upvalues[1]:
		[1]: TableUtilities_upvr (readonly)
	]]
	local var9 = false
	if arg1.key == arg2.key then
		var9 = false
		if arg1.index == arg2.index then
			var9 = false
			if arg1.isStale == arg2.isStale then
				var9 = false
				if arg1.isActive == arg2.isActive then
					if not arg1 or not arg2 then
						if arg1 ~= arg2 then
							var9 = false
						else
							var9 = true
						end
						return var9
					end
					if arg1.key ~= arg2.key then
						var9 = false
						return var9
					end
					var9 = TableUtilities_upvr.ShallowEqual(arg1, arg2)
				end
			end
		end
	end
	return var9
end
local Array_upvr = LuauPolyfill.Array
local invariant_upvr = require(Parent.utils.invariant)
local Object_upvr = LuauPolyfill.Object
return function(arg1, arg2, arg3, arg4) -- Line 48
	--[[ Upvalues[5]:
		[1]: Array_upvr (readonly)
		[2]: invariant_upvr (readonly)
		[3]: TableUtilities_upvr (readonly)
		[4]: compareScenes_upvr (readonly)
		[5]: Object_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 159 start (CF ANALYSIS FAILED)
	for _, v in arg1 do
		local route = v.route
		if arg4 and arg4[route.key] then
			v.descriptor = arg4[route.key]
		end
	end
	if arg3 == arg2 then
		return arg1
	end
	local tbl_3 = {}
	for _, v_2 in arg1 do
		local key = v_2.key
		if v_2.isStale then
			tbl_3[key] = v_2
		end
		;({})[key] = v_2
	end
	local tbl = {}
	local routes = arg2.routes
	if arg2.index < #routes then
		print("Warning: StackRouter provided invalid state. Index should always be the top route")
		routes = Array_upvr.slice(routes, 1, arg2.index)
	end
	for i_3, v_3 in routes do
		local var31 = "scene_"
		local var32 = var31..v_3.key
		if arg4 then
			var31 = arg4[v_3.key]
		else
			var31 = nil
		end
		invariant_upvr(not tbl[var32], "navigation.state.routes[%d].key '%s' conflicts with another route!", i_3, var32)
		tbl[var32] = true
		if tbl_3[var32] then
			tbl_3[var32] = nil
		end
		;({})[var32] = {
			index = i_3;
			isActive = false;
			isStale = false;
			key = var32;
			route = v_3;
			descriptor = var31;
		}
	end
	-- KONSTANTERROR: [0] 1. Error Block 159 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [180] 132. Error Block 151 start (CF ANALYSIS FAILED)
	local tbl_2_upvr = {}
	local tbl_4_upvr = {}
	local function _(arg1_2) -- Line 155, Named "mergeScene"
		--[[ Upvalues[3]:
			[1]: tbl_2_upvr (readonly)
			[2]: TableUtilities_upvr (copied, readonly)
			[3]: tbl_4_upvr (readonly)
		]]
		local var42 = tbl_2_upvr[arg1_2.key] or nil
		if var42 then
			local var43 = false
			if var42.key == arg1_2.key then
				var43 = false
				if var42.index == arg1_2.index then
					var43 = false
					if var42.isStale == arg1_2.isStale then
						var43 = false
						if var42.isActive == arg1_2.isActive then
							if not var42 or not arg1_2 then
								if var42 ~= arg1_2 then
									var43 = false
								else
									var43 = true
								end
							elseif var42.key ~= arg1_2.key then
								var43 = false
							else
								var43 = TableUtilities_upvr.ShallowEqual(var42, arg1_2)
							end
						end
					end
				end
			end
			if var43 then
				table.insert(tbl_4_upvr, var42)
				return
			end
		end
		table.insert(tbl_4_upvr, arg1_2)
	end
	-- KONSTANTERROR: [180] 132. Error Block 151 end (CF ANALYSIS FAILED)
end