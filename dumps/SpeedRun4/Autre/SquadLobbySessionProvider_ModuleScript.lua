-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:30:59
-- Luau version 6, Types version 3
-- Time taken: 0.002564 seconds

local SquadsCore = script:FindFirstAncestor("SquadsCore")
local Parent = SquadsCore.Parent
local React_upvr = require(Parent.React)
local any_createContext_result1_upvr = React_upvr.createContext({
	updateMetadata = function() -- Line 29, Named "updateMetadata"
	end;
})
local SquadExternalContractContext_upvr = require(SquadsCore.Components.SquadExternalContractProvider.SquadExternalContractContext)
local SquadLocationEnum_upvr = require(SquadsCore.Enums.SquadLocationEnum)
local SessionType_upvr = require(Parent.RobloxAppSessionization).SessionType
local SquadViewFlags_upvr = require(SquadsCore.Components.SquadExternalContractProvider.SquadViewFlags)
local SquadRootViewType_upvr = require(SquadsCore.Enums.SquadRootViewType)
local SessionService_upvr = game:GetService("SessionService")
local Logger_upvr = require(SquadsCore.Logger)
return {
	Context = any_createContext_result1_upvr;
	Provider = function(arg1) -- Line 32
		--[[ Upvalues[9]:
			[1]: React_upvr (readonly)
			[2]: SquadExternalContractContext_upvr (readonly)
			[3]: SquadLocationEnum_upvr (readonly)
			[4]: SessionType_upvr (readonly)
			[5]: SquadViewFlags_upvr (readonly)
			[6]: SquadRootViewType_upvr (readonly)
			[7]: SessionService_upvr (readonly)
			[8]: Logger_upvr (readonly)
			[9]: any_createContext_result1_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local any_useContext_result1 = React_upvr.useContext(SquadExternalContractContext_upvr)
		local var15_upvr
		if any_useContext_result1.squadLocation == SquadLocationEnum_upvr.InExperience then
			var15_upvr = SessionType_upvr.StructuralIdentifier.SquadLobbyPageInExpSessionInfo
		else
			var15_upvr = SessionType_upvr.StructuralIdentifier.SquadLobbyPageUASessionInfo
		end
		if bit32.band(any_useContext_result1.useSquadViewFlags(), SquadViewFlags_upvr.SquadLobby) ~= 0 then
			if any_useContext_result1.useSquadRootView() == SquadRootViewType_upvr.None then
				local _ = false
				-- KONSTANTWARNING: Skipped task `defvar` above
			else
			end
		end
		local any_useCallback_result1_upvr_2 = React_upvr.useCallback(function() -- Line 44
			--[[ Upvalues[3]:
				[1]: SessionType_upvr (copied, readonly)
				[2]: SessionService_upvr (copied, readonly)
				[3]: var15_upvr (readonly)
			]]
			local Level1 = SessionType_upvr.StructuralIdentifier.Level1
			if Level1 and SessionService_upvr:SessionExists(Level1) and not SessionService_upvr:SessionExists(var15_upvr) then
				SessionService_upvr:SetSession(Level1, var15_upvr, var15_upvr)
			end
		end, {var15_upvr, any_useContext_result1.squadLocation})
		local any_useCallback_result1_upvr = React_upvr.useCallback(function() -- Line 52
			--[[ Upvalues[2]:
				[1]: SessionService_upvr (copied, readonly)
				[2]: var15_upvr (readonly)
			]]
			if SessionService_upvr:SessionExists(var15_upvr) then
				SessionService_upvr:RemoveSession(var15_upvr)
			end
		end, {var15_upvr})
		local var27_upvr = true
		React_upvr.useEffect(function() -- Line 71
			--[[ Upvalues[3]:
				[1]: var27_upvr (readonly)
				[2]: any_useCallback_result1_upvr_2 (readonly)
				[3]: any_useCallback_result1_upvr (readonly)
			]]
			if var27_upvr then
				any_useCallback_result1_upvr_2()
				return function() -- Line 75
					--[[ Upvalues[1]:
						[1]: any_useCallback_result1_upvr (copied, readonly)
					]]
					any_useCallback_result1_upvr()
				end
			end
			return function() -- Line 80
			end
		end, {var27_upvr, any_useCallback_result1_upvr_2, any_useCallback_result1_upvr})
		return React_upvr.createElement(any_createContext_result1_upvr.Provider, {
			value = {
				updateMetadata = React_upvr.useCallback(function(arg1_2, arg2) -- Line 58
					--[[ Upvalues[3]:
						[1]: SessionService_upvr (copied, readonly)
						[2]: var15_upvr (readonly)
						[3]: Logger_upvr (copied, readonly)
					]]
					if SessionService_upvr:SessionExists(var15_upvr) then
						SessionService_upvr:SetMetadata(var15_upvr, arg1_2, arg2)
					else
						Logger_upvr:warning("Squad {} session does not exist, cannot update metadata with key {}, value {}", var15_upvr, arg1_2, arg2)
					end
				end, {var15_upvr});
			};
		}, arg1.children)
	end;
}