-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:05:49
-- Luau version 6, Types version 3
-- Time taken: 0.004197 seconds

local Parent = script:FindFirstAncestor("FocusNavigationUtils").Parent
local React_upvr = require(Parent.React)
local tbl_upvr = {
	registered = function(arg1, arg2) -- Line 33, Named "registered"
		local clone = table.clone(arg1)
		clone[arg2.name] = arg2.guiObject
		return clone
	end;
	deRegistered = function(arg1, arg2) -- Line 38, Named "deRegistered"
		if arg1[arg2.name] == arg2.guiObject then
			local clone_2 = table.clone(arg1)
			clone_2[arg2.name] = nil
			return clone_2
		end
		return arg1
	end;
}
local function registryReducer_upvr(arg1, arg2) -- Line 49, Named "registryReducer"
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local var6 = tbl_upvr[arg2.type]
	if var6 then
		return var6(arg1, arg2.payload)
	end
	error("Unknown action: "..arg2.type)
end
local any_createContext_result1_upvr = React_upvr.createContext(nil)
local ReactFocusNavigation_upvr = require(Parent.ReactFocusNavigation)
return {
	Provider = function(arg1) -- Line 59, Named "FocusNavigableSurfaceRegistryProvider"
		--[[ Upvalues[3]:
			[1]: React_upvr (readonly)
			[2]: registryReducer_upvr (readonly)
			[3]: any_createContext_result1_upvr (readonly)
		]]
		local any_useReducer_result1, any_useReducer_result2 = React_upvr.useReducer(registryReducer_upvr, {})
		return React_upvr.createElement(any_createContext_result1_upvr.Provider, {
			value = {
				state = any_useReducer_result1;
				dispatch = any_useReducer_result2;
			};
		}, arg1.children)
	end;
	registryContext = any_createContext_result1_upvr;
	useRegisterFocusNavigableSurface = function() -- Line 79, Named "useRegisterFocusNavigableSurface"
		--[[ Upvalues[2]:
			[1]: React_upvr (readonly)
			[2]: any_createContext_result1_upvr (readonly)
		]]
		local var14_upvr = any_createContext_result1_upvr
		local any_useContext_result1_3 = React_upvr.useContext(var14_upvr)
		if any_useContext_result1_3 then
			var14_upvr = any_useContext_result1_3.dispatch
		else
			var14_upvr = nil
		end
		return React_upvr.useCallback(function(arg1, arg2) -- Line 82
			--[[ Upvalues[1]:
				[1]: var14_upvr (readonly)
			]]
			if var14_upvr then
				local tbl = {
					type = "registered";
				}
				local tbl_3 = {}
				tbl_3.name = arg1
				tbl_3.guiObject = arg2
				tbl.payload = tbl_3
				var14_upvr(tbl)
			end
		end, {var14_upvr})
	end;
	useDeRegisterFocusNavigableSurface = function() -- Line 95, Named "useDeRegisterFocusNavigableSurface"
		--[[ Upvalues[2]:
			[1]: React_upvr (readonly)
			[2]: any_createContext_result1_upvr (readonly)
		]]
		local var20_upvr = any_createContext_result1_upvr
		local any_useContext_result1_4 = React_upvr.useContext(var20_upvr)
		if any_useContext_result1_4 then
			var20_upvr = any_useContext_result1_4.dispatch
		else
			var20_upvr = nil
		end
		return React_upvr.useCallback(function(arg1, arg2) -- Line 98
			--[[ Upvalues[1]:
				[1]: var20_upvr (readonly)
			]]
			if var20_upvr then
				local tbl_2 = {
					type = "deRegistered";
				}
				local tbl_4 = {}
				tbl_4.name = arg1
				tbl_4.guiObject = arg2
				tbl_2.payload = tbl_4
				var20_upvr(tbl_2)
			end
		end, {var20_upvr})
	end;
	useRegistryEntry = function(arg1) -- Line 66, Named "useRegistryEntry"
		--[[ Upvalues[2]:
			[1]: React_upvr (readonly)
			[2]: any_createContext_result1_upvr (readonly)
		]]
		local any_useContext_result1_2 = React_upvr.useContext(any_createContext_result1_upvr)
		if any_useContext_result1_2 == nil then
			return nil
		end
		local var13 = any_useContext_result1_2.state[arg1]
		if var13 == nil then
			return nil
		end
		return var13
	end;
	useFocusRegistryEntry = function(arg1) -- Line 111, Named "useFocusRegistryEntry"
		--[[ Upvalues[3]:
			[1]: ReactFocusNavigation_upvr (readonly)
			[2]: React_upvr (readonly)
			[3]: any_createContext_result1_upvr (readonly)
		]]
		local var27_upvr = ReactFocusNavigation_upvr
		local any_useFocusGuiObject_result1_upvr = var27_upvr.useFocusGuiObject()
		local any_useContext_result1 = React_upvr.useContext(any_createContext_result1_upvr)
		if any_useContext_result1 == nil then
			var27_upvr = nil
		else
			local var30 = any_useContext_result1.state[arg1]
			if var30 == nil then
				var27_upvr = nil
			else
				var27_upvr = var30
			end
		end
		return React_upvr.useCallback(function() -- Line 114
			--[[ Upvalues[2]:
				[1]: var27_upvr (readonly)
				[2]: any_useFocusGuiObject_result1_upvr (readonly)
			]]
			if var27_upvr then
				any_useFocusGuiObject_result1_upvr(var27_upvr)
			end
		end, {any_useFocusGuiObject_result1_upvr, var27_upvr})
	end;
}