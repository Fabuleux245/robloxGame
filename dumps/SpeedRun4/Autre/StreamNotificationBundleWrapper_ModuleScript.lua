-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:44:07
-- Luau version 6, Types version 3
-- Time taken: 0.017138 seconds

local StreamNotifications = script:FindFirstAncestor("StreamNotifications")
local Parent = StreamNotifications.Parent
local constants_upvr = require(StreamNotifications.constants)
local UIBlox = require(Parent.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local tbl_36_upvr = {
	stiffness = 207;
	damping = 24;
	mass = 1;
}
local useStyle_upvr = UIBlox.Core.Style.useStyle
local React_upvr = require(Parent.React)
local ReactOtter_upvr = require(Parent.ReactOtter)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local NotificationHelper_upvr = require(Parent.NotificationsCommon).NotificationHelper
local EventStream_upvr = require(StreamNotifications.analytics.analyticsService).EventStream
local analyticsConstants_upvr = require(StreamNotifications.analytics.analyticsConstants)
local StreamNotificationAnimationWrapper_upvr = require(StreamNotifications.components.StreamNotificationAnimationWrapper)
local udim_upvr = UDim.new(0, 12)
local udim_upvr_2 = UDim.new(0, 24)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local udim2_upvr = UDim2.fromOffset(24, 24)
local icons_actions_truncationCollapse_upvr = Images["icons/actions/truncationCollapse"]
local var21_upvr = constants_upvr.DefaultPadding * 4
local icons_actions_truncationExpand_upvr = Images["icons/actions/truncationExpand"]
return function(arg1) -- Line 51
	--[[ Upvalues[17]:
		[1]: useStyle_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: ReactOtter_upvr (readonly)
		[4]: useLocalization_upvr (readonly)
		[5]: constants_upvr (readonly)
		[6]: NotificationHelper_upvr (readonly)
		[7]: EventStream_upvr (readonly)
		[8]: analyticsConstants_upvr (readonly)
		[9]: tbl_36_upvr (readonly)
		[10]: StreamNotificationAnimationWrapper_upvr (readonly)
		[11]: udim_upvr (readonly)
		[12]: udim_upvr_2 (readonly)
		[13]: ImageSetLabel_upvr (readonly)
		[14]: udim2_upvr (readonly)
		[15]: icons_actions_truncationCollapse_upvr (readonly)
		[16]: var21_upvr (readonly)
		[17]: icons_actions_truncationExpand_upvr (readonly)
	]]
	local var8_result1_upvr = useStyle_upvr()
	local Font = var8_result1_upvr.Font
	local any_useState_result1_upvr_2, any_useState_result2_upvr = React_upvr.useState(true)
	local any_useState_result1_upvr_3, any_useState_result2_upvr_2 = React_upvr.useState(74)
	local any_useState_result1_upvr, any_useState_result2_upvr_3 = React_upvr.useState(true)
	local any_useAnimatedBinding_result1_upvr, any_useAnimatedBinding_result2_upvr = ReactOtter_upvr.useAnimatedBinding({
		shadowHeight = 0;
		shadowWidth = 1;
	})
	local function var36_upvr(arg1_3) -- Line 80
		for _, v in arg1_3 do
			if v.id then
				table.insert({}, v.id)
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return {}
	end
	local function var39_upvr() -- Line 90
		--[[ Upvalues[6]:
			[1]: any_useState_result2_upvr (readonly)
			[2]: NotificationHelper_upvr (copied, readonly)
			[3]: EventStream_upvr (copied, readonly)
			[4]: analyticsConstants_upvr (copied, readonly)
			[5]: arg1 (readonly)
			[6]: var36_upvr (readonly)
		]]
		any_useState_result2_upvr(function(arg1_4) -- Line 91
			--[[ Upvalues[5]:
				[1]: NotificationHelper_upvr (copied, readonly)
				[2]: EventStream_upvr (copied, readonly)
				[3]: analyticsConstants_upvr (copied, readonly)
				[4]: arg1 (copied, readonly)
				[5]: var36_upvr (copied, readonly)
			]]
			local Context = analyticsConstants_upvr.Context
			if arg1_4 then
				Context = analyticsConstants_upvr.EventNames.bundleOpened
			else
				Context = analyticsConstants_upvr.EventNames.bundleClosed
			end
			NotificationHelper_upvr.fireEvent(EventStream_upvr, Context.click, Context, {
				bundleKey = arg1.notifications[1].content.bundleKey or nil;
				totalNotifications = #arg1.notifications or nil;
				notificationIds = var36_upvr(arg1.notifications) or nil;
			})
			if arg1_4 then
				for i_2, v_2 in arg1.notifications do
					NotificationHelper_upvr.fireEvent(EventStream_upvr, analyticsConstants_upvr.Context.seen, analyticsConstants_upvr.EventNames.notificationViewed, {
						notificationId = v_2.id or nil;
						notificationType = v_2.content.notificationType or nil;
						bundlePosition = i_2;
						bundleKey = v_2.content.bundleKey or nil;
						clientEventsPayload = v_2.content.clientEventsPayload or nil;
					})
				end
			end
			return not arg1_4
		end)
	end
	React_upvr.useEffect(function() -- Line 129
		--[[ Upvalues[4]:
			[1]: any_useAnimatedBinding_result2_upvr (readonly)
			[2]: ReactOtter_upvr (copied, readonly)
			[3]: any_useState_result1_upvr_2 (readonly)
			[4]: tbl_36_upvr (copied, readonly)
		]]
		local tbl_2 = {}
		local var50 = ReactOtter_upvr
		if any_useState_result1_upvr_2 then
			var50 = 0
		else
			var50 = 1
		end
		tbl_2.shadowHeight = var50.spring(var50, tbl_36_upvr)
		var50 = ReactOtter_upvr
		if any_useState_result1_upvr_2 then
			var50 = 1
		else
			var50 = 0
		end
		tbl_2.shadowWidth = var50.spring(var50, tbl_36_upvr)
		any_useAnimatedBinding_result2_upvr(tbl_2)
	end, {any_useState_result1_upvr_2})
	React_upvr.useEffect(function() -- Line 137
		--[[ Upvalues[2]:
			[1]: any_useState_result2_upvr_3 (readonly)
			[2]: arg1 (readonly)
		]]
		local var53
		if 1 >= #arg1.notifications then
			var53 = false
		else
			var53 = true
		end
		any_useState_result2_upvr_3(var53)
	end, {arg1.notifications})
	local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1_2, arg2) -- Line 74
		--[[ Upvalues[2]:
			[1]: any_useState_result1_upvr_2 (readonly)
			[2]: any_useState_result2_upvr_2 (readonly)
		]]
		if arg1_2 == 1 and any_useState_result1_upvr_2 then
			any_useState_result2_upvr_2(arg2)
		end
	end)
	local Font_upvr = Font.Header1.Font
	local var58_upvr = Font.BaseSize * Font.CaptionHeader.RelativeSize
	local var11_result1_upvr = useLocalization_upvr({
		moreText = constants_upvr.Text.ShowMoreKey;
		lessText = constants_upvr.Text.ShowLessKey;
	})
	return React_upvr.useMemo(function() -- Line 141
		--[[ Upvalues[21]:
			[1]: arg1 (readonly)
			[2]: any_useState_result1_upvr_2 (readonly)
			[3]: any_useState_result1_upvr (readonly)
			[4]: React_upvr (copied, readonly)
			[5]: StreamNotificationAnimationWrapper_upvr (copied, readonly)
			[6]: any_useCallback_result1_upvr (readonly)
			[7]: any_useAnimatedBinding_result1_upvr (readonly)
			[8]: any_useState_result1_upvr_3 (readonly)
			[9]: constants_upvr (copied, readonly)
			[10]: var8_result1_upvr (readonly)
			[11]: udim_upvr (copied, readonly)
			[12]: Font_upvr (readonly)
			[13]: var58_upvr (readonly)
			[14]: var39_upvr (readonly)
			[15]: udim_upvr_2 (copied, readonly)
			[16]: var11_result1_upvr (readonly)
			[17]: ImageSetLabel_upvr (copied, readonly)
			[18]: udim2_upvr (copied, readonly)
			[19]: icons_actions_truncationCollapse_upvr (copied, readonly)
			[20]: var21_upvr (copied, readonly)
			[21]: icons_actions_truncationExpand_upvr (copied, readonly)
		]]
		local tbl_40 = {}
		for i_3, v_3 in ipairs(arg1.notifications) do
			local var121
			if any_useState_result1_upvr_2 and any_useState_result1_upvr then
				var121 = true
			end
			tbl_40[v_3.id] = React_upvr.createElement(StreamNotificationAnimationWrapper_upvr, {
				layoutOrder = i_3;
				notification = v_3;
				finishDismissNotification = arg1.finishDismissNotification;
				handleActions = arg1.handleActions;
				openMetaActions = arg1.openMetaActions;
				onHeightChange = any_useCallback_result1_upvr;
				collapsed = var121;
			})
		end
		local tbl_12 = {}
		if not any_useState_result1_upvr_2 and any_useState_result1_upvr then
			var121 = 40
		else
		end
		tbl_12.PaddingTop = UDim.new(0, 0)
		tbl_40.UIPadding = React_upvr.createElement("UIPadding", tbl_12)
		tbl_40.UIListLayout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			SortOrder = Enum.SortOrder.LayoutOrder;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
		})
		local var125
		if any_useState_result1_upvr_2 and any_useState_result1_upvr then
			var125 = React_upvr.createElement
			;({})[1] = React_upvr.createElement("Frame", {
				Size = any_useAnimatedBinding_result1_upvr:map(function(arg1_10) -- Line 184
					--[[ Upvalues[2]:
						[1]: constants_upvr (copied, readonly)
						[2]: any_useState_result1_upvr_3 (copied, readonly)
					]]
					return UDim2.new(1, -(constants_upvr.DefaultPadding * 4 * arg1_10.shadowWidth), 0, any_useState_result1_upvr_3 - constants_upvr.DefaultPadding)
				end);
				BackgroundColor3 = var8_result1_upvr.Theme.BackgroundDefault.Color;
				BackgroundTransparency = 0;
				BorderSizePixel = 0;
				Position = UDim2.new(0.5, 0, 0, 0);
				AnchorPoint = Vector2.new(0.5, 0);
			}, {
				UICorner = React_upvr.createElement("UICorner", {
					CornerRadius = udim_upvr;
				});
			})
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			var125 = var125("Frame", {
				Size = any_useAnimatedBinding_result1_upvr:map(function(arg1_9) -- Line 175
					--[[ Upvalues[2]:
						[1]: any_useState_result1_upvr_3 (copied, readonly)
						[2]: constants_upvr (copied, readonly)
					]]
					return UDim2.new(1, 0, 0, arg1_9.shadowHeight * any_useState_result1_upvr_3 + constants_upvr.DefaultPadding)
				end);
				LayoutOrder = #arg1.notifications + 1;
				ZIndex = -(#arg1.notifications + 1);
				BackgroundTransparency = 1;
				BorderSizePixel = 0;
			}, {})
		else
			var125 = nil
		end
		tbl_40.Shadow1 = var125
		if any_useState_result1_upvr_2 and any_useState_result1_upvr then
			var125 = React_upvr.createElement
			;({})[1] = React_upvr.createElement("Frame", {
				Size = any_useAnimatedBinding_result1_upvr:map(function(arg1_12) -- Line 218
					--[[ Upvalues[2]:
						[1]: constants_upvr (copied, readonly)
						[2]: any_useState_result1_upvr_3 (copied, readonly)
					]]
					return UDim2.new(1, -(constants_upvr.DefaultPadding * 6 * arg1_12.shadowWidth), 0, any_useState_result1_upvr_3 - constants_upvr.DefaultPadding)
				end);
				BackgroundColor3 = var8_result1_upvr.Theme.BackgroundContrast.Color;
				BackgroundTransparency = 0;
				BorderSizePixel = 0;
				Position = UDim2.new(0.5, 0, 0, 0);
				AnchorPoint = Vector2.new(0.5, 0);
			}, {
				UICorner = React_upvr.createElement("UICorner", {
					CornerRadius = udim_upvr;
				});
			})
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			var125 = var125("Frame", {
				Size = any_useAnimatedBinding_result1_upvr:map(function(arg1_11) -- Line 209
					--[[ Upvalues[2]:
						[1]: any_useState_result1_upvr_3 (copied, readonly)
						[2]: constants_upvr (copied, readonly)
					]]
					return UDim2.new(1, 0, 0, arg1_11.shadowHeight * any_useState_result1_upvr_3 + constants_upvr.DefaultPadding * 2)
				end);
				LayoutOrder = #arg1.notifications + 2;
				BackgroundTransparency = 1;
				ZIndex = -(#arg1.notifications + 2);
				BorderSizePixel = 0;
			}, {})
		else
			var125 = nil
		end
		tbl_40.Shadow2 = var125
		local var138
		var125 = React_upvr.createElement
		local tbl_33 = {}
		var138 = 0
		tbl_33.Size = UDim2.new(1, 0, 0, var138)
		tbl_33.AutomaticSize = Enum.AutomaticSize.Y
		tbl_33.BorderSizePixel = 0
		tbl_33.BackgroundTransparency = 1
		tbl_33.LayoutOrder = arg1.layoutOrder
		local tbl_5 = {}
		if any_useState_result1_upvr_2 and any_useState_result1_upvr then
			var138 = UDim.new(0, constants_upvr.DefaultPadding)
		else
			var138 = UDim.new(0, 0)
		end
		tbl_5.PaddingBottom = var138
		;({}).UIPadding = React_upvr.createElement("UIPadding", tbl_5)
		local var141
		if not any_useState_result1_upvr_2 and any_useState_result1_upvr then
			var141 = React_upvr.createElement
			local tbl_41 = {}
			var138 = UDim2.new(0, 160, 0, 40)
			tbl_41.Size = var138
			var138 = ""
			tbl_41.Text = var138
			var138 = Font_upvr
			tbl_41.Font = var138
			var138 = var58_upvr
			tbl_41.TextSize = var138
			var138 = React_upvr.Event.Activated
			tbl_41[var138] = var39_upvr
			var138 = 1
			tbl_41.BackgroundTransparency = var138
			var138 = var8_result1_upvr.Theme.BackgroundMuted.Color
			tbl_41.BackgroundColor3 = var138
			var138 = false
			tbl_41.AutoButtonColor = var138
			var138 = 1
			tbl_41.LayoutOrder = var138
			var138 = 4
			tbl_41.ZIndex = var138
			var138 = UDim2.new(1, 0, 0, 0)
			tbl_41.Position = var138
			var138 = Vector2.new(1, 0)
			tbl_41.AnchorPoint = var138
			var138 = 0
			tbl_41.BorderSizePixel = var138
			var138 = {}
			local tbl_32 = {
				UICorner = React_upvr.createElement("UICorner", {
					CornerRadius = udim_upvr_2;
				});
			}
			local tbl_19 = {
				UIListLayout = React_upvr.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal;
					SortOrder = Enum.SortOrder.LayoutOrder;
					HorizontalAlignment = Enum.HorizontalAlignment.Center;
				});
			}
			local tbl_15 = {}
			local var150 = var11_result1_upvr
			if var150 then
				var150 = var11_result1_upvr.lessText
			end
			tbl_15.Text = var150
			tbl_15.LayoutOrder = 1
			tbl_15.Font = Font_upvr
			tbl_15.TextSize = var58_upvr
			tbl_15.BackgroundTransparency = 1
			tbl_15.TextColor3 = var8_result1_upvr.Theme.TextMuted.Color
			tbl_15.Size = UDim2.new(0, 0, 1, 0)
			tbl_15.AutomaticSize = Enum.AutomaticSize.X
			tbl_19.ShowLessText = React_upvr.createElement("TextLabel", tbl_15, {React_upvr.createElement("UIPadding", {
				PaddingRight = UDim.new(0, constants_upvr.DefaultPadding);
			})})
			tbl_19.CollapseIcon = React_upvr.createElement(ImageSetLabel_upvr, {
				LayoutOrder = 2;
				AnchorPoint = Vector2.new(0.5, 0.5);
				Position = UDim2.fromScale(0.5, 0.5);
				Size = udim2_upvr;
				BackgroundTransparency = 1;
				BorderSizePixel = 0;
				Image = icons_actions_truncationCollapse_upvr;
				ImageColor3 = var8_result1_upvr.Theme.UIEmphasis.Color;
			})
			tbl_32.ShowLessTextAndIconFrame = React_upvr.createElement("Frame", {
				AutomaticSize = Enum.AutomaticSize.XY;
				Position = UDim2.new(0.5, 0, 0.5, 0);
				AnchorPoint = Vector2.new(0.5, 0.5);
				BorderSizePixel = 0;
				BackgroundTransparency = 1;
			}, tbl_19)
			var138[1] = React_upvr.createElement("Frame", {
				Size = UDim2.new(1, -constants_upvr.DefaultPadding, 1, -constants_upvr.DefaultPadding);
				BackgroundTransparency = 0;
				BackgroundColor3 = var8_result1_upvr.Theme.BackgroundContrast.Color;
				Position = UDim2.new(1, -constants_upvr.DefaultPadding, 0, 0);
				AnchorPoint = Vector2.new(1, 0);
				ZIndex = 10;
				BorderSizePixel = 0;
			}, tbl_32)
			var141 = var141("TextButton", tbl_41, var138)
		else
			var141 = nil
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({}).ShowLessButton = var141
		local var154
		var141 = React_upvr.createElement
		local tbl_8 = {}
		var138 = UDim2.new
		if any_useState_result1_upvr_2 and any_useState_result1_upvr then
			var154 = any_useState_result1_upvr_3 + constants_upvr.DefaultPadding * 2
		else
			var154 = 0
		end
		var138 = var138(1, 0, 0, var154)
		tbl_8.Size = var138
		var138 = 1
		tbl_8.BackgroundTransparency = var138
		var138 = ""
		tbl_8.Text = var138
		var138 = React_upvr.Event.Activated
		tbl_8[var138] = var39_upvr
		var138 = 5
		tbl_8.ZIndex = var138
		var138 = 0
		tbl_8.BorderSizePixel = var138
		var138 = false
		tbl_8.AutoButtonColor = var138
		var141 = var141("TextButton", tbl_8)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({}).InvisibleExpandButton = var141
		if any_useState_result1_upvr_3 ~= 0 and any_useState_result1_upvr_2 then
			var138 = arg1
			if 1 < #var138.notifications then
				var141 = React_upvr.createElement
				local tbl_30 = {}
				var138 = UDim2.new
				var154 = var21_upvr
				var138 = var138(0, 125, 0, var154)
				tbl_30.Size = var138
				var138 = Enum.AutomaticSize.X
				tbl_30.AutomaticSize = var138
				var138 = UDim2.new
				var154 = 0
				var138 = var138(0.5, 0, 1, var154)
				tbl_30.Position = var138
				var138 = Vector2.new(0.5, 1)
				tbl_30.AnchorPoint = var138
				var138 = 10
				tbl_30.ZIndex = var138
				var138 = var8_result1_upvr.Theme.BackgroundContrast.Color
				tbl_30.BackgroundColor3 = var138
				var138 = 0
				tbl_30.BackgroundTransparency = var138
				var138 = {}
				local tbl_37 = {}
				var154 = udim_upvr_2
				tbl_37.CornerRadius = var154
				var138.UICorner = React_upvr.createElement("UICorner", tbl_37)
				local tbl_29 = {}
				var154 = Enum.AutomaticSize.XY
				tbl_29.AutomaticSize = var154
				var154 = UDim2.new(0.5, 0, 0.5, 0)
				tbl_29.Position = var154
				var154 = Vector2.new(0.5, 0.5)
				tbl_29.AnchorPoint = var154
				var154 = 0
				tbl_29.BorderSizePixel = var154
				var154 = 1
				tbl_29.BackgroundTransparency = var154
				var154 = {}
				var154.UIListLayout = React_upvr.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal;
					SortOrder = Enum.SortOrder.LayoutOrder;
					HorizontalAlignment = Enum.HorizontalAlignment.Center;
				})
				local tbl_51 = {}
				local var161 = var11_result1_upvr
				if var161 then
					var161 = var11_result1_upvr.moreText
					if var161 then
						var161 = string.gsub(var11_result1_upvr.moreText, "{notificationCount}", tostring(#arg1.notifications - 1))
					end
				end
				tbl_51.Text = var161
				tbl_51.LayoutOrder = 1
				tbl_51.Font = Font_upvr
				tbl_51.TextSize = var58_upvr
				tbl_51.BackgroundTransparency = 1
				tbl_51.TextColor3 = var8_result1_upvr.Theme.TextMuted.Color
				tbl_51.Size = UDim2.new(0, 0, 1, 0)
				tbl_51.AutomaticSize = Enum.AutomaticSize.X
				var154.NumberMoreText = React_upvr.createElement("TextLabel", tbl_51, {React_upvr.createElement("UIPadding", {
					PaddingRight = UDim.new(0, constants_upvr.DefaultPadding);
				})})
				var154.ExpandIcon = React_upvr.createElement(ImageSetLabel_upvr, {
					LayoutOrder = 2;
					AnchorPoint = Vector2.new(0.5, 0.5);
					Position = UDim2.fromScale(0.5, 0.5);
					Size = udim2_upvr;
					BackgroundTransparency = 1;
					BorderSizePixel = 0;
					Image = icons_actions_truncationExpand_upvr;
					ImageColor3 = var8_result1_upvr.Theme.UIEmphasis.Color;
				})
				var138.NumberedMoreTextAndIconFrame = React_upvr.createElement("Frame", tbl_29, var154)
				var141 = var141("Frame", tbl_30, var138)
				-- KONSTANTWARNING: GOTO [1000] #708
			end
		end
		var141 = nil
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({}).NumberMoreButton = var141
		var141 = React_upvr.createElement
		local tbl_20 = {}
		var138 = UDim2.new
		var154 = 0
		var138 = var138(1, 0, 0, var154)
		tbl_20.Size = var138
		var138 = Enum.AutomaticSize.Y
		tbl_20.AutomaticSize = var138
		var138 = 1
		tbl_20.BackgroundTransparency = var138
		var138 = 3
		tbl_20.ZIndex = var138
		var138 = 0
		tbl_20.BorderSizePixel = var138
		var138 = tbl_40
		var141 = var141("Frame", tbl_20, var138)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({}).ListOfNotifications = var141
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var125 = var125("Frame", tbl_33, {})
		return var125
	end, {arg1.notifications, any_useState_result1_upvr_2, any_useState_result1_upvr_3, any_useState_result1_upvr})
end