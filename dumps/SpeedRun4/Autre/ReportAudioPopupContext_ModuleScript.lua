-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:30:02
-- Luau version 6, Types version 3
-- Time taken: 0.001928 seconds

local Songbird = script:FindFirstAncestor("Songbird")
local React_upvr = require(Songbird.Parent.React)
local any_createContext_result1_upvr = React_upvr.createContext(nil)
local function noOp() -- Line 28
end
local tbl_upvr = {
	value = {
		assetId = nil;
		isVisible = false;
		setVisibility = noOp;
		setAssetId = noOp;
	};
}
local Cryo_upvr = require(Songbird.Parent.Cryo)
local useState_upvr = React_upvr.useState
local useCallback_upvr = React_upvr.useCallback
return {
	Context = any_createContext_result1_upvr;
	Provider = function(arg1) -- Line 41
		--[[ Upvalues[6]:
			[1]: Cryo_upvr (readonly)
			[2]: tbl_upvr (readonly)
			[3]: useState_upvr (readonly)
			[4]: useCallback_upvr (readonly)
			[5]: React_upvr (readonly)
			[6]: any_createContext_result1_upvr (readonly)
		]]
		local any_join_result1 = Cryo_upvr.Dictionary.join(tbl_upvr, arg1)
		local var8_result1_upvr, useState_upvr_result2_upvr_2 = useState_upvr(any_join_result1.value.isVisible)
		local useState_upvr_result1_upvr, useState_upvr_result2_upvr = useState_upvr(nil)
		return React_upvr.createElement(any_createContext_result1_upvr.Provider, {
			value = {
				isVisible = var8_result1_upvr;
				setVisibility = useCallback_upvr(function(arg1_2) -- Line 47
					--[[ Upvalues[2]:
						[1]: var8_result1_upvr (readonly)
						[2]: useState_upvr_result2_upvr_2 (readonly)
					]]
					if var8_result1_upvr ~= arg1_2 then
						useState_upvr_result2_upvr_2(arg1_2)
					end
				end, {var8_result1_upvr});
				assetId = useState_upvr_result1_upvr;
				setAssetId = useCallback_upvr(function(arg1_3) -- Line 54
					--[[ Upvalues[2]:
						[1]: useState_upvr_result1_upvr (readonly)
						[2]: useState_upvr_result2_upvr (readonly)
					]]
					if useState_upvr_result1_upvr ~= arg1_3 then
						useState_upvr_result2_upvr(arg1_3)
					end
				end, {useState_upvr_result1_upvr});
			};
		}, any_join_result1.children)
	end;
	use = function() -- Line 70, Named "use"
		--[[ Upvalues[2]:
			[1]: React_upvr (readonly)
			[2]: any_createContext_result1_upvr (readonly)
		]]
		local any_useContext_result1 = React_upvr.useContext(any_createContext_result1_upvr)
		if any_useContext_result1 then
			return any_useContext_result1
		end
		error("attempt to use ReportAudioPopupContext with no provider. Add `ReportAudioPopupContext.Provider` to the React tree and try again")
	end;
}