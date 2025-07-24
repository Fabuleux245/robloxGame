-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:42:30
-- Luau version 6, Types version 3
-- Time taken: 0.003900 seconds

local Parent = script:FindFirstAncestor("SocialCards").Parent
local Foundation_upvr = require(Parent.Foundation)
local Squads = require(Parent.Squads)
local useNavigation_upvr = require(Parent.Navigation).useNavigation
local useTokens_upvr = Foundation_upvr.Hooks.useTokens
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local React_upvr = require(Parent.React)
local getStandardSizeAvatarHeadShotRbxthumb_upvr = require(Parent.UserLib).Utils.getStandardSizeAvatarHeadShotRbxthumb
local ImagePile_upvr = require(Parent.AppBlox).ImagePile
local SquadComponentAccessWrapper_upvr = Squads.SquadComponentAccessWrapper
local SquadJoinButton_upvr = Squads.SquadJoinButton
local SquadButtonSourceEnum_upvr = Squads.Enums.SquadButtonSourceEnum
return function(arg1) -- Line 24, Named "SquadStartedCard"
	--[[ Upvalues[10]:
		[1]: useNavigation_upvr (readonly)
		[2]: useTokens_upvr (readonly)
		[3]: useLocalization_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: getStandardSizeAvatarHeadShotRbxthumb_upvr (readonly)
		[6]: ImagePile_upvr (readonly)
		[7]: Foundation_upvr (readonly)
		[8]: SquadComponentAccessWrapper_upvr (readonly)
		[9]: SquadJoinButton_upvr (readonly)
		[10]: SquadButtonSourceEnum_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
	local var5_result1_upvr = useTokens_upvr()
	local var6_result1 = useLocalization_upvr({
		manyPeopleActive = {
			userCount = #arg1.participantUserIds;
			"Feature.Squads.Description.ManyPeopleActive"
		};
		onePersonActive = "Feature.Squads.Description.OnePersonActive";
		partyStarted = "Feature.Squads.Label.PartyStartedText";
	})
	local module_2 = {}
	local tbl_9 = {
		AutomaticSize = Enum.AutomaticSize.Y;
		Size = UDim2.fromScale(1, 0);
	}
	local tbl = {
		FillDirection = Enum.FillDirection.Horizontal;
		SortOrder = Enum.SortOrder.LayoutOrder;
		Padding = UDim.new(0, var5_result1_upvr.Gap.Large);
	}
	local Center = Enum.VerticalAlignment.Center
	tbl.VerticalAlignment = Center
	tbl_9.layout = tbl
	tbl_9.LayoutOrder = 1
	local tbl_3 = {}
	if 0 < #arg1.participantUserIds then
		Center = React_upvr.createElement
		Center = Center(Foundation_upvr.View, {
			Size = UDim2.fromOffset(var5_result1_upvr.Size.Size_1000, var5_result1_upvr.Size.Size_1000);
			LayoutOrder = 1;
		}, {React_upvr.useCallback(function(arg1_2) -- Line 33
			--[[ Upvalues[4]:
				[1]: getStandardSizeAvatarHeadShotRbxthumb_upvr (copied, readonly)
				[2]: var5_result1_upvr (readonly)
				[3]: React_upvr (copied, readonly)
				[4]: ImagePile_upvr (copied, readonly)
			]]
			local tbl_5 = {}
			for _, v in ipairs(arg1_2) do
				table.insert(tbl_5, {
					Image = getStandardSizeAvatarHeadShotRbxthumb_upvr(tostring(v));
					BackgroundColor3 = var5_result1_upvr.Color.Surface.Surface_200.Color3:lerp(var5_result1_upvr.Color.ActionStandard.Background.Color3, 1 - var5_result1_upvr.Color.ActionStandard.Background.Transparency);
				})
			end
			local module = {
				images = tbl_5;
			}
			if var5_result1_upvr.Config.Theme.IsUIBlox == "true" then
			else
			end
			module.imageBorderColor = var5_result1_upvr.Color.Surface.Surface_200.Color3
			return React_upvr.createElement(ImagePile_upvr, module)
		end, {})(arg1.participantUserIds)})
	else
		Center = nil
	end
	tbl_3.Thumbnail = Center
	local tbl_4 = {
		AutomaticSize = Enum.AutomaticSize.Y;
	}
	if 0 < #arg1.participantUserIds then
		-- KONSTANTWARNING: GOTO [247] #162
	end
	-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [242] 158. Error Block 15 start (CF ANALYSIS FAILED)
	tbl_4.Size = UDim2.fromScale(1, 0)
	tbl_4.layout = {
		FillDirection = Enum.FillDirection.Vertical;
		Padding = UDim.new(0, var5_result1_upvr.Gap.XSmall);
		SortOrder = Enum.SortOrder.LayoutOrder;
	}
	tbl_4.LayoutOrder = 2
	local tbl_7 = {
		Title = React_upvr.createElement(Foundation_upvr.Text, {
			AutomaticSize = Enum.AutomaticSize.XY;
			backgroundStyle = var5_result1_upvr.Color.None;
			fontStyle = var5_result1_upvr.Typography.TitleMedium;
			LayoutOrder = 1;
			Text = var6_result1.partyStarted;
			textStyle = var5_result1_upvr.Color.Content.Emphasis;
			TextTruncate = Enum.TextTruncate.AtEnd;
		});
	}
	local tbl_2 = {
		AutomaticSize = Enum.AutomaticSize.XY;
		backgroundStyle = var5_result1_upvr.Color.None;
		fontStyle = var5_result1_upvr.Typography.LabelSmall;
	}
	local var43 = 2
	tbl_2.LayoutOrder = var43
	if #arg1.participantUserIds == 1 then
		var43 = var6_result1.onePersonActive
	else
		var43 = var6_result1.manyPeopleActive
	end
	tbl_2.Text = var43
	tbl_2.textStyle = var5_result1_upvr.Color.Content.Muted
	tbl_2.TextTruncate = Enum.TextTruncate.AtEnd
	tbl_7.Status = React_upvr.createElement(Foundation_upvr.Text, tbl_2)
	tbl_3.TextContainer = React_upvr.createElement(Foundation_upvr.View, tbl_4, tbl_7)
	module_2.InfoContainer = React_upvr.createElement(Foundation_upvr.View, tbl_9, tbl_3)
	local tbl_6 = {}
	local tbl_8 = {
		conversationId = arg1.conversationId;
		isFullWidth = true;
		isInCard = true;
		layoutOrder = 3;
	}
	local var4_result1_upvr = useNavigation_upvr()
	function tbl_8.onActivated() -- Line 130
		--[[ Upvalues[2]:
			[1]: var4_result1_upvr (readonly)
			[2]: arg1 (readonly)
		]]
		var4_result1_upvr.navigate("SquadLobby", {
			conversationId = arg1.conversationId;
		})
	end
	tbl_8.shouldAnimate = false
	tbl_8.squadButtonSource = SquadButtonSourceEnum_upvr.PartyStartedCard
	tbl_8.squadLocation = arg1.squadLocation
	tbl_6[1] = React_upvr.createElement(SquadJoinButton_upvr, tbl_8)
	module_2.ActionButton = React_upvr.createElement(SquadComponentAccessWrapper_upvr, {
		parentChannelId = arg1.conversationId;
	}, tbl_6)
	do
		return React_upvr.createElement(Foundation_upvr.View, {
			AutomaticSize = Enum.AutomaticSize.Y;
			Size = UDim2.fromScale(1, 0);
			layout = {
				FillDirection = Enum.FillDirection.Vertical;
				Padding = UDim.new(0, var5_result1_upvr.Gap.Small);
				SortOrder = Enum.SortOrder.LayoutOrder;
			};
			padding = {
				bottom = UDim.new(0, var5_result1_upvr.Padding.Medium);
				left = UDim.new(0, var5_result1_upvr.Padding.Large);
				right = UDim.new(0, var5_result1_upvr.Padding.Large);
				top = UDim.new(0, var5_result1_upvr.Padding.Medium);
			};
		}, module_2)
	end
	-- KONSTANTERROR: [242] 158. Error Block 15 end (CF ANALYSIS FAILED)
end