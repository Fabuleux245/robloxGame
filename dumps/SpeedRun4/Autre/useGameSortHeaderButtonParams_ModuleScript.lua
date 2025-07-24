-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:32:10
-- Luau version 6, Types version 3
-- Time taken: 0.003987 seconds

local GameCollections = script:FindFirstAncestor("GameCollections")
local Parent = GameCollections.Parent
local useNavigateToSeeAll_upvr = require(GameCollections.useNavigateToSeeAll)
local React_upvr = require(Parent.React)
local useNavigateToSortLinkWebView_upvr = require(GameCollections.useNavigateToSortLinkWebView)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local FFlagLuaAppHeaderButtonText_upvr = require(Parent.SharedFlags).FFlagLuaAppHeaderButtonText
return function(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) -- Line 15, Named "useGameSortHeaderButtonParams"
	--[[ Upvalues[5]:
		[1]: useNavigateToSeeAll_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: useNavigateToSortLinkWebView_upvr (readonly)
		[4]: useLocalization_upvr (readonly)
		[5]: FFlagLuaAppHeaderButtonText_upvr (readonly)
	]]
	local useNavigateToSeeAll_upvr_result1_upvr = useNavigateToSeeAll_upvr(arg2, arg3, arg4, arg5, arg6, arg7)
	local tbl_2 = {useNavigateToSeeAll_upvr_result1_upvr}
	tbl_2[2] = arg1
	local var5_result1_upvr = useNavigateToSortLinkWebView_upvr()
	local tbl = {var5_result1_upvr}
	tbl[2] = arg8
	tbl[3] = arg7
	tbl[4] = arg2
	tbl[5] = arg3
	local var16_upvr
	if arg8 then
		var16_upvr = React_upvr.useCallback(function() -- Line 34
			--[[ Upvalues[5]:
				[1]: arg2 (readonly)
				[2]: arg3 (readonly)
				[3]: arg8 (readonly)
				[4]: var5_result1_upvr (readonly)
				[5]: arg7 (readonly)
			]]
			local var13
			if arg2 then
				if arg3 then
					var13 = arg2.topicId
				else
					var13 = arg2.gameSetTypeId
				end
			end
			local var14
			if arg8 then
				local function INLINED() -- Internal function, doesn't exist in bytecode
					var14 = arg2.displayName
					return var14
				end
				if not arg2 or not INLINED() then
					var14 = ""
				end
				var5_result1_upvr(arg8, arg7, var14, var13)
			end
		end, tbl)
	else
		var16_upvr = React_upvr.useCallback(function() -- Line 28
			--[[ Upvalues[2]:
				[1]: useNavigateToSeeAll_upvr_result1_upvr (readonly)
				[2]: arg1 (readonly)
			]]
			useNavigateToSeeAll_upvr_result1_upvr()
			arg1()
		end, tbl_2)
	end
	local var17
	var17 = {}
	var17.learnMore = "Feature.GameDetails.Label.LearnMore"
	if FFlagLuaAppHeaderButtonText_upvr and arg10 then
		var17 = arg10
	elseif arg8 then
		var17 = useLocalization_upvr(var17).learnMore
	else
		var17 = nil
	end
	local module = {var5_result1_upvr}
	module[2] = arg9
	module[3] = arg7
	module[4] = arg2
	module[5] = arg3
	module[6] = var16_upvr
	return var16_upvr, var17, React_upvr.useCallback(function() -- Line 56
		--[[ Upvalues[6]:
			[1]: arg2 (readonly)
			[2]: arg9 (readonly)
			[3]: arg3 (readonly)
			[4]: var5_result1_upvr (readonly)
			[5]: arg7 (readonly)
			[6]: var16_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		if arg2 then
			local var20 = arg9
			if var20 then
				if arg3 then
					var20 = arg2.topicId
				else
					var20 = arg2.gameSetTypeId
				end
				if not arg2 or not arg2.displayName then
				end
				var5_result1_upvr(arg9, arg7, "", var20)
				return
			end
		end
		var16_upvr()
	end, module)
end