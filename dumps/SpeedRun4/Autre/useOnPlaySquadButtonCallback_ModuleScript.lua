-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:33:21
-- Luau version 6, Types version 3
-- Time taken: 0.000774 seconds

local GamePlayButton = script:FindFirstAncestor("GamePlayButton")
local Parent = GamePlayButton.Parent
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local React_upvr = require(Parent.React)
local GetFFlagLuaAppEnableSquadPage_upvr = require(Parent.SharedFlags).GetFFlagLuaAppEnableSquadPage
local PlayButtonStates_upvr = require(GamePlayButton.PlayButtonStates)
local OpenCentralOverlayForGameDetailsSquad_upvr = require(GamePlayButton.OpenCentralOverlayForGameDetailsSquad)
return function(arg1, arg2, arg3, arg4) -- Line 12
	--[[ Upvalues[5]:
		[1]: useDispatch_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: GetFFlagLuaAppEnableSquadPage_upvr (readonly)
		[4]: PlayButtonStates_upvr (readonly)
		[5]: OpenCentralOverlayForGameDetailsSquad_upvr (readonly)
	]]
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	local module = {useDispatch_upvr_result1_upvr}
	module[2] = arg1
	module[3] = arg3
	module[4] = arg2
	module[5] = arg4
	return React_upvr.useCallback(function(arg1_2) -- Line 15
		--[[ Upvalues[8]:
			[1]: GetFFlagLuaAppEnableSquadPage_upvr (copied, readonly)
			[2]: arg2 (readonly)
			[3]: PlayButtonStates_upvr (copied, readonly)
			[4]: useDispatch_upvr_result1_upvr (readonly)
			[5]: OpenCentralOverlayForGameDetailsSquad_upvr (copied, readonly)
			[6]: arg1 (readonly)
			[7]: arg3 (readonly)
			[8]: arg4 (readonly)
		]]
		if GetFFlagLuaAppEnableSquadPage_upvr() and arg2 == PlayButtonStates_upvr.PlayableWithParty then
			useDispatch_upvr_result1_upvr(OpenCentralOverlayForGameDetailsSquad_upvr(arg1, arg1_2.AbsolutePosition, arg1_2.AbsoluteSize, arg3, arg4))
		end
	end, module)
end