-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:58:30
-- Luau version 6, Types version 3
-- Time taken: 0.002275 seconds

local Parent = script.Parent.Parent
local ReactSymbols = require(Parent.Shared).ReactSymbols
local module = {}
local REACT_CONTEXT_TYPE_upvr = ReactSymbols.REACT_CONTEXT_TYPE
local REACT_PROVIDER_TYPE_upvr = ReactSymbols.REACT_PROVIDER_TYPE
local console_upvr = require(Parent.Shared).console
function module.createContext(arg1, arg2) -- Line 24
	--[[ Upvalues[3]:
		[1]: REACT_CONTEXT_TYPE_upvr (readonly)
		[2]: REACT_PROVIDER_TYPE_upvr (readonly)
		[3]: console_upvr (readonly)
	]]
	local module_upvr = {
		["$$typeof"] = REACT_CONTEXT_TYPE_upvr;
	}
	module_upvr._calculateChangedBits = arg2
	module_upvr._currentValue = arg1
	module_upvr._currentValue2 = arg1
	module_upvr._threadCount = 0
	module_upvr.Provider = nil
	module_upvr.Consumer = nil
	module_upvr.displayName = nil
	module_upvr._currentRenderer = nil
	module_upvr._currentRenderer2 = nil
	module_upvr.Provider = {
		["$$typeof"] = REACT_PROVIDER_TYPE_upvr;
		_context = module_upvr;
	}
	if _G.__DEV__ then
		local tbl_2 = {
			["$$typeof"] = REACT_CONTEXT_TYPE_upvr;
			_context = module_upvr;
			_calculateChangedBits = module_upvr._calculateChangedBits;
		}
		local tbl = {
			__index = function(arg1_2, arg2_2) -- Line 69, Named "__index"
				--[[ Upvalues[1]:
					[1]: module_upvr (readonly)
				]]
				if arg2_2 == "_currentValue" then
					return module_upvr._currentValue
				end
				if arg2_2 == "_currentValue2" then
					return module_upvr._currentValue2
				end
				if arg2_2 == "_threadCount" then
					return module_upvr._threadCount
				end
				if arg2_2 == "displayName" then
					return module_upvr.displayName
				end
				return nil
			end;
		}
		local var12_upvw = false
		function tbl.__newindex(arg1_3, arg2_3, arg3) -- Line 82
			--[[ Upvalues[3]:
				[1]: module_upvr (readonly)
				[2]: var12_upvw (read and write)
				[3]: console_upvr (copied, readonly)
			]]
			if arg2_3 == "_currentValue" then
				module_upvr._currentValue = arg3
			else
				if arg2_3 == "_currentValue2" then
					module_upvr._currentValue2 = arg3
					return
				end
				if arg2_3 == "_threadCount" then
					module_upvr._threadCount = arg3
					return
				end
				if arg2_3 == "displayName" and not var12_upvw then
					console_upvr.warn("Setting `displayName` on Context.Consumer has no effect. ".."You should set it directly on the context with Context.displayName = "..arg3..'.')
					var12_upvw = true
				end
			end
		end
		setmetatable(tbl_2, tbl)
		module_upvr.Consumer = tbl_2
	else
		module_upvr.Consumer = module_upvr
	end
	if _G.__DEV__ then
		module_upvr._currentRenderer = nil
		module_upvr._currentRenderer2 = nil
	end
	return module_upvr
end
return module