-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:43:29
-- Luau version 6, Types version 3
-- Time taken: 0.010182 seconds

local Squads = script:FindFirstAncestor("Squads")
local dependencies = require(Squads.dependencies)
local Parent = Squads.Parent
local useTokens_upvr = dependencies.Foundation.Hooks.useTokens
local useLocalUserId_upvr = require(Parent.RobloxAppHooks).useLocalUserId
local SquadInviteChangesExperimentation_upvr = dependencies.SocialExperiments.SquadInviteChangesExperimentation
local useSquadState_upvr = require(Squads.Hooks.useSquadState)
local React_upvr = require(Parent.React)
local SquadState_upvr = dependencies.SquadsCore.Enums.SquadState
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("EmptySquadIdReinviteCheckEnabled", false)
local Cryo_upvr = dependencies.Cryo
local SquadUserPartyStatus_upvr = require(Squads.Enums.SquadUserPartyStatus)
local dependencyArray_upvr = dependencies.Hooks.dependencyArray
local useSelector_upvr = dependencies.Hooks.useSelector
local SquadLobbyUserCard_upvr = require(script.Parent.SquadLobbyUserCard)
local SquadLobbyUpsellCard_upvr = require(script.Parent.SquadLobbyUpsellCard)
local Roact_upvr = dependencies.Roact
return function(arg1) -- Line 46
	--[[ Upvalues[14]:
		[1]: useTokens_upvr (readonly)
		[2]: useLocalUserId_upvr (readonly)
		[3]: SquadInviteChangesExperimentation_upvr (readonly)
		[4]: useSquadState_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: SquadState_upvr (readonly)
		[7]: game_DefineFastFlag_result1_upvr (readonly)
		[8]: Cryo_upvr (readonly)
		[9]: SquadUserPartyStatus_upvr (readonly)
		[10]: dependencyArray_upvr (readonly)
		[11]: useSelector_upvr (readonly)
		[12]: SquadLobbyUserCard_upvr (readonly)
		[13]: SquadLobbyUpsellCard_upvr (readonly)
		[14]: Roact_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
	local useTokens_upvr_result1 = useTokens_upvr()
	local tonumber_result1_upvr = tonumber(useLocalUserId_upvr())
	local var21_upvr = tonumber_result1_upvr or 0
	if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() then
		tonumber_result1_upvr = useSquadState_upvr()
	else
		tonumber_result1_upvr = nil
	end
	local Medium_upvr = useTokens_upvr_result1.Gap.Medium
	local XLarge_upvr = useTokens_upvr_result1.Padding.XLarge
	if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() then
		-- KONSTANTWARNING: GOTO [54] #44
	end
	-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [51] 42. Error Block 15 start (CF ANALYSIS FAILED)
	local any_useMemo_result1_2_upvr, any_useMemo_result2_upvr, any_useMemo_result3_upvr = React_upvr.useMemo(function() -- Line 54
		--[[ Upvalues[9]:
			[1]: arg1 (readonly)
			[2]: XLarge_upvr (readonly)
			[3]: SquadInviteChangesExperimentation_upvr (copied, readonly)
			[4]: tonumber_result1_upvr (readonly)
			[5]: SquadState_upvr (copied, readonly)
			[6]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[7]: Cryo_upvr (copied, readonly)
			[8]: SquadUserPartyStatus_upvr (copied, readonly)
			[9]: Medium_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var25
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var25 = arg1
			return var25.containerSize.X == 0
		end
		if arg1.containerSize.Y == 0 or INLINED() then
			var25 = 0
			var25 = 0
			return Vector2.new(0, var25), 0, var25
		end
		var25 = arg1.containerSize
		var25 = XLarge_upvr * 2
		local var26 = var25.X - var25
		var25 = arg1.containerSize.Y
		if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() and tonumber_result1_upvr == SquadState_upvr.Initializing and not game_DefineFastFlag_result1_upvr or SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() and game_DefineFastFlag_result1_upvr and tonumber_result1_upvr ~= SquadState_upvr.Active then
			var25 = 1
		elseif SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() then
			var25 = math.max(#Cryo_upvr.List.filter(arg1.users, function(arg1_2) -- Line 76
				--[[ Upvalues[1]:
					[1]: SquadUserPartyStatus_upvr (copied, readonly)
				]]
				local var28
				if arg1_2.partyStatus == SquadUserPartyStatus_upvr.Inactive then
					var28 = false
				else
					var28 = true
				end
				return var28
			end), 2)
		else
			var25 = math.max(#arg1.users, 2)
		end
		if var25 <= 3 and 1.75 < var26 / var25 then
			if var25 * 120 + (var25 - 1) * Medium_upvr > var26 then
			else
			end
		else
		end
		local var29
		if false then
			var29 = 1
			local _ = var25
		elseif var25 <= 3 then
			var29 = var25
		else
			var29 = math.ceil(var25 / 2)
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return Vector2.new((var26 + Medium_upvr) / 2 - Medium_upvr, (arg1.containerSize.Y + Medium_upvr) / math.min(var29, math.clamp(math.floor((arg1.containerSize.Y + Medium_upvr) / (120 + Medium_upvr)), 1, 3)) - Medium_upvr), var29, 2
	end, dependencyArray_upvr(Medium_upvr, arg1.containerSize, #arg1.users, XLarge_upvr))
	local var15_result1_upvr = useSelector_upvr(React_upvr.useCallback(function(arg1_3) -- Line 121
		return arg1_3.Squad.UserBlocking.isBlockedByMe
	end, {}))
	if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() then
	else
	end
	local any_useMemo_result1 = React_upvr.useMemo(function() -- Line 128
		--[[ Upvalues[15]:
			[1]: any_useMemo_result1_2_upvr (readonly)
			[2]: React_upvr (copied, readonly)
			[3]: SquadLobbyUserCard_upvr (copied, readonly)
			[4]: var15_result1_upvr (readonly)
			[5]: arg1 (readonly)
			[6]: SquadInviteChangesExperimentation_upvr (copied, readonly)
			[7]: SquadUserPartyStatus_upvr (copied, readonly)
			[8]: var21_upvr (readonly)
			[9]: Cryo_upvr (copied, readonly)
			[10]: tonumber_result1_upvr (readonly)
			[11]: SquadState_upvr (copied, readonly)
			[12]: SquadLobbyUpsellCard_upvr (copied, readonly)
			[13]: any_useMemo_result2_upvr (readonly)
			[14]: any_useMemo_result3_upvr (readonly)
			[15]: Medium_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		if any_useMemo_result1_2_upvr.X == 0 or any_useMemo_result1_2_upvr.Y == 0 then
			return {}
		end
		local tbl_2 = {}
		local function var62(arg1_4, arg2, arg3) -- Line 134
			--[[ Upvalues[5]:
				[1]: React_upvr (copied, readonly)
				[2]: SquadLobbyUserCard_upvr (copied, readonly)
				[3]: any_useMemo_result1_2_upvr (copied, readonly)
				[4]: var15_result1_upvr (copied, readonly)
				[5]: arg1 (copied, readonly)
			]]
			local module = {
				size = UDim2.fromOffset(any_useMemo_result1_2_upvr.X, any_useMemo_result1_2_upvr.Y);
				isBlocked = var15_result1_upvr[tostring(arg2.userId)];
			}
			module.isConnecting = arg3
			module.layoutOrder = arg1_4
			module.onActivated = arg1.onUserCardActivated
			module.user = arg2
			module.isInExperience = arg1.isInExperience
			return React_upvr.createElement(SquadLobbyUserCard_upvr, module)
		end
		local var64
		if var64 then
			var64 = ipairs(arg1.users)
			local ipairs_result1, ipairs_result2, ipairs_result3 = ipairs(arg1.users)
			for var69, v in ipairs_result1, ipairs_result2, ipairs_result3 do
				if v.partyStatus == SquadUserPartyStatus_upvr.Inactive then
				else
					local var68
					if v.userId == var21_upvr then
						if v.partyStatus ~= SquadUserPartyStatus_upvr.Connecting then
							var68 = false
						else
							var68 = true
						end
						table.insert(tbl_2, var62(0, v, var68))
					else
						if v.partyStatus ~= SquadUserPartyStatus_upvr.Connecting then
							var68 = false
						else
							var68 = true
						end
						table.insert(tbl_2, var62(var69, v, var68))
					end
				end
			end
		else
			var69 = Cryo_upvr
			var69 = arg1
			function var69(arg1_5) -- Line 157
				--[[ Upvalues[1]:
					[1]: var21_upvr (copied, readonly)
				]]
				local var70
				if arg1_5.userId ~= var21_upvr then
					var70 = false
				else
					var70 = true
				end
				return var70
			end
			if var69.List.findWhere(var69.users, var69) == nil then
				ipairs_result1 = false
			else
				ipairs_result1 = true
			end
			if not ipairs_result1 and var21_upvr then
				var69 = tbl_2
				v = var62(0, {
					userId = var21_upvr;
				}, true)
				table.insert(var69, v)
			end
			v = arg1
			var69 = nil
			for i_2, v_2 in v.users, nil, var69 do
				var68 = v_2
				table.insert(tbl_2, var62(i_2, var68, false))
				local var72
			end
		end
		ipairs_result1 = #var72
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			ipairs_result1 = SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled()
			return ipairs_result1
		end
		local function INLINED_3() -- Internal function, doesn't exist in bytecode
			ipairs_result1 = tonumber_result1_upvr
			return ipairs_result1 ~= SquadState_upvr.Initializing
		end
		if ipairs_result1 == 1 and (not INLINED_2() or INLINED_3()) then
			ipairs_result1 = React_upvr.createElement
			local tbl = {}
			var69 = UDim2.fromOffset
			v_2 = any_useMemo_result1_2_upvr
			i_2 = v_2.X
			v_2 = any_useMemo_result1_2_upvr.Y
			var69 = var69(i_2, v_2)
			tbl.size = var69
			v_2 = SquadInviteChangesExperimentation_upvr
			i_2 = v_2.getInviteChangesEnabled()
			if i_2 then
				i_2 = #var72
				var69 = i_2 + 1
			else
				v_2 = arg1.users
				i_2 = #v_2
				var69 = i_2 + 1
			end
			tbl.layoutOrder = var69
			i_2 = arg1
			var69 = i_2.navigateToHomePage
			tbl.navigateToHomePage = var69
			i_2 = arg1
			var69 = i_2.navigateToSquadInviteFriends
			tbl.navigateToSquadInviteFriends = var69
			ipairs_result1 = ipairs_result1(SquadLobbyUpsellCard_upvr, tbl)
			var69 = ipairs_result1
			table.insert(var72, var69)
		end
		ipairs_result1 = {}
		for i_3 = 1, any_useMemo_result2_upvr do
			v_2 = any_useMemo_result3_upvr
			for i_4 = 1, v_2 do
				local var74 = (i_3 - 1) * any_useMemo_result3_upvr + i_4
				if var72[var74] then
					({})["Card"..var74] = var72[var74]
				end
			end
			v_2 = React_upvr.createElement
			v_2 = v_2("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				SortOrder = Enum.SortOrder.LayoutOrder;
				Padding = UDim.new(0, Medium_upvr);
			})
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			;({}).UIListLayout = v_2
			v_2 = "Row"..i_3
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			ipairs_result1[v_2] = React_upvr.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, any_useMemo_result1_2_upvr.Y);
				BackgroundTransparency = 1;
				LayoutOrder = i_3;
			}, {})
		end
		return ipairs_result1
	end, dependencyArray_upvr(any_useMemo_result1_2_upvr, Medium_upvr, var15_result1_upvr, var21_upvr, any_useMemo_result3_upvr, any_useMemo_result2_upvr, arg1.navigateToHomePage, arg1.navigateToSquadInviteFriends, arg1.onUserCardActivated, arg1.users, nil))
	any_useMemo_result1.UIListLayout = React_upvr.createElement("UIListLayout", {
		FillDirection = Enum.FillDirection.Vertical;
		HorizontalAlignment = Enum.HorizontalAlignment.Center;
		VerticalAlignment = Enum.VerticalAlignment.Top;
		SortOrder = Enum.SortOrder.LayoutOrder;
		Padding = UDim.new(0, Medium_upvr);
	})
	any_useMemo_result1.UIPadding = React_upvr.createElement("UIPadding", {
		PaddingBottom = arg1.paddingBottom;
		PaddingLeft = UDim.new(0, XLarge_upvr);
		PaddingRight = UDim.new(0, XLarge_upvr);
	})
	do
		return Roact_upvr.createFragment(any_useMemo_result1)
	end
	-- KONSTANTERROR: [51] 42. Error Block 15 end (CF ANALYSIS FAILED)
end