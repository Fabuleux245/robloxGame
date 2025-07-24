-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:32:35
-- Luau version 6, Types version 3
-- Time taken: 0.002418 seconds

local GameDetail = script:FindFirstAncestor("GameDetail")
local Parent = GameDetail.Parent
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("LuaAppGameDetailLockState", false)
local FormFactor_upvr = require(Parent.FormFactor).Enums.FormFactor
local UseGameDetailsPeekView_upvr = require(GameDetail.PeekView.UseGameDetailsPeekView)
local AppPage_upvr = require(Parent.RobloxAppEnums).AppPage
local PeekViewState_upvr = require(Parent.PeekView).PeekViewState
local Cryo_upvr = require(Parent.Cryo)
local SetGameDetailsPeekViewState_upvr = require(GameDetail.PeekView.SetGameDetailsPeekViewState)
local NavigateDown_upvr = require(Parent.NavigationRodux).Thunks.NavigateDown
return function(arg1, arg2, arg3) -- Line 14
	--[[ Upvalues[8]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
		[2]: FormFactor_upvr (readonly)
		[3]: UseGameDetailsPeekView_upvr (readonly)
		[4]: AppPage_upvr (readonly)
		[5]: PeekViewState_upvr (readonly)
		[6]: Cryo_upvr (readonly)
		[7]: SetGameDetailsPeekViewState_upvr (readonly)
		[8]: NavigateDown_upvr (readonly)
	]]
	return function(arg1_2) -- Line 15
		--[[ Upvalues[11]:
			[1]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[2]: FormFactor_upvr (copied, readonly)
			[3]: UseGameDetailsPeekView_upvr (copied, readonly)
			[4]: AppPage_upvr (copied, readonly)
			[5]: arg1 (readonly)
			[6]: arg3 (readonly)
			[7]: PeekViewState_upvr (copied, readonly)
			[8]: Cryo_upvr (copied, readonly)
			[9]: SetGameDetailsPeekViewState_upvr (copied, readonly)
			[10]: arg2 (readonly)
			[11]: NavigateDown_upvr (copied, readonly)
		]]
		local any_getState_result1 = arg1_2:getState()
		local viewState = any_getState_result1.GameDetailsPeekView.viewState
		if game_DefineFastFlag_result1_upvr and any_getState_result1.Navigation.lockNavigationActions then
		else
			local var15
			if any_getState_result1.FormFactor == FormFactor_upvr.COMPACT and UseGameDetailsPeekView_upvr() then
				local tbl_2 = {
					name = AppPage_upvr.GameDetail;
					detail = tostring(arg1);
				}
				tbl_2.extraProps = arg3
				var15 = tbl_2
				if viewState == PeekViewState_upvr.Full or viewState == PeekViewState_upvr.Extended or arg3 and arg3.mountAsFullView then
					local tbl_3 = {}
					local extraProps = var15.extraProps
					if not extraProps then
						extraProps = {}
					end
					tbl_3.extraProps = Cryo_upvr.Dictionary.join(extraProps, {
						mountAsFullView = true;
					})
					var15 = Cryo_upvr.Dictionary.join(var15, tbl_3)
				else
					arg1_2:dispatch(SetGameDetailsPeekViewState_upvr(PeekViewState_upvr.Closed))
					arg2.clearAppScreens({AppPage_upvr.GameDetail, AppPage_upvr.ProfilePeekView})
				end
			else
				local tbl = {
					name = AppPage_upvr.ExperienceDetail;
					detail = tostring(arg1);
				}
				tbl.extraProps = arg3
				var15 = tbl
			end
			arg1_2:dispatch(NavigateDown_upvr(var15))
		end
	end
end