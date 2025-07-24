-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:45:17
-- Luau version 6, Types version 3
-- Time taken: 0.004364 seconds

local TrustedContacts = script:FindFirstAncestor("TrustedContacts")
local Parent = TrustedContacts.Parent
local ApolloProfileInsights = require(Parent.ApolloProfileInsights)
local Foundation = require(Parent.Foundation)
local UserProfiles_upvr = require(Parent.UserProfiles)
local useProfileInsightsByUserIds_upvr = ApolloProfileInsights.Hooks.useProfileInsightsByUserIds
local getProfileInsightsByUserIdFromData_upvr = ApolloProfileInsights.Selectors.getProfileInsightsByUserIdFromData
local isCustomNil_upvr = require(TrustedContacts.Utils.isCustomNil)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local React_upvr = require(Parent.React)
local View_upvr = Foundation.View
local Image_upvr = Foundation.Image
local getStandardSizeAvatarHeadShotRbxthumb_upvr = require(Parent.UserLib).Utils.getStandardSizeAvatarHeadShotRbxthumb
local Text_upvr = Foundation.Text
local ShimmerPanel_upvr = require(Parent.UIBlox).App.Loading.ShimmerPanel
local SocialMetadataIconsAndTextsSection_upvr = require(script.Parent.SocialMetadataIconsAndTextsSection)
return function(arg1) -- Line 31
	--[[ Upvalues[12]:
		[1]: UserProfiles_upvr (readonly)
		[2]: useProfileInsightsByUserIds_upvr (readonly)
		[3]: getProfileInsightsByUserIdFromData_upvr (readonly)
		[4]: isCustomNil_upvr (readonly)
		[5]: useLocalization_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: View_upvr (readonly)
		[8]: Image_upvr (readonly)
		[9]: getStandardSizeAvatarHeadShotRbxthumb_upvr (readonly)
		[10]: Text_upvr (readonly)
		[11]: ShimmerPanel_upvr (readonly)
		[12]: SocialMetadataIconsAndTextsSection_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_useUserProfilesFetch_result1 = UserProfiles_upvr.Hooks.useUserProfilesFetch({
		userIds = {arg1.userId};
		query = UserProfiles_upvr.Queries.userProfilesCombinedNameAndUsernameByUserIds;
	})
	local var21_upvw
	if any_useUserProfilesFetch_result1 and any_useUserProfilesFetch_result1.data then
		var21_upvw = UserProfiles_upvr.Selectors.getCombinedNameFromId(any_useUserProfilesFetch_result1.data, arg1.userId) or ""
		local var22_upvw = UserProfiles_upvr.Selectors.getUsernameFromId(any_useUserProfilesFetch_result1.data, arg1.userId) or ""
	end
	local tbl_3 = {
		userIds = {arg1.userId};
		rankingStrategy = "tc_info_boost";
	}
	local var7_result1 = useProfileInsightsByUserIds_upvr(tbl_3)
	tbl_3 = {}
	local var26_upvw = tbl_3
	if var7_result1 and var7_result1.data and not var7_result1.loading then
		var26_upvw = getProfileInsightsByUserIdFromData_upvr(var7_result1.data, arg1.userId)
	end
	if not isCustomNil_upvr(var26_upvw.userAgeVerifiedBracket) then
	else
	end
	local _ = {
		under13 = "AccountIdentity.AgeCheck.Label.AgeBandUnder13";
		under17 = "AccountIdentity.AgeCheck.Label.AgeBandOver13";
		under17checked = "AccountIdentity.AgeCheck.Label.AgeBandOver13Checked";
		over18 = "AccountIdentity.AgeCheck.Label.AgeBandOver18";
		over18checked = "AccountIdentity.AgeCheck.Label.AgeBandOver18Checked";
	}
	local var10_result1_upvr = useLocalization_upvr({
		userAgeVerifiedBracket = nil;
	})
	local any_useMemo_result1_upvr = React_upvr.useMemo(function() -- Line 73
		--[[ Upvalues[1]:
			[1]: var10_result1_upvr (readonly)
		]]
		if var10_result1_upvr.userAgeVerifiedBracket then
			return ` • {var10_result1_upvr.userAgeVerifiedBracket}`
		end
		return nil
	end, {var10_result1_upvr.userAgeVerifiedBracket})
	local module_2 = {
		AvatarWithNames = React_upvr.useMemo(function() -- Line 83
			--[[ Upvalues[9]:
				[1]: React_upvr (copied, readonly)
				[2]: View_upvr (copied, readonly)
				[3]: Image_upvr (copied, readonly)
				[4]: getStandardSizeAvatarHeadShotRbxthumb_upvr (copied, readonly)
				[5]: arg1 (readonly)
				[6]: Text_upvr (copied, readonly)
				[7]: var21_upvw (read and write)
				[8]: var22_upvw (read and write)
				[9]: any_useMemo_result1_upvr (readonly)
			]]
			local module = {
				Avatar = React_upvr.createElement(Image_upvr, {
					tag = "radius-circle size-1200 bg-shift-400";
					Image = getStandardSizeAvatarHeadShotRbxthumb_upvr(arg1.userId);
					LayoutOrder = 1;
				});
			}
			local tbl_2 = {
				DisplayName = React_upvr.createElement(Text_upvr, {
					tag = "auto-xy text-align-x-left text-truncate-split text-no-wrap text-title-medium";
					Text = var21_upvw;
					LayoutOrder = 1;
				});
			}
			local tbl_4 = {
				Username = React_upvr.createElement(Text_upvr, {
					tag = "auto-xy shrink text-align-x-left text-truncate-split text-no-wrap text-body-medium";
					Text = `@{var22_upvw}`;
					LayoutOrder = 1;
				});
			}
			local var43 = any_useMemo_result1_upvr
			if var43 then
				var43 = React_upvr.createElement
				var43 = var43(Text_upvr, {
					tag = "auto-xy size-0 text-align-x-left text-wrap text-body-medium";
					Text = any_useMemo_result1_upvr;
					LayoutOrder = 2;
				})
			end
			tbl_4.VerifiedAge = var43
			tbl_2.UsernameAndVerifiedAgeGroup = React_upvr.createElement(View_upvr, {
				tag = "auto-xy size-0 row align-y-center";
				LayoutOrder = 2;
			}, tbl_4)
			module.Names = React_upvr.createElement(View_upvr, {
				tag = "col auto-y align-x-left gap-xsmall shrink size-full-0";
				LayoutOrder = 2;
			}, tbl_2)
			return React_upvr.createElement(View_upvr, {
				tag = "auto-xy gap-medium size-0 row align-y-center";
				LayoutOrder = 1;
			}, module)
		end, {arg1.userId, var21_upvw, var22_upvw, any_useMemo_result1_upvr});
	}
	if var7_result1.loading then
		local any_createElement_result1 = React_upvr.createElement(ShimmerPanel_upvr, {
			Size = UDim2.new(1, 0, 0, 50);
			LayoutOrder = 2;
		})
	else
	end
	module_2.SocialMetadataIconAndTextList = React_upvr.createElement(SocialMetadataIconsAndTextsSection_upvr, {
		profileInsightIconItems = React_upvr.useMemo(function() -- Line 122
			--[[ Upvalues[2]:
				[1]: isCustomNil_upvr (copied, readonly)
				[2]: var26_upvw (read and write)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 32 start (CF ANALYSIS FAILED)
			local tbl = {}
			local var48
			if not isCustomNil_upvr(var26_upvw.mutualFriends) then
				var48 = var26_upvw.mutualFriends
			else
				var48 = nil
			end
			tbl.mutualFriends = var48
			if not isCustomNil_upvr(var26_upvw.friendshipAgeUnixSeconds) then
				var48 = var26_upvw.friendshipAgeUnixSeconds
				-- KONSTANTWARNING: GOTO [25] #21
			end
			-- KONSTANTERROR: [0] 1. Error Block 32 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [24] 20. Error Block 36 start (CF ANALYSIS FAILED)
			var48 = nil
			tbl.friendshipAgeUnixSeconds = var48
			if not isCustomNil_upvr(var26_upvw.friendRequestOriginSource) then
				var48 = var26_upvw.friendRequestOriginSource
				-- KONSTANTWARNING: GOTO [38] #31
			end
			-- KONSTANTERROR: [24] 20. Error Block 36 end (CF ANALYSIS FAILED)
		end, {var26_upvw});
		isVerticallyConstrained = arg1.isVerticallyConstrained;
		layoutOrder = 2;
	})
	return React_upvr.createElement(View_upvr, {
		tag = {
			["col size-full-0 auto-y align-x-left radius-medium bg-surface-200"] = true;
			["gap-medium padding-medium"] = arg1.isVerticallyConstrained;
			["gap-large padding-large"] = not arg1.isVerticallyConstrained;
		};
		LayoutOrder = 2;
	}, module_2)
end