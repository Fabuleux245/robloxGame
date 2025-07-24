-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:44
-- Luau version 6, Types version 3
-- Time taken: 0.005656 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local React_upvr = require(Parent.React)
local Foundation_upvr = require(Parent.Foundation)
local useTokens_upvr = Foundation_upvr.Hooks.useTokens
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local FFlagAppChatContextCardNameLoadingShimmer_upvr = require(AppChat.Flags.FFlagAppChatContextCardNameLoadingShimmer)
local Skeleton_upvr = Foundation_upvr.Skeleton
return React_upvr.memo(React_upvr.forwardRef(function(arg1, arg2) -- Line 24
	--[[ Upvalues[6]:
		[1]: useTokens_upvr (readonly)
		[2]: useLocalization_upvr (readonly)
		[3]: FFlagAppChatContextCardNameLoadingShimmer_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: Foundation_upvr (readonly)
		[6]: Skeleton_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local useTokens_upvr_result1 = useTokens_upvr()
	local tbl_4 = {
		firstConversationWithThisUserHeadingText = "Feature.Chat.Heading.FirstConversationWithThisUser";
		firstConversationWithHeadingText = {
			displayName = arg1.displayName;
			"Feature.Chat.Heading.FirstConversationWith"
		};
		osaContextCardDescriptionText = "Feature.Chat.Description.OSAContextCardDescription";
		user = "Feature.Chat.Label.User";
	}
	local useLocalization_upvr_result1 = useLocalization_upvr(tbl_4)
	tbl_4 = FFlagAppChatContextCardNameLoadingShimmer_upvr
	local var14
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [422] 279. Error Block 43 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [422.17]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [422.16]
	nil.HeadingText = nil
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	nil.DescriptionText = React_upvr.createElement(Foundation_upvr.Text, {
		tag = "auto-xy text-wrap";
		LayoutOrder = 2;
		Text = useLocalization_upvr_result1.osaContextCardDescriptionText;
		fontStyle = useTokens_upvr_result1.Typography.BodyLarge;
		textStyle = useTokens_upvr_result1.Color.Content.Default;
	})
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [458.13]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [458.14]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [458.15]
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [459.12]
	nil.TextContainer = nil(nil, nil, nil)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [461.9]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [461.10]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [461.11]
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	do
		return nil(nil, nil, nil)
	end
	-- KONSTANTERROR: [422] 279. Error Block 43 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [463] 304. Error Block 90 start (CF ANALYSIS FAILED)
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var14 = not arg1.avatarThumbnail
		return var14
	end
	if not arg1.displayName or not arg1.username or INLINED() then
		var14 = not arg1.hasError
	end
	if var14 then
		return React_upvr.createElement(Foundation_upvr.View, {
			tag = "size-full-0 auto-y";
			sizeConstraint = {
				MaxSize = Vector2.new(700, 500);
			};
		}, {React_upvr.createElement(Foundation_upvr.Skeleton, {
			Size = UDim2.new(1, 0, 0, 270);
			radius = Foundation_upvr.Enums.Radius.Large;
		})})
	end
	local module_2 = {
		tag = "col align-x-center size-full-0 auto-y padding-xxlarge radius-large bg-shift-100 gap-xlarge";
	}
	local tbl_2 = {}
	local vector2 = Vector2.new(700, 500)
	tbl_2.MaxSize = vector2
	module_2.sizeConstraint = tbl_2
	local module = {}
	if arg1.hasError then
		vector2 = nil
	else
		vector2 = React_upvr.createElement
		vector2 = vector2(Foundation_upvr.View, {
			tag = "col auto-xy bg-action-subtle align-x-center gap-medium radius-large padding-small";
			LayoutOrder = 1;
			onActivated = arg1.onAvatarActivated;
		}, {
			AvatarCircle = React_upvr.createElement(Foundation_upvr.Image, {
				tag = "size-1200-1200 bg-shift-200";
				cornerRadius = UDim.new(0, useTokens_upvr_result1.Radius.Circle);
				Image = arg1.avatarThumbnail;
				LayoutOrder = 1;
			});
			AvatarTextContainer = React_upvr.createElement(Foundation_upvr.View, {
				tag = "col auto-xy align-x-center";
				LayoutOrder = 2;
			}, {
				DisplayName = React_upvr.createElement(Foundation_upvr.Text, {
					tag = "auto-xy";
					LayoutOrder = 1;
					Text = arg1.displayName;
					fontStyle = useTokens_upvr_result1.Typography.TitleMedium;
					textStyle = useTokens_upvr_result1.Color.Content.Emphasis;
				});
				Username = React_upvr.createElement(Foundation_upvr.Text, {
					tag = "auto-xy";
					LayoutOrder = 2;
					Text = arg1.username;
					fontStyle = useTokens_upvr_result1.Typography.BodySmall;
					textStyle = useTokens_upvr_result1.Color.Content.Muted;
				});
			});
		})
	end
	module.AvatarContainer = vector2
	local tbl_3 = {
		tag = "col align-x-center auto-xy";
		LayoutOrder = 2;
	}
	tbl_3.ref = arg2
	local tbl_5 = {}
	local tbl = {
		tag = "auto-xy text-wrap";
	}
	local var34 = 1
	tbl.LayoutOrder = var34
	if arg1.hasError then
		var34 = useLocalization_upvr_result1.firstConversationWithThisUserHeadingText
	else
		var34 = useLocalization_upvr_result1.firstConversationWithHeadingText
	end
	tbl.Text = var34
	tbl.fontStyle = useTokens_upvr_result1.Typography.TitleLarge
	tbl.textStyle = useTokens_upvr_result1.Color.Content.Emphasis
	tbl_5.HeadingText = React_upvr.createElement(Foundation_upvr.Text, tbl)
	tbl_5.DescriptionText = React_upvr.createElement(Foundation_upvr.Text, {
		tag = "auto-xy text-wrap";
		LayoutOrder = 2;
		Text = useLocalization_upvr_result1.osaContextCardDescriptionText;
		fontStyle = useTokens_upvr_result1.Typography.BodyLarge;
		textStyle = useTokens_upvr_result1.Color.Content.Default;
	})
	module.TextContainer = React_upvr.createElement(Foundation_upvr.View, tbl_3, tbl_5)
	do
		return React_upvr.createElement(Foundation_upvr.View, module_2, module)
	end
	-- KONSTANTERROR: [463] 304. Error Block 90 end (CF ANALYSIS FAILED)
end))