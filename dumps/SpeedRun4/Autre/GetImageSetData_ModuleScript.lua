-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:29
-- Luau version 6, Types version 3
-- Time taken: 0.076754 seconds

local var1_upvw
function make_assets_1x() -- Line 11
	--[[ Upvalues[1]:
		[1]: var1_upvw (read and write)
	]]
	var1_upvw = {
		["LuaApp/9-slice/gr-badge"] = {
			ImageRectOffset = Vector2.new(24, 496);
			ImageRectSize = Vector2.new(15, 15);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/9-slice/gr-btn-blue-3px"] = {
			ImageRectOffset = Vector2.new(330, 77);
			ImageRectSize = Vector2.new(7, 7);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/9-slice/gr-btn-blue-3px-pressed"] = {
			ImageRectOffset = Vector2.new(330, 85);
			ImageRectSize = Vector2.new(7, 7);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/9-slice/gr-btn-white-3px"] = {
			ImageRectOffset = Vector2.new(330, 61);
			ImageRectSize = Vector2.new(7, 7);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/9-slice/gr-btn-white-3px-pressed"] = {
			ImageRectOffset = Vector2.new(330, 69);
			ImageRectSize = Vector2.new(7, 7);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/9-slice/gr-capsule-circle"] = {
			ImageRectOffset = Vector2.new(356, 336);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/9-slice/gr-loading-indicator"] = {
			ImageRectOffset = Vector2.new(121, 233);
			ImageRectSize = Vector2.new(4, 4);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/9-slice/gr-search"] = {
			ImageRectOffset = Vector2.new(0, 0);
			ImageRectSize = Vector2.new(28, 28);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/9-slice/gr-shadow"] = {
			ImageRectOffset = Vector2.new(486, 25);
			ImageRectSize = Vector2.new(23, 23);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/9-slice/gr-shadow-strong"] = {
			ImageRectOffset = Vector2.new(277, 45);
			ImageRectSize = Vector2.new(52, 52);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/9-slice/input-default"] = {
			ImageRectOffset = Vector2.new(330, 53);
			ImageRectSize = Vector2.new(7, 7);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/9-slice/notification_badge"] = {
			ImageRectOffset = Vector2.new(191, 0);
			ImageRectSize = Vector2.new(24, 24);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/9-slice/slot_bg"] = {
			ImageRectOffset = Vector2.new(314, 27);
			ImageRectSize = Vector2.new(18, 18);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/9-slice/slot_stroke"] = {
			ImageRectOffset = Vector2.new(333, 27);
			ImageRectSize = Vector2.new(18, 18);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/9-slice/white_button_9slices"] = {
			ImageRectOffset = Vector2.new(352, 27);
			ImageRectSize = Vector2.new(17, 17);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/buttons/buttonFill"] = {
			ImageRectOffset = Vector2.new(370, 27);
			ImageRectSize = Vector2.new(17, 17);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/buttons/buttonLeftFill"] = {
			ImageRectOffset = Vector2.new(326, 116);
			ImageRectSize = Vector2.new(9, 17);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/buttons/buttonPill"] = {
			ImageRectOffset = Vector2.new(277, 0);
			ImageRectSize = Vector2.new(60, 44);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/buttons/buttonRightFill"] = {
			ImageRectOffset = Vector2.new(326, 98);
			ImageRectSize = Vector2.new(9, 17);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/buttons/buttonStroke"] = {
			ImageRectOffset = Vector2.new(352, 27);
			ImageRectSize = Vector2.new(17, 17);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/buttons/line"] = {
			ImageRectOffset = Vector2.new(84, 233);
			ImageRectSize = Vector2.new(36, 4);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/category/filter_continueplaying"] = {
			ImageRectOffset = Vector2.new(0, 29);
			ImageRectSize = Vector2.new(28, 28);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/category/filter_default"] = {
			ImageRectOffset = Vector2.new(0, 58);
			ImageRectSize = Vector2.new(28, 28);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/category/filter_featured"] = {
			ImageRectOffset = Vector2.new(0, 87);
			ImageRectSize = Vector2.new(28, 28);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/category/filter_friendsplaying"] = {
			ImageRectOffset = Vector2.new(0, 116);
			ImageRectSize = Vector2.new(28, 28);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/category/filter_myfavorites"] = {
			ImageRectOffset = Vector2.new(0, 145);
			ImageRectSize = Vector2.new(28, 28);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/category/filter_popular"] = {
			ImageRectOffset = Vector2.new(0, 174);
			ImageRectSize = Vector2.new(28, 28);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/category/filter_popularnearyou"] = {
			ImageRectOffset = Vector2.new(0, 203);
			ImageRectSize = Vector2.new(28, 28);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/category/filter_recommended"] = {
			ImageRectOffset = Vector2.new(0, 232);
			ImageRectSize = Vector2.new(28, 28);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/category/filter_topearning"] = {
			ImageRectOffset = Vector2.new(472, 460);
			ImageRectSize = Vector2.new(28, 28);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/category/filter_toprated"] = {
			ImageRectOffset = Vector2.new(443, 460);
			ImageRectSize = Vector2.new(28, 28);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/category/ic-bc"] = {
			ImageRectOffset = Vector2.new(491, 0);
			ImageRectSize = Vector2.new(20, 20);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/category/ic-cancel"] = {
			ImageRectOffset = Vector2.new(104, 27);
			ImageRectSize = Vector2.new(20, 20);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/category/ic-default"] = {
			ImageRectOffset = Vector2.new(125, 27);
			ImageRectSize = Vector2.new(20, 20);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/category/ic-featured"] = {
			ImageRectOffset = Vector2.new(146, 27);
			ImageRectSize = Vector2.new(20, 20);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/category/ic-friend activity"] = {
			ImageRectOffset = Vector2.new(167, 27);
			ImageRectSize = Vector2.new(20, 20);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/category/ic-my favorite"] = {
			ImageRectOffset = Vector2.new(188, 27);
			ImageRectSize = Vector2.new(20, 20);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/category/ic-my recent"] = {
			ImageRectOffset = Vector2.new(209, 27);
			ImageRectSize = Vector2.new(20, 20);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/category/ic-popular in VR"] = {
			ImageRectOffset = Vector2.new(230, 27);
			ImageRectSize = Vector2.new(20, 20);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/category/ic-popular in country"] = {
			ImageRectOffset = Vector2.new(251, 27);
			ImageRectSize = Vector2.new(20, 20);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/category/ic-popular"] = {
			ImageRectOffset = Vector2.new(272, 27);
			ImageRectSize = Vector2.new(20, 20);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/category/ic-purchased"] = {
			ImageRectOffset = Vector2.new(293, 27);
			ImageRectSize = Vector2.new(20, 20);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/category/ic-recommended"] = {
			ImageRectOffset = Vector2.new(472, 489);
			ImageRectSize = Vector2.new(20, 20);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/category/ic-top earning"] = {
			ImageRectOffset = Vector2.new(443, 489);
			ImageRectSize = Vector2.new(20, 20);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/category/ic-top favorite"] = {
			ImageRectOffset = Vector2.new(414, 489);
			ImageRectSize = Vector2.new(20, 20);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/category/ic-top paid"] = {
			ImageRectOffset = Vector2.new(385, 489);
			ImageRectSize = Vector2.new(20, 20);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/category/ic-top rated"] = {
			ImageRectOffset = Vector2.new(356, 489);
			ImageRectSize = Vector2.new(20, 20);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/dropdown/gr-contextual menu"] = {
			ImageRectOffset = Vector2.new(114, 498);
			ImageRectSize = Vector2.new(11, 11);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/dropdown/gr-tip-down"] = {
			ImageRectOffset = Vector2.new(97, 393);
			ImageRectSize = Vector2.new(12, 6);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/dropdown/gr-tip-left"] = {
			ImageRectOffset = Vector2.new(107, 498);
			ImageRectSize = Vector2.new(6, 12);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/dropdown/gr-tip-right"] = {
			ImageRectOffset = Vector2.new(100, 498);
			ImageRectSize = Vector2.new(6, 12);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/dropdown/gr-tip-up"] = {
			ImageRectOffset = Vector2.new(84, 393);
			ImageRectSize = Vector2.new(12, 6);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/graphic/actions_friends_addfriend"] = {
			ImageRectOffset = Vector2.new(319, 447);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/graphic/addfriendborder"] = {
			ImageRectOffset = Vector2.new(3, 319);
			ImageRectSize = Vector2.new(80, 80);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/graphic/addfriendfill"] = {
			ImageRectOffset = Vector2.new(3, 238);
			ImageRectSize = Vector2.new(80, 80);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/graphic/checkbox_checked"] = {
			ImageRectOffset = Vector2.new(0, 261);
			ImageRectSize = Vector2.new(26, 26);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/graphic/checkbox_checked_disabled"] = {
			ImageRectOffset = Vector2.new(0, 288);
			ImageRectSize = Vector2.new(26, 26);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/graphic/checkbox_unchecked"] = {
			ImageRectOffset = Vector2.new(0, 315);
			ImageRectSize = Vector2.new(26, 26);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/graphic/checkbox_unchecked_disabled"] = {
			ImageRectOffset = Vector2.new(0, 342);
			ImageRectSize = Vector2.new(26, 26);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/graphic/checkbox_unchecked_hover"] = {
			ImageRectOffset = Vector2.new(0, 369);
			ImageRectSize = Vector2.new(26, 26);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/graphic/common_add"] = {
			ImageRectOffset = Vector2.new(319, 410);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/graphic/friendpresence"] = {
			ImageRectOffset = Vector2.new(87, 498);
			ImageRectSize = Vector2.new(12, 12);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/graphic/gr-add"] = {
			ImageRectOffset = Vector2.new(387, 0);
			ImageRectSize = Vector2.new(48, 48);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/graphic/gr-card"] = {
			ImageRectOffset = Vector2.new(330, 45);
			ImageRectSize = Vector2.new(7, 7);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/graphic/gr-counter-slot-32x32"] = {
			ImageRectOffset = Vector2.new(426, 336);
			ImageRectSize = Vector2.new(32, 32);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/graphic/gr-indicator-ingame"] = {
			ImageRectOffset = Vector2.new(461, 134);
			ImageRectSize = Vector2.new(14, 14);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/graphic/gr-indicator-instudio"] = {
			ImageRectOffset = Vector2.new(461, 119);
			ImageRectSize = Vector2.new(14, 14);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/graphic/gr-indicator-online"] = {
			ImageRectOffset = Vector2.new(416, 134);
			ImageRectSize = Vector2.new(14, 14);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/graphic/gr-notification badge"] = {
			ImageRectOffset = Vector2.new(146, 492);
			ImageRectSize = Vector2.new(19, 19);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/graphic/gr-play-circle"] = {
			ImageRectOffset = Vector2.new(3, 400);
			ImageRectSize = Vector2.new(70, 70);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/graphic/ic_alert"] = {
			ImageRectOffset = Vector2.new(319, 373);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/graphic/ic_logo"] = {
			ImageRectOffset = Vector2.new(84, 238);
			ImageRectSize = Vector2.new(36, 37);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/graphic/itemCard-Background"] = {
			ImageRectOffset = Vector2.new(0, 0);
			ImageRectSize = Vector2.new(2, 256);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/graphic/ph-avatar-portrait"] = {
			ImageRectOffset = Vector2.new(126, 0);
			ImageRectSize = Vector2.new(150, 150);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/graphic/profilemask"] = {
			ImageRectOffset = Vector2.new(3, 157);
			ImageRectSize = Vector2.new(80, 80);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/graphic/profilemask_36"] = {
			ImageRectOffset = Vector2.new(319, 336);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/graphic/slot_dot"] = {
			ImageRectOffset = Vector2.new(338, 98);
			ImageRectSize = Vector2.new(48, 48);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/graphic/tooltipbox"] = {
			ImageRectOffset = Vector2.new(338, 49);
			ImageRectSize = Vector2.new(48, 48);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/graphic/tooltipcaretLeft"] = {
			ImageRectOffset = Vector2.new(326, 134);
			ImageRectSize = Vector2.new(8, 16);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/graphic/triangle"] = {
			ImageRectOffset = Vector2.new(3, 496);
			ImageRectSize = Vector2.new(20, 8);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/graphic/verificationUpsellModal"] = {
			ImageRectOffset = Vector2.new(3, 0);
			ImageRectSize = Vector2.new(122, 156);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/Catalog"] = {
			ImageRectOffset = Vector2.new(467, 299);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/GameDetails/collapse"] = {
			ImageRectOffset = Vector2.new(430, 299);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/GameDetails/favoriteOff"] = {
			ImageRectOffset = Vector2.new(393, 299);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/GameDetails/favoriteOn"] = {
			ImageRectOffset = Vector2.new(356, 299);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/GameDetails/feedback"] = {
			ImageRectOffset = Vector2.new(319, 299);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/GameDetails/invite"] = {
			ImageRectOffset = Vector2.new(282, 447);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/GameDetails/more"] = {
			ImageRectOffset = Vector2.new(84, 195);
			ImageRectSize = Vector2.new(37, 37);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/GameDetails/navigation/close"] = {
			ImageRectOffset = Vector2.new(282, 410);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/GameDetails/navigation/pushLeft"] = {
			ImageRectOffset = Vector2.new(282, 373);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/GameDetails/navigation/pushRight_small"] = {
			ImageRectOffset = Vector2.new(406, 27);
			ImageRectSize = Vector2.new(16, 16);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/icons/GameDetails/notificationsOff"] = {
			ImageRectOffset = Vector2.new(282, 336);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/GameDetails/notificationsOn"] = {
			ImageRectOffset = Vector2.new(282, 299);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/GameDetails/play"] = {
			ImageRectOffset = Vector2.new(467, 262);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/GameDetails/playing_large"] = {
			ImageRectOffset = Vector2.new(126, 151);
			ImageRectSize = Vector2.new(44, 44);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/GameDetails/playing_small"] = {
			ImageRectOffset = Vector2.new(423, 27);
			ImageRectSize = Vector2.new(16, 16);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/icons/GameDetails/private"] = {
			ImageRectOffset = Vector2.new(430, 262);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/GameDetails/rating_large"] = {
			ImageRectOffset = Vector2.new(432, 74);
			ImageRectSize = Vector2.new(44, 44);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/GameDetails/rating_small"] = {
			ImageRectOffset = Vector2.new(440, 27);
			ImageRectSize = Vector2.new(16, 16);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/icons/GameDetails/sessions_large"] = {
			ImageRectOffset = Vector2.new(387, 74);
			ImageRectSize = Vector2.new(44, 44);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/GameDetails/share"] = {
			ImageRectOffset = Vector2.new(393, 262);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/GameDetails/social/Amazon_large"] = {
			ImageRectOffset = Vector2.new(356, 262);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/GameDetails/social/Facebook_large"] = {
			ImageRectOffset = Vector2.new(319, 262);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/GameDetails/social/RobloxGroup"] = {
			ImageRectOffset = Vector2.new(282, 262);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/GameDetails/social/Twitch_large"] = {
			ImageRectOffset = Vector2.new(245, 447);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/GameDetails/social/Twitter_large"] = {
			ImageRectOffset = Vector2.new(245, 410);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/GameDetails/social/Youtube_large"] = {
			ImageRectOffset = Vector2.new(245, 373);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/GameDetails/unavailable"] = {
			ImageRectOffset = Vector2.new(245, 336);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/GameDetails/voteDownOff"] = {
			ImageRectOffset = Vector2.new(245, 299);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/GameDetails/voteDownOn"] = {
			ImageRectOffset = Vector2.new(245, 262);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/GameDetails/voteUpOff"] = {
			ImageRectOffset = Vector2.new(467, 225);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/GameDetails/voteUpOn"] = {
			ImageRectOffset = Vector2.new(430, 225);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/Luobu/close-circle"] = {
			ImageRectOffset = Vector2.new(338, 0);
			ImageRectSize = Vector2.new(48, 48);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/Luobu/friend-request-accept"] = {
			ImageRectOffset = Vector2.new(472, 431);
			ImageRectSize = Vector2.new(28, 28);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/Luobu/friend-request-reject"] = {
			ImageRectOffset = Vector2.new(443, 431);
			ImageRectSize = Vector2.new(28, 28);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/actions_block"] = {
			ImageRectOffset = Vector2.new(245, 336);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/actions_edit"] = {
			ImageRectOffset = Vector2.new(393, 225);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/actions_edit_add"] = {
			ImageRectOffset = Vector2.new(356, 225);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/actions_edit_hide"] = {
			ImageRectOffset = Vector2.new(457, 27);
			ImageRectSize = Vector2.new(16, 16);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/icons/actions_edit_remove"] = {
			ImageRectOffset = Vector2.new(319, 225);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/actions_favoriteOff"] = {
			ImageRectOffset = Vector2.new(282, 225);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/actions_favoriteOn"] = {
			ImageRectOffset = Vector2.new(245, 225);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/actions_privacy_show"] = {
			ImageRectOffset = Vector2.new(474, 27);
			ImageRectSize = Vector2.new(16, 16);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/icons/actions_selectOn"] = {
			ImageRectOffset = Vector2.new(208, 447);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/archived/ARCHIVED_robux"] = {
			ImageRectOffset = Vector2.new(208, 410);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/arrow_right"] = {
			ImageRectOffset = Vector2.new(491, 27);
			ImageRectSize = Vector2.new(16, 16);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/icons/avatar_profile"] = {
			ImageRectOffset = Vector2.new(208, 373);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/challenge_games"] = {
			ImageRectOffset = Vector2.new(208, 336);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/chat"] = {
			ImageRectOffset = Vector2.new(84, 157);
			ImageRectSize = Vector2.new(37, 37);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/common/robux"] = {
			ImageRectOffset = Vector2.new(208, 299);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/common/robux_color"] = {
			ImageRectOffset = Vector2.new(208, 262);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/common/robux_color_small"] = {
			ImageRectOffset = Vector2.new(29, 52);
			ImageRectSize = Vector2.new(16, 16);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/icons/common/robux_small"] = {
			ImageRectOffset = Vector2.new(29, 69);
			ImageRectSize = Vector2.new(16, 16);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/icons/common_clear_small"] = {
			ImageRectOffset = Vector2.new(29, 86);
			ImageRectSize = Vector2.new(16, 16);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/icons/common_refresh"] = {
			ImageRectOffset = Vector2.new(208, 225);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/dropdown_arrowDown"] = {
			ImageRectOffset = Vector2.new(414, 460);
			ImageRectSize = Vector2.new(28, 28);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/gender_female"] = {
			ImageRectOffset = Vector2.new(467, 188);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/gender_female_selected"] = {
			ImageRectOffset = Vector2.new(430, 188);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/gender_male"] = {
			ImageRectOffset = Vector2.new(393, 188);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/gender_male_selected"] = {
			ImageRectOffset = Vector2.new(356, 188);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/ic-ROBUX"] = {
			ImageRectOffset = Vector2.new(216, 0);
			ImageRectSize = Vector2.new(24, 24);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/icons/ic-add"] = {
			ImageRectOffset = Vector2.new(477, 107);
			ImageRectSize = Vector2.new(32, 32);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/ic-add-down"] = {
			ImageRectOffset = Vector2.new(393, 336);
			ImageRectSize = Vector2.new(32, 32);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/ic-arrow-down"] = {
			ImageRectOffset = Vector2.new(74, 498);
			ImageRectSize = Vector2.new(12, 12);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/ic-arrow-right"] = {
			ImageRectOffset = Vector2.new(493, 489);
			ImageRectSize = Vector2.new(18, 18);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/ic-back"] = {
			ImageRectOffset = Vector2.new(241, 0);
			ImageRectSize = Vector2.new(24, 24);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/icons/ic-bc"] = {
			ImageRectOffset = Vector2.new(387, 49);
			ImageRectSize = Vector2.new(48, 24);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/ic-bc-small"] = {
			ImageRectOffset = Vector2.new(266, 0);
			ImageRectSize = Vector2.new(24, 24);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/icons/ic-blue-arrow"] = {
			ImageRectOffset = Vector2.new(291, 0);
			ImageRectSize = Vector2.new(24, 24);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/icons/ic-blue-dot"] = {
			ImageRectOffset = Vector2.new(416, 119);
			ImageRectSize = Vector2.new(14, 14);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/ic-blue-online"] = {
			ImageRectOffset = Vector2.new(316, 0);
			ImageRectSize = Vector2.new(24, 24);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/icons/ic-chat20x20"] = {
			ImageRectOffset = Vector2.new(488, 336);
			ImageRectSize = Vector2.new(20, 20);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/ic-clear"] = {
			ImageRectOffset = Vector2.new(29, 103);
			ImageRectSize = Vector2.new(16, 16);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/icons/ic-facebook"] = {
			ImageRectOffset = Vector2.new(277, 98);
			ImageRectSize = Vector2.new(48, 48);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/ic-favorite"] = {
			ImageRectOffset = Vector2.new(436, 25);
			ImageRectSize = Vector2.new(24, 23);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/ic-favorite-filled"] = {
			ImageRectOffset = Vector2.new(461, 25);
			ImageRectSize = Vector2.new(24, 23);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/ic-games"] = {
			ImageRectOffset = Vector2.new(341, 0);
			ImageRectSize = Vector2.new(24, 24);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/icons/ic-google"] = {
			ImageRectOffset = Vector2.new(74, 449);
			ImageRectSize = Vector2.new(48, 48);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/ic-gray-arrow"] = {
			ImageRectOffset = Vector2.new(366, 0);
			ImageRectSize = Vector2.new(24, 24);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/icons/ic-green-dot"] = {
			ImageRectOffset = Vector2.new(55, 496);
			ImageRectSize = Vector2.new(14, 14);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/ic-green-ingame"] = {
			ImageRectOffset = Vector2.new(391, 0);
			ImageRectSize = Vector2.new(24, 24);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/icons/ic-more"] = {
			ImageRectOffset = Vector2.new(416, 0);
			ImageRectSize = Vector2.new(24, 24);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/icons/ic-more-about"] = {
			ImageRectOffset = Vector2.new(0, 396);
			ImageRectSize = Vector2.new(26, 26);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/icons/ic-more-blog"] = {
			ImageRectOffset = Vector2.new(0, 423);
			ImageRectSize = Vector2.new(26, 26);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/icons/ic-more-builders-club"] = {
			ImageRectOffset = Vector2.new(0, 450);
			ImageRectSize = Vector2.new(26, 26);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/icons/ic-more-catalog"] = {
			ImageRectOffset = Vector2.new(0, 477);
			ImageRectSize = Vector2.new(26, 26);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/icons/ic-more-create"] = {
			ImageRectOffset = Vector2.new(29, 0);
			ImageRectSize = Vector2.new(26, 26);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/icons/ic-more-events"] = {
			ImageRectOffset = Vector2.new(56, 0);
			ImageRectSize = Vector2.new(26, 26);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/icons/ic-more-friends"] = {
			ImageRectOffset = Vector2.new(83, 0);
			ImageRectSize = Vector2.new(26, 26);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/icons/ic-more-groups"] = {
			ImageRectOffset = Vector2.new(110, 0);
			ImageRectSize = Vector2.new(26, 26);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/icons/ic-more-help"] = {
			ImageRectOffset = Vector2.new(137, 0);
			ImageRectSize = Vector2.new(26, 26);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/icons/ic-more-inventory"] = {
			ImageRectOffset = Vector2.new(164, 0);
			ImageRectSize = Vector2.new(26, 26);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/icons/ic-more-message"] = {
			ImageRectOffset = Vector2.new(319, 484);
			ImageRectSize = Vector2.new(26, 26);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/ic-more-my-feed"] = {
			ImageRectOffset = Vector2.new(282, 484);
			ImageRectSize = Vector2.new(26, 26);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/ic-more-premium"] = {
			ImageRectOffset = Vector2.new(245, 484);
			ImageRectSize = Vector2.new(26, 26);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/ic-more-profile"] = {
			ImageRectOffset = Vector2.new(208, 484);
			ImageRectSize = Vector2.new(26, 26);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/ic-more-settings"] = {
			ImageRectOffset = Vector2.new(171, 484);
			ImageRectSize = Vector2.new(26, 26);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/ic-notification"] = {
			ImageRectOffset = Vector2.new(441, 0);
			ImageRectSize = Vector2.new(24, 24);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/icons/ic-obc"] = {
			ImageRectOffset = Vector2.new(436, 0);
			ImageRectSize = Vector2.new(48, 24);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/ic-obc-small"] = {
			ImageRectOffset = Vector2.new(466, 0);
			ImageRectSize = Vector2.new(24, 24);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/icons/ic-orange-dot"] = {
			ImageRectOffset = Vector2.new(40, 496);
			ImageRectSize = Vector2.new(14, 14);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/ic-orange-instudio"] = {
			ImageRectOffset = Vector2.new(29, 27);
			ImageRectSize = Vector2.new(24, 24);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/icons/ic-profile"] = {
			ImageRectOffset = Vector2.new(414, 431);
			ImageRectSize = Vector2.new(28, 28);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/ic-roblox-close"] = {
			ImageRectOffset = Vector2.new(319, 188);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/ic-search"] = {
			ImageRectOffset = Vector2.new(54, 27);
			ImageRectSize = Vector2.new(24, 24);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/icons/ic-search-gray"] = {
			ImageRectOffset = Vector2.new(126, 492);
			ImageRectSize = Vector2.new(19, 19);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/ic-search-new"] = {
			ImageRectOffset = Vector2.new(282, 188);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/ic-tbc"] = {
			ImageRectOffset = Vector2.new(3, 471);
			ImageRectSize = Vector2.new(48, 24);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/ic-tbc-small"] = {
			ImageRectOffset = Vector2.new(79, 27);
			ImageRectSize = Vector2.new(24, 24);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/icons/ic-twitter"] = {
			ImageRectOffset = Vector2.new(74, 400);
			ImageRectSize = Vector2.new(48, 48);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/ic-view-details20x20"] = {
			ImageRectOffset = Vector2.new(52, 471);
			ImageRectSize = Vector2.new(20, 20);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/icon_retry_white"] = {
			ImageRectOffset = Vector2.new(486, 49);
			ImageRectSize = Vector2.new(24, 24);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/logout"] = {
			ImageRectOffset = Vector2.new(245, 188);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/menu/avatar_off"] = {
			ImageRectOffset = Vector2.new(208, 188);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/menu/avatar_on"] = {
			ImageRectOffset = Vector2.new(171, 447);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/menu/chat_off"] = {
			ImageRectOffset = Vector2.new(171, 410);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/menu/chat_on"] = {
			ImageRectOffset = Vector2.new(171, 373);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/menu/games_off"] = {
			ImageRectOffset = Vector2.new(171, 336);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/menu/games_on"] = {
			ImageRectOffset = Vector2.new(171, 299);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/menu/home_off"] = {
			ImageRectOffset = Vector2.new(171, 262);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/menu/home_on"] = {
			ImageRectOffset = Vector2.new(171, 225);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/menu/menu_avatarOn"] = {
			ImageRectOffset = Vector2.new(171, 188);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/menu/menu_editavatar"] = {
			ImageRectOffset = Vector2.new(467, 151);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/menu/menu_messages"] = {
			ImageRectOffset = Vector2.new(430, 151);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/menu/menu_profile"] = {
			ImageRectOffset = Vector2.new(393, 151);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/menu/menu_shop"] = {
			ImageRectOffset = Vector2.new(356, 151);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/menu/menu_trade"] = {
			ImageRectOffset = Vector2.new(319, 151);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/menu/more_off"] = {
			ImageRectOffset = Vector2.new(282, 151);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/menu/more_on"] = {
			ImageRectOffset = Vector2.new(245, 151);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/minimize"] = {
			ImageRectOffset = Vector2.new(208, 151);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/more_about"] = {
			ImageRectOffset = Vector2.new(472, 402);
			ImageRectSize = Vector2.new(28, 28);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/more_blog"] = {
			ImageRectOffset = Vector2.new(443, 402);
			ImageRectSize = Vector2.new(28, 28);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/more_buildersclub"] = {
			ImageRectOffset = Vector2.new(414, 402);
			ImageRectSize = Vector2.new(28, 28);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/more_catalog"] = {
			ImageRectOffset = Vector2.new(385, 460);
			ImageRectSize = Vector2.new(28, 28);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/more_creategames"] = {
			ImageRectOffset = Vector2.new(385, 431);
			ImageRectSize = Vector2.new(28, 28);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/more_events"] = {
			ImageRectOffset = Vector2.new(385, 402);
			ImageRectSize = Vector2.new(28, 28);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/more_friends"] = {
			ImageRectOffset = Vector2.new(472, 373);
			ImageRectSize = Vector2.new(28, 28);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/more_groups"] = {
			ImageRectOffset = Vector2.new(443, 373);
			ImageRectSize = Vector2.new(28, 28);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/more_help"] = {
			ImageRectOffset = Vector2.new(414, 373);
			ImageRectSize = Vector2.new(28, 28);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/more_inventory"] = {
			ImageRectOffset = Vector2.new(385, 373);
			ImageRectSize = Vector2.new(28, 28);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/more_messages"] = {
			ImageRectOffset = Vector2.new(356, 460);
			ImageRectSize = Vector2.new(28, 28);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/more_myfeed"] = {
			ImageRectOffset = Vector2.new(356, 431);
			ImageRectSize = Vector2.new(28, 28);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/more_premium"] = {
			ImageRectOffset = Vector2.new(356, 402);
			ImageRectSize = Vector2.new(28, 28);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/more_profile"] = {
			ImageRectOffset = Vector2.new(356, 373);
			ImageRectSize = Vector2.new(28, 28);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/more_settings"] = {
			ImageRectOffset = Vector2.new(459, 336);
			ImageRectSize = Vector2.new(28, 28);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/navbar_avatar"] = {
			ImageRectOffset = Vector2.new(171, 151);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/navbar_chat"] = {
			ImageRectOffset = Vector2.new(430, 151);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/navbar_games"] = {
			ImageRectOffset = Vector2.new(126, 455);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/navbar_home"] = {
			ImageRectOffset = Vector2.new(126, 418);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/navbar_more"] = {
			ImageRectOffset = Vector2.new(126, 381);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/navigation/close"] = {
			ImageRectOffset = Vector2.new(126, 344);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/navigation/pushBack"] = {
			ImageRectOffset = Vector2.new(126, 307);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/navigation/pushRight"] = {
			ImageRectOffset = Vector2.new(126, 270);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/navigation/pushRight_small"] = {
			ImageRectOffset = Vector2.new(29, 120);
			ImageRectSize = Vector2.new(16, 16);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/icons/navigation/swipe"] = {
			ImageRectOffset = Vector2.new(126, 233);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/navigation/swipeDown"] = {
			ImageRectOffset = Vector2.new(126, 196);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/navigation_pushRight"] = {
			ImageRectOffset = Vector2.new(84, 356);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/progress_small"] = {
			ImageRectOffset = Vector2.new(388, 27);
			ImageRectSize = Vector2.new(17, 16);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/icons/robux"] = {
			ImageRectOffset = Vector2.new(432, 119);
			ImageRectSize = Vector2.new(28, 28);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/robux-hex"] = {
			ImageRectOffset = Vector2.new(477, 74);
			ImageRectSize = Vector2.new(32, 32);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/robux_white"] = {
			ImageRectOffset = Vector2.new(387, 119);
			ImageRectSize = Vector2.new(28, 28);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/status_BC"] = {
			ImageRectOffset = Vector2.new(461, 49);
			ImageRectSize = Vector2.new(24, 24);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/status_OBC"] = {
			ImageRectOffset = Vector2.new(436, 49);
			ImageRectSize = Vector2.new(24, 24);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/status_TBC"] = {
			ImageRectOffset = Vector2.new(485, 0);
			ImageRectSize = Vector2.new(24, 24);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/status_item_limited"] = {
			ImageRectOffset = Vector2.new(29, 137);
			ImageRectSize = Vector2.new(16, 16);
			ImageSet = "LuaApp/img_set_1x_2";
		};
		["LuaApp/icons/status_premium"] = {
			ImageRectOffset = Vector2.new(84, 319);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["LuaApp/icons/status_progress"] = {
			ImageRectOffset = Vector2.new(84, 276);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_1x_1";
		};
		["InGameMenu/9Slice/BottomRoundedRect8px"] = {
			ImageRectOffset = Vector2.new(65, 37);
			ImageRectSize = Vector2.new(32, 24);
			ImageSet = "InGameMenu/img_set_1x_1";
		};
		["InGameMenu/9Slice/DropShadow"] = {
			ImageRectOffset = Vector2.new(0, 65);
			ImageRectSize = Vector2.new(52, 52);
			ImageSet = "InGameMenu/img_set_1x_1";
		};
		["InGameMenu/9Slice/DropdownOutline"] = {
			ImageRectOffset = Vector2.new(0, 163);
			ImageRectSize = Vector2.new(44, 44);
			ImageSet = "InGameMenu/img_set_1x_1";
		};
		["InGameMenu/9Slice/RoundedRect8px"] = {
			ImageRectOffset = Vector2.new(427, 0);
			ImageRectSize = Vector2.new(32, 32);
			ImageSet = "InGameMenu/img_set_1x_1";
		};
		["InGameMenu/9Slice/RoundedRectBorder8px"] = {
			ImageRectOffset = Vector2.new(394, 0);
			ImageRectSize = Vector2.new(32, 32);
			ImageSet = "InGameMenu/img_set_1x_1";
		};
		["InGameMenu/9Slice/ToggleFill"] = {
			ImageRectOffset = Vector2.new(324, 0);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "InGameMenu/img_set_1x_1";
		};
		["InGameMenu/9Slice/ToggleOutline"] = {
			ImageRectOffset = Vector2.new(287, 0);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "InGameMenu/img_set_1x_1";
		};
		["InGameMenu/9Slice/TopRoundedRect8px"] = {
			ImageRectOffset = Vector2.new(460, 0);
			ImageRectSize = Vector2.new(32, 24);
			ImageSet = "InGameMenu/img_set_1x_1";
		};
		["InGameMenu/9Slice/sliderCircle"] = {
			ImageRectOffset = Vector2.new(45, 118);
			ImageRectSize = Vector2.new(17, 17);
			ImageSet = "InGameMenu/img_set_1x_1";
		};
		["InGameMenu/Graphic/Circle"] = {
			ImageRectOffset = Vector2.new(0, 0);
			ImageRectSize = Vector2.new(64, 64);
			ImageSet = "InGameMenu/img_set_1x_1";
		};
		["InGameMenu/Graphic/ClickLeft"] = {
			ImageRectOffset = Vector2.new(250, 0);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "InGameMenu/img_set_1x_1";
		};
		["InGameMenu/Graphic/ClickRight"] = {
			ImageRectOffset = Vector2.new(213, 0);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "InGameMenu/img_set_1x_1";
		};
		["InGameMenu/Graphic/CloseButton"] = {
			ImageRectOffset = Vector2.new(361, 0);
			ImageRectSize = Vector2.new(32, 32);
			ImageSet = "InGameMenu/img_set_1x_1";
		};
		["InGameMenu/Graphic/SliderButton"] = {
			ImageRectOffset = Vector2.new(0, 208);
			ImageRectSize = Vector2.new(42, 42);
			ImageSet = "InGameMenu/img_set_1x_1";
		};
		["InGameMenu/Graphic/WheelScroll"] = {
			ImageRectOffset = Vector2.new(176, 0);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "InGameMenu/img_set_1x_1";
		};
		["InGameMenu/Graphic/sliderHover"] = {
			ImageRectOffset = Vector2.new(0, 118);
			ImageRectSize = Vector2.new(44, 44);
			ImageSet = "InGameMenu/img_set_1x_1";
		};
		["InGameMenu/Icons/ArrowDown"] = {
			ImageRectOffset = Vector2.new(43, 225);
			ImageRectSize = Vector2.new(16, 16);
			ImageSet = "InGameMenu/img_set_1x_1";
		};
		["InGameMenu/Icons/ArrowLeft"] = {
			ImageRectOffset = Vector2.new(43, 208);
			ImageRectSize = Vector2.new(16, 16);
			ImageSet = "InGameMenu/img_set_1x_1";
		};
		["InGameMenu/Icons/ArrowRight"] = {
			ImageRectOffset = Vector2.new(45, 136);
			ImageRectSize = Vector2.new(16, 17);
			ImageSet = "InGameMenu/img_set_1x_1";
		};
		["InGameMenu/Icons/ArrowUp"] = {
			ImageRectOffset = Vector2.new(45, 180);
			ImageRectSize = Vector2.new(16, 16);
			ImageSet = "InGameMenu/img_set_1x_1";
		};
		["InGameMenu/Icons/CancelFriendRequest"] = {
			ImageRectOffset = Vector2.new(139, 0);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "InGameMenu/img_set_1x_1";
		};
		["InGameMenu/Icons/Clear"] = {
			ImageRectOffset = Vector2.new(45, 163);
			ImageRectSize = Vector2.new(16, 16);
			ImageSet = "InGameMenu/img_set_1x_1";
		};
		["InGameMenu/Icons/ExpandArrow"] = {
			ImageRectOffset = Vector2.new(102, 0);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "InGameMenu/img_set_1x_1";
		};
		["InGameMenu/Icons/Friends"] = {
			ImageRectOffset = Vector2.new(65, 0);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "InGameMenu/img_set_1x_1";
		};
		["InGameMenu/Icons/GameSettings"] = {
			ImageRectOffset = Vector2.new(0, 473);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "InGameMenu/img_set_1x_1";
		};
		["InGameMenu/Icons/KeyBorder"] = {
			ImageRectOffset = Vector2.new(0, 436);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "InGameMenu/img_set_1x_1";
		};
		["InGameMenu/Icons/MenuControls"] = {
			ImageRectOffset = Vector2.new(0, 399);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "InGameMenu/img_set_1x_1";
		};
		["InGameMenu/Icons/MenuFriends"] = {
			ImageRectOffset = Vector2.new(65, 0);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "InGameMenu/img_set_1x_1";
		};
		["InGameMenu/Icons/MenuPlayers"] = {
			ImageRectOffset = Vector2.new(0, 362);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "InGameMenu/img_set_1x_1";
		};
		["InGameMenu/Icons/RespawnIcon"] = {
			ImageRectOffset = Vector2.new(0, 325);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "InGameMenu/img_set_1x_1";
		};
		["InGameMenu/Icons/SelectedCheck"] = {
			ImageRectOffset = Vector2.new(37, 251);
			ImageRectSize = Vector2.new(15, 12);
			ImageSet = "InGameMenu/img_set_1x_1";
		};
		["InGameMenu/Icons/UnFriend"] = {
			ImageRectOffset = Vector2.new(0, 288);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "InGameMenu/img_set_1x_1";
		};
		["InGameMenu/Icons/ViewAvatar"] = {
			ImageRectOffset = Vector2.new(0, 251);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "InGameMenu/img_set_1x_1";
		};
	}
end
local var283_upvw
function make_assets_3x() -- Line 295
	--[[ Upvalues[1]:
		[1]: var283_upvw (read and write)
	]]
	var283_upvw = {
		["LuaApp/9-slice/gr-badge"] = {
			ImageRectOffset = Vector2.new(3, 976);
			ImageRectSize = Vector2.new(45, 45);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/9-slice/gr-btn-blue-3px"] = {
			ImageRectOffset = Vector2.new(214, 807);
			ImageRectSize = Vector2.new(21, 21);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/9-slice/gr-btn-blue-3px-pressed"] = {
			ImageRectOffset = Vector2.new(214, 829);
			ImageRectSize = Vector2.new(21, 21);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/9-slice/gr-btn-white-3px"] = {
			ImageRectOffset = Vector2.new(214, 763);
			ImageRectSize = Vector2.new(21, 21);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/9-slice/gr-btn-white-3px-pressed"] = {
			ImageRectOffset = Vector2.new(214, 785);
			ImageRectSize = Vector2.new(21, 21);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/9-slice/gr-capsule-circle"] = {
			ImageRectOffset = Vector2.new(0, 0);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/9-slice/gr-loading-indicator"] = {
			ImageRectOffset = Vector2.new(635, 357);
			ImageRectSize = Vector2.new(12, 12);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/9-slice/gr-search"] = {
			ImageRectOffset = Vector2.new(836, 436);
			ImageRectSize = Vector2.new(84, 84);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/9-slice/gr-shadow"] = {
			ImageRectOffset = Vector2.new(936, 170);
			ImageRectSize = Vector2.new(69, 69);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/9-slice/gr-shadow-strong"] = {
			ImageRectOffset = Vector2.new(695, 241);
			ImageRectSize = Vector2.new(156, 156);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/9-slice/input-default"] = {
			ImageRectOffset = Vector2.new(214, 741);
			ImageRectSize = Vector2.new(21, 21);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/9-slice/notification_badge"] = {
			ImageRectOffset = Vector2.new(85, 371);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_3x_3";
		};
		["LuaApp/9-slice/slot_bg"] = {
			ImageRectOffset = Vector2.new(436, 969);
			ImageRectSize = Vector2.new(54, 54);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/9-slice/slot_stroke"] = {
			ImageRectOffset = Vector2.new(158, 152);
			ImageRectSize = Vector2.new(54, 54);
			ImageSet = "LuaApp/img_set_3x_3";
		};
		["LuaApp/9-slice/white_button_9slices"] = {
			ImageRectOffset = Vector2.new(904, 398);
			ImageRectSize = Vector2.new(51, 51);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/buttons/buttonFill"] = {
			ImageRectOffset = Vector2.new(852, 398);
			ImageRectSize = Vector2.new(51, 51);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/buttons/buttonLeftFill"] = {
			ImageRectOffset = Vector2.new(975, 293);
			ImageRectSize = Vector2.new(27, 51);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/buttons/buttonPill"] = {
			ImageRectOffset = Vector2.new(454, 241);
			ImageRectSize = Vector2.new(180, 132);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/buttons/buttonRightFill"] = {
			ImageRectOffset = Vector2.new(975, 241);
			ImageRectSize = Vector2.new(27, 51);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/buttons/buttonStroke"] = {
			ImageRectOffset = Vector2.new(904, 398);
			ImageRectSize = Vector2.new(51, 51);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/buttons/line"] = {
			ImageRectOffset = Vector2.new(695, 398);
			ImageRectSize = Vector2.new(108, 12);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/category/filter_continueplaying"] = {
			ImageRectOffset = Vector2.new(921, 436);
			ImageRectSize = Vector2.new(84, 84);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/category/filter_default"] = {
			ImageRectOffset = Vector2.new(545, 533);
			ImageRectSize = Vector2.new(84, 84);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/category/filter_featured"] = {
			ImageRectOffset = Vector2.new(630, 533);
			ImageRectSize = Vector2.new(84, 84);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/category/filter_friendsplaying"] = {
			ImageRectOffset = Vector2.new(715, 533);
			ImageRectSize = Vector2.new(84, 84);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/category/filter_myfavorites"] = {
			ImageRectOffset = Vector2.new(800, 533);
			ImageRectSize = Vector2.new(84, 84);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/category/filter_popular"] = {
			ImageRectOffset = Vector2.new(885, 533);
			ImageRectSize = Vector2.new(84, 84);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/category/filter_popularnearyou"] = {
			ImageRectOffset = Vector2.new(545, 618);
			ImageRectSize = Vector2.new(84, 84);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/category/filter_recommended"] = {
			ImageRectOffset = Vector2.new(545, 703);
			ImageRectSize = Vector2.new(84, 84);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/category/filter_topearning"] = {
			ImageRectOffset = Vector2.new(545, 788);
			ImageRectSize = Vector2.new(84, 84);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/category/filter_toprated"] = {
			ImageRectOffset = Vector2.new(545, 873);
			ImageRectSize = Vector2.new(84, 84);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/category/ic-bc"] = {
			ImageRectOffset = Vector2.new(545, 958);
			ImageRectSize = Vector2.new(60, 60);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/category/ic-cancel"] = {
			ImageRectOffset = Vector2.new(630, 958);
			ImageRectSize = Vector2.new(60, 60);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/category/ic-default"] = {
			ImageRectOffset = Vector2.new(715, 958);
			ImageRectSize = Vector2.new(60, 60);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/category/ic-featured"] = {
			ImageRectOffset = Vector2.new(800, 958);
			ImageRectSize = Vector2.new(60, 60);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/category/ic-friend activity"] = {
			ImageRectOffset = Vector2.new(885, 958);
			ImageRectSize = Vector2.new(60, 60);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/category/ic-my favorite"] = {
			ImageRectOffset = Vector2.new(946, 958);
			ImageRectSize = Vector2.new(60, 60);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/category/ic-my recent"] = {
			ImageRectOffset = Vector2.new(85, 871);
			ImageRectSize = Vector2.new(60, 60);
			ImageSet = "LuaApp/img_set_3x_3";
		};
		["LuaApp/category/ic-popular in VR"] = {
			ImageRectOffset = Vector2.new(85, 810);
			ImageRectSize = Vector2.new(60, 60);
			ImageSet = "LuaApp/img_set_3x_3";
		};
		["LuaApp/category/ic-popular in country"] = {
			ImageRectOffset = Vector2.new(85, 749);
			ImageRectSize = Vector2.new(60, 60);
			ImageSet = "LuaApp/img_set_3x_3";
		};
		["LuaApp/category/ic-popular"] = {
			ImageRectOffset = Vector2.new(85, 688);
			ImageRectSize = Vector2.new(60, 60);
			ImageSet = "LuaApp/img_set_3x_3";
		};
		["LuaApp/category/ic-purchased"] = {
			ImageRectOffset = Vector2.new(85, 627);
			ImageRectSize = Vector2.new(60, 60);
			ImageSet = "LuaApp/img_set_3x_3";
		};
		["LuaApp/category/ic-recommended"] = {
			ImageRectOffset = Vector2.new(85, 566);
			ImageRectSize = Vector2.new(60, 60);
			ImageSet = "LuaApp/img_set_3x_3";
		};
		["LuaApp/category/ic-top earning"] = {
			ImageRectOffset = Vector2.new(85, 505);
			ImageRectSize = Vector2.new(60, 60);
			ImageSet = "LuaApp/img_set_3x_3";
		};
		["LuaApp/category/ic-top favorite"] = {
			ImageRectOffset = Vector2.new(85, 444);
			ImageRectSize = Vector2.new(60, 60);
			ImageSet = "LuaApp/img_set_3x_3";
		};
		["LuaApp/category/ic-top paid"] = {
			ImageRectOffset = Vector2.new(961, 79);
			ImageRectSize = Vector2.new(60, 60);
			ImageSet = "LuaApp/img_set_3x_3";
		};
		["LuaApp/category/ic-top rated"] = {
			ImageRectOffset = Vector2.new(0, 960);
			ImageRectSize = Vector2.new(60, 60);
			ImageSet = "LuaApp/img_set_3x_3";
		};
		["LuaApp/dropdown/gr-contextual menu"] = {
			ImageRectOffset = Vector2.new(970, 988);
			ImageRectSize = Vector2.new(33, 33);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/dropdown/gr-tip-down"] = {
			ImageRectOffset = Vector2.new(185, 988);
			ImageRectSize = Vector2.new(36, 18);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/dropdown/gr-tip-left"] = {
			ImageRectOffset = Vector2.new(672, 411);
			ImageRectSize = Vector2.new(18, 36);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/dropdown/gr-tip-right"] = {
			ImageRectOffset = Vector2.new(672, 374);
			ImageRectSize = Vector2.new(18, 36);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/dropdown/gr-tip-up"] = {
			ImageRectOffset = Vector2.new(148, 988);
			ImageRectSize = Vector2.new(36, 18);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/graphic/actions_friends_addfriend"] = {
			ImageRectOffset = Vector2.new(0, 109);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/graphic/addfriendborder"] = {
			ImageRectOffset = Vector2.new(3, 451);
			ImageRectSize = Vector2.new(240, 240);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/graphic/addfriendfill"] = {
			ImageRectOffset = Vector2.new(695, 0);
			ImageRectSize = Vector2.new(240, 240);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/graphic/checkbox_checked"] = {
			ImageRectOffset = Vector2.new(796, 0);
			ImageRectSize = Vector2.new(78, 78);
			ImageSet = "LuaApp/img_set_3x_3";
		};
		["LuaApp/graphic/checkbox_checked_disabled"] = {
			ImageRectOffset = Vector2.new(717, 0);
			ImageRectSize = Vector2.new(78, 78);
			ImageSet = "LuaApp/img_set_3x_3";
		};
		["LuaApp/graphic/checkbox_unchecked"] = {
			ImageRectOffset = Vector2.new(638, 0);
			ImageRectSize = Vector2.new(78, 78);
			ImageSet = "LuaApp/img_set_3x_3";
		};
		["LuaApp/graphic/checkbox_unchecked_disabled"] = {
			ImageRectOffset = Vector2.new(559, 0);
			ImageRectSize = Vector2.new(78, 78);
			ImageSet = "LuaApp/img_set_3x_3";
		};
		["LuaApp/graphic/checkbox_unchecked_hover"] = {
			ImageRectOffset = Vector2.new(480, 0);
			ImageRectSize = Vector2.new(78, 78);
			ImageSet = "LuaApp/img_set_3x_3";
		};
		["LuaApp/graphic/common_add"] = {
			ImageRectOffset = Vector2.new(0, 218);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/graphic/friendpresence"] = {
			ImageRectOffset = Vector2.new(793, 411);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/graphic/gr-add"] = {
			ImageRectOffset = Vector2.new(389, 451);
			ImageRectSize = Vector2.new(144, 144);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/graphic/gr-card"] = {
			ImageRectOffset = Vector2.new(830, 411);
			ImageRectSize = Vector2.new(21, 21);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/graphic/gr-counter-slot-32x32"] = {
			ImageRectOffset = Vector2.new(436, 872);
			ImageRectSize = Vector2.new(96, 96);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/graphic/gr-indicator-ingame"] = {
			ImageRectOffset = Vector2.new(0, 981);
			ImageRectSize = Vector2.new(42, 42);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/graphic/gr-indicator-instudio"] = {
			ImageRectOffset = Vector2.new(43, 981);
			ImageRectSize = Vector2.new(42, 42);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/graphic/gr-indicator-online"] = {
			ImageRectOffset = Vector2.new(981, 0);
			ImageRectSize = Vector2.new(42, 42);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/graphic/gr-notification badge"] = {
			ImageRectOffset = Vector2.new(635, 299);
			ImageRectSize = Vector2.new(57, 57);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/graphic/gr-play-circle"] = {
			ImageRectOffset = Vector2.new(3, 692);
			ImageRectSize = Vector2.new(210, 210);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/graphic/ic_alert"] = {
			ImageRectOffset = Vector2.new(0, 327);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/graphic/ic_logo"] = {
			ImageRectOffset = Vector2.new(646, 451);
			ImageRectSize = Vector2.new(108, 111);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/graphic/itemCard-Background"] = {
			ImageRectOffset = Vector2.new(0, 0);
			ImageRectSize = Vector2.new(2, 512);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/graphic/ph-avatar-portrait"] = {
			ImageRectOffset = Vector2.new(3, 0);
			ImageRectSize = Vector2.new(450, 450);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/graphic/profilemask"] = {
			ImageRectOffset = Vector2.new(454, 0);
			ImageRectSize = Vector2.new(240, 240);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/graphic/profilemask_36"] = {
			ImageRectOffset = Vector2.new(0, 436);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/graphic/slot_dot"] = {
			ImageRectOffset = Vector2.new(244, 741);
			ImageRectSize = Vector2.new(144, 144);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/graphic/tooltipbox"] = {
			ImageRectOffset = Vector2.new(244, 596);
			ImageRectSize = Vector2.new(144, 144);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/graphic/tooltipcaretLeft"] = {
			ImageRectOffset = Vector2.new(214, 692);
			ImageRectSize = Vector2.new(24, 48);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/graphic/triangle"] = {
			ImageRectOffset = Vector2.new(695, 411);
			ImageRectSize = Vector2.new(60, 24);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/graphic/verificationUpsellModal"] = {
			ImageRectOffset = Vector2.new(852, 241);
			ImageRectSize = Vector2.new(122, 156);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/icons/Catalog"] = {
			ImageRectOffset = Vector2.new(0, 545);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/GameDetails/collapse"] = {
			ImageRectOffset = Vector2.new(0, 654);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/GameDetails/favoriteOff"] = {
			ImageRectOffset = Vector2.new(0, 763);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/GameDetails/favoriteOn"] = {
			ImageRectOffset = Vector2.new(0, 872);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/GameDetails/feedback"] = {
			ImageRectOffset = Vector2.new(109, 0);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/GameDetails/invite"] = {
			ImageRectOffset = Vector2.new(218, 0);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/GameDetails/more"] = {
			ImageRectOffset = Vector2.new(534, 451);
			ImageRectSize = Vector2.new(111, 111);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/icons/GameDetails/navigation/close"] = {
			ImageRectOffset = Vector2.new(327, 0);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/GameDetails/navigation/pushLeft"] = {
			ImageRectOffset = Vector2.new(436, 0);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/GameDetails/navigation/pushRight_small"] = {
			ImageRectOffset = Vector2.new(491, 969);
			ImageRectSize = Vector2.new(48, 48);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/GameDetails/notificationsOff"] = {
			ImageRectOffset = Vector2.new(545, 0);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/GameDetails/notificationsOn"] = {
			ImageRectOffset = Vector2.new(654, 0);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/GameDetails/play"] = {
			ImageRectOffset = Vector2.new(763, 0);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/GameDetails/playing_large"] = {
			ImageRectOffset = Vector2.new(389, 862);
			ImageRectSize = Vector2.new(132, 132);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/icons/GameDetails/playing_small"] = {
			ImageRectOffset = Vector2.new(970, 939);
			ImageRectSize = Vector2.new(48, 48);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/icons/GameDetails/private"] = {
			ImageRectOffset = Vector2.new(872, 0);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/GameDetails/rating_large"] = {
			ImageRectOffset = Vector2.new(389, 729);
			ImageRectSize = Vector2.new(132, 132);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/icons/GameDetails/rating_small"] = {
			ImageRectOffset = Vector2.new(970, 890);
			ImageRectSize = Vector2.new(48, 48);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/icons/GameDetails/sessions_large"] = {
			ImageRectOffset = Vector2.new(389, 596);
			ImageRectSize = Vector2.new(132, 132);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/icons/GameDetails/share"] = {
			ImageRectOffset = Vector2.new(109, 109);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/GameDetails/social/Amazon_large"] = {
			ImageRectOffset = Vector2.new(109, 218);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/GameDetails/social/Facebook_large"] = {
			ImageRectOffset = Vector2.new(109, 327);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/GameDetails/social/RobloxGroup"] = {
			ImageRectOffset = Vector2.new(109, 436);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/GameDetails/social/Twitch_large"] = {
			ImageRectOffset = Vector2.new(109, 545);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/GameDetails/social/Twitter_large"] = {
			ImageRectOffset = Vector2.new(109, 654);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/GameDetails/social/Youtube_large"] = {
			ImageRectOffset = Vector2.new(109, 763);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/GameDetails/unavailable"] = {
			ImageRectOffset = Vector2.new(109, 872);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/GameDetails/voteDownOff"] = {
			ImageRectOffset = Vector2.new(218, 109);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/GameDetails/voteDownOn"] = {
			ImageRectOffset = Vector2.new(327, 109);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/GameDetails/voteUpOff"] = {
			ImageRectOffset = Vector2.new(436, 109);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/GameDetails/voteUpOn"] = {
			ImageRectOffset = Vector2.new(545, 109);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/Luobu/close-circle"] = {
			ImageRectOffset = Vector2.new(244, 451);
			ImageRectSize = Vector2.new(144, 144);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/icons/Luobu/friend-request-accept"] = {
			ImageRectOffset = Vector2.new(630, 618);
			ImageRectSize = Vector2.new(84, 84);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/Luobu/friend-request-reject"] = {
			ImageRectOffset = Vector2.new(715, 618);
			ImageRectSize = Vector2.new(84, 84);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/actions_block"] = {
			ImageRectOffset = Vector2.new(109, 872);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/actions_edit"] = {
			ImageRectOffset = Vector2.new(654, 109);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/actions_edit_add"] = {
			ImageRectOffset = Vector2.new(763, 109);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/actions_edit_hide"] = {
			ImageRectOffset = Vector2.new(970, 830);
			ImageRectSize = Vector2.new(48, 48);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/icons/actions_edit_remove"] = {
			ImageRectOffset = Vector2.new(872, 109);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/actions_favoriteOff"] = {
			ImageRectOffset = Vector2.new(218, 218);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/actions_favoriteOn"] = {
			ImageRectOffset = Vector2.new(218, 327);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/actions_privacy_show"] = {
			ImageRectOffset = Vector2.new(970, 781);
			ImageRectSize = Vector2.new(48, 48);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/icons/actions_selectOn"] = {
			ImageRectOffset = Vector2.new(218, 436);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/archived/ARCHIVED_robux"] = {
			ImageRectOffset = Vector2.new(218, 545);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/arrow_right"] = {
			ImageRectOffset = Vector2.new(970, 721);
			ImageRectSize = Vector2.new(48, 48);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/icons/avatar_profile"] = {
			ImageRectOffset = Vector2.new(218, 654);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/challenge_games"] = {
			ImageRectOffset = Vector2.new(218, 763);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/chat"] = {
			ImageRectOffset = Vector2.new(218, 872);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/common/robux"] = {
			ImageRectOffset = Vector2.new(327, 218);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/common/robux_color"] = {
			ImageRectOffset = Vector2.new(436, 218);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/common/robux_color_small"] = {
			ImageRectOffset = Vector2.new(970, 672);
			ImageRectSize = Vector2.new(48, 48);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/icons/common/robux_small"] = {
			ImageRectOffset = Vector2.new(970, 612);
			ImageRectSize = Vector2.new(48, 48);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/icons/common_clear_small"] = {
			ImageRectOffset = Vector2.new(973, 500);
			ImageRectSize = Vector2.new(48, 48);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/icons/common_refresh"] = {
			ImageRectOffset = Vector2.new(545, 218);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/dropdown_arrowDown"] = {
			ImageRectOffset = Vector2.new(800, 618);
			ImageRectSize = Vector2.new(84, 84);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/gender_female"] = {
			ImageRectOffset = Vector2.new(654, 218);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/gender_female_selected"] = {
			ImageRectOffset = Vector2.new(763, 218);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/gender_male"] = {
			ImageRectOffset = Vector2.new(872, 218);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/gender_male_selected"] = {
			ImageRectOffset = Vector2.new(327, 327);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/ic-ROBUX"] = {
			ImageRectOffset = Vector2.new(85, 298);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_3x_3";
		};
		["LuaApp/icons/ic-add"] = {
			ImageRectOffset = Vector2.new(642, 436);
			ImageRectSize = Vector2.new(96, 96);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/ic-add-down"] = {
			ImageRectOffset = Vector2.new(545, 436);
			ImageRectSize = Vector2.new(96, 96);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/ic-arrow-down"] = {
			ImageRectOffset = Vector2.new(756, 411);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/icons/ic-arrow-right"] = {
			ImageRectOffset = Vector2.new(85, 932);
			ImageRectSize = Vector2.new(54, 54);
			ImageSet = "LuaApp/img_set_3x_3";
		};
		["LuaApp/icons/ic-back"] = {
			ImageRectOffset = Vector2.new(85, 225);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_3x_3";
		};
		["LuaApp/icons/ic-bc"] = {
			ImageRectOffset = Vector2.new(244, 886);
			ImageRectSize = Vector2.new(144, 72);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/icons/ic-bc-small"] = {
			ImageRectOffset = Vector2.new(85, 152);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_3x_3";
		};
		["LuaApp/icons/ic-blue-arrow"] = {
			ImageRectOffset = Vector2.new(888, 79);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_3x_3";
		};
		["LuaApp/icons/ic-blue-dot"] = {
			ImageRectOffset = Vector2.new(981, 43);
			ImageRectSize = Vector2.new(42, 42);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/ic-blue-online"] = {
			ImageRectOffset = Vector2.new(815, 79);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_3x_3";
		};
		["LuaApp/icons/ic-chat20x20"] = {
			ImageRectOffset = Vector2.new(305, 959);
			ImageRectSize = Vector2.new(60, 60);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/icons/ic-clear"] = {
			ImageRectOffset = Vector2.new(973, 451);
			ImageRectSize = Vector2.new(48, 48);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/icons/ic-games"] = {
			ImageRectOffset = Vector2.new(742, 79);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_3x_3";
		};
		["LuaApp/icons/ic-gray-arrow"] = {
			ImageRectOffset = Vector2.new(669, 79);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_3x_3";
		};
		["LuaApp/icons/ic-green-dot"] = {
			ImageRectOffset = Vector2.new(92, 976);
			ImageRectSize = Vector2.new(42, 42);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/icons/ic-green-ingame"] = {
			ImageRectOffset = Vector2.new(596, 79);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_3x_3";
		};
		["LuaApp/icons/ic-more"] = {
			ImageRectOffset = Vector2.new(523, 79);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_3x_3";
		};
		["LuaApp/icons/ic-more-about"] = {
			ImageRectOffset = Vector2.new(401, 0);
			ImageRectSize = Vector2.new(78, 78);
			ImageSet = "LuaApp/img_set_3x_3";
		};
		["LuaApp/icons/ic-more-blog"] = {
			ImageRectOffset = Vector2.new(322, 0);
			ImageRectSize = Vector2.new(78, 78);
			ImageSet = "LuaApp/img_set_3x_3";
		};
		["LuaApp/icons/ic-more-builders-club"] = {
			ImageRectOffset = Vector2.new(243, 0);
			ImageRectSize = Vector2.new(78, 78);
			ImageSet = "LuaApp/img_set_3x_3";
		};
		["LuaApp/icons/ic-more-catalog"] = {
			ImageRectOffset = Vector2.new(164, 0);
			ImageRectSize = Vector2.new(78, 78);
			ImageSet = "LuaApp/img_set_3x_3";
		};
		["LuaApp/icons/ic-more-create"] = {
			ImageRectOffset = Vector2.new(85, 0);
			ImageRectSize = Vector2.new(78, 78);
			ImageSet = "LuaApp/img_set_3x_3";
		};
		["LuaApp/icons/ic-more-events"] = {
			ImageRectOffset = Vector2.new(0, 881);
			ImageRectSize = Vector2.new(78, 78);
			ImageSet = "LuaApp/img_set_3x_3";
		};
		["LuaApp/icons/ic-more-friends"] = {
			ImageRectOffset = Vector2.new(0, 802);
			ImageRectSize = Vector2.new(78, 78);
			ImageSet = "LuaApp/img_set_3x_3";
		};
		["LuaApp/icons/ic-more-groups"] = {
			ImageRectOffset = Vector2.new(0, 723);
			ImageRectSize = Vector2.new(78, 78);
			ImageSet = "LuaApp/img_set_3x_3";
		};
		["LuaApp/icons/ic-more-help"] = {
			ImageRectOffset = Vector2.new(0, 644);
			ImageRectSize = Vector2.new(78, 78);
			ImageSet = "LuaApp/img_set_3x_3";
		};
		["LuaApp/icons/ic-more-inventory"] = {
			ImageRectOffset = Vector2.new(0, 565);
			ImageRectSize = Vector2.new(78, 78);
			ImageSet = "LuaApp/img_set_3x_3";
		};
		["LuaApp/icons/ic-more-message"] = {
			ImageRectOffset = Vector2.new(0, 486);
			ImageRectSize = Vector2.new(78, 78);
			ImageSet = "LuaApp/img_set_3x_3";
		};
		["LuaApp/icons/ic-more-my-feed"] = {
			ImageRectOffset = Vector2.new(0, 407);
			ImageRectSize = Vector2.new(78, 78);
			ImageSet = "LuaApp/img_set_3x_3";
		};
		["LuaApp/icons/ic-more-premium"] = {
			ImageRectOffset = Vector2.new(0, 328);
			ImageRectSize = Vector2.new(78, 78);
			ImageSet = "LuaApp/img_set_3x_3";
		};
		["LuaApp/icons/ic-more-profile"] = {
			ImageRectOffset = Vector2.new(0, 249);
			ImageRectSize = Vector2.new(78, 78);
			ImageSet = "LuaApp/img_set_3x_3";
		};
		["LuaApp/icons/ic-more-settings"] = {
			ImageRectOffset = Vector2.new(0, 170);
			ImageRectSize = Vector2.new(78, 78);
			ImageSet = "LuaApp/img_set_3x_3";
		};
		["LuaApp/icons/ic-notification"] = {
			ImageRectOffset = Vector2.new(450, 79);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_3x_3";
		};
		["LuaApp/icons/ic-obc"] = {
			ImageRectOffset = Vector2.new(3, 903);
			ImageRectSize = Vector2.new(144, 72);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/icons/ic-obc-small"] = {
			ImageRectOffset = Vector2.new(377, 79);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_3x_3";
		};
		["LuaApp/icons/ic-orange-dot"] = {
			ImageRectOffset = Vector2.new(49, 976);
			ImageRectSize = Vector2.new(42, 42);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/icons/ic-orange-instudio"] = {
			ImageRectOffset = Vector2.new(304, 79);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_3x_3";
		};
		["LuaApp/icons/ic-profile"] = {
			ImageRectOffset = Vector2.new(885, 618);
			ImageRectSize = Vector2.new(84, 84);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/ic-roblox-close"] = {
			ImageRectOffset = Vector2.new(327, 436);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/ic-search"] = {
			ImageRectOffset = Vector2.new(231, 79);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_3x_3";
		};
		["LuaApp/icons/ic-search-gray"] = {
			ImageRectOffset = Vector2.new(635, 241);
			ImageRectSize = Vector2.new(57, 57);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/icons/ic-search-new"] = {
			ImageRectOffset = Vector2.new(327, 545);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/ic-tbc"] = {
			ImageRectOffset = Vector2.new(454, 374);
			ImageRectSize = Vector2.new(144, 72);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/icons/ic-tbc-small"] = {
			ImageRectOffset = Vector2.new(158, 79);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_3x_3";
		};
		["LuaApp/icons/ic-view-details20x20"] = {
			ImageRectOffset = Vector2.new(244, 959);
			ImageRectSize = Vector2.new(60, 60);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/icons/icon_retry_white"] = {
			ImageRectOffset = Vector2.new(85, 79);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_3x_3";
		};
		["LuaApp/icons/logout"] = {
			ImageRectOffset = Vector2.new(327, 654);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/menu/avatar_off"] = {
			ImageRectOffset = Vector2.new(327, 763);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/menu/avatar_on"] = {
			ImageRectOffset = Vector2.new(327, 872);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/menu/chat_off"] = {
			ImageRectOffset = Vector2.new(436, 327);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/menu/chat_on"] = {
			ImageRectOffset = Vector2.new(545, 327);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/menu/games_off"] = {
			ImageRectOffset = Vector2.new(654, 327);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/menu/games_on"] = {
			ImageRectOffset = Vector2.new(763, 327);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/menu/home_off"] = {
			ImageRectOffset = Vector2.new(872, 327);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/menu/home_on"] = {
			ImageRectOffset = Vector2.new(436, 436);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/menu/menu_avatarOn"] = {
			ImageRectOffset = Vector2.new(436, 545);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/menu/menu_editavatar"] = {
			ImageRectOffset = Vector2.new(436, 654);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/menu/menu_messages"] = {
			ImageRectOffset = Vector2.new(436, 763);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/menu/menu_profile"] = {
			ImageRectOffset = Vector2.new(861, 890);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/icons/menu/menu_shop"] = {
			ImageRectOffset = Vector2.new(861, 781);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/icons/menu/menu_trade"] = {
			ImageRectOffset = Vector2.new(752, 890);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/icons/menu/more_off"] = {
			ImageRectOffset = Vector2.new(752, 781);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/icons/menu/more_on"] = {
			ImageRectOffset = Vector2.new(861, 672);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/icons/minimize"] = {
			ImageRectOffset = Vector2.new(752, 672);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/icons/more_about"] = {
			ImageRectOffset = Vector2.new(630, 703);
			ImageRectSize = Vector2.new(84, 84);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/more_blog"] = {
			ImageRectOffset = Vector2.new(630, 788);
			ImageRectSize = Vector2.new(84, 84);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/more_buildersclub"] = {
			ImageRectOffset = Vector2.new(630, 873);
			ImageRectSize = Vector2.new(84, 84);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/more_catalog"] = {
			ImageRectOffset = Vector2.new(715, 703);
			ImageRectSize = Vector2.new(84, 84);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/more_creategames"] = {
			ImageRectOffset = Vector2.new(800, 703);
			ImageRectSize = Vector2.new(84, 84);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/more_events"] = {
			ImageRectOffset = Vector2.new(885, 703);
			ImageRectSize = Vector2.new(84, 84);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/more_friends"] = {
			ImageRectOffset = Vector2.new(715, 788);
			ImageRectSize = Vector2.new(84, 84);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/more_groups"] = {
			ImageRectOffset = Vector2.new(715, 873);
			ImageRectSize = Vector2.new(84, 84);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/more_help"] = {
			ImageRectOffset = Vector2.new(800, 788);
			ImageRectSize = Vector2.new(84, 84);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/more_inventory"] = {
			ImageRectOffset = Vector2.new(885, 788);
			ImageRectSize = Vector2.new(84, 84);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/more_messages"] = {
			ImageRectOffset = Vector2.new(800, 873);
			ImageRectSize = Vector2.new(84, 84);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/more_myfeed"] = {
			ImageRectOffset = Vector2.new(885, 873);
			ImageRectSize = Vector2.new(84, 84);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/more_premium"] = {
			ImageRectOffset = Vector2.new(0, 85);
			ImageRectSize = Vector2.new(84, 84);
			ImageSet = "LuaApp/img_set_3x_3";
		};
		["LuaApp/icons/more_profile"] = {
			ImageRectOffset = Vector2.new(0, 0);
			ImageRectSize = Vector2.new(84, 84);
			ImageSet = "LuaApp/img_set_3x_3";
		};
		["LuaApp/icons/more_settings"] = {
			ImageRectOffset = Vector2.new(148, 903);
			ImageRectSize = Vector2.new(84, 84);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/icons/navbar_avatar"] = {
			ImageRectOffset = Vector2.new(643, 890);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/icons/navbar_chat"] = {
			ImageRectOffset = Vector2.new(436, 763);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/navbar_games"] = {
			ImageRectOffset = Vector2.new(643, 781);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/icons/navbar_home"] = {
			ImageRectOffset = Vector2.new(643, 672);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/icons/navbar_more"] = {
			ImageRectOffset = Vector2.new(861, 563);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/icons/navigation/close"] = {
			ImageRectOffset = Vector2.new(752, 563);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/icons/navigation/pushBack"] = {
			ImageRectOffset = Vector2.new(643, 563);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/icons/navigation/pushRight"] = {
			ImageRectOffset = Vector2.new(534, 890);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/icons/navigation/pushRight_small"] = {
			ImageRectOffset = Vector2.new(975, 394);
			ImageRectSize = Vector2.new(48, 48);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/icons/navigation/swipe"] = {
			ImageRectOffset = Vector2.new(534, 781);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/icons/navigation/swipeDown"] = {
			ImageRectOffset = Vector2.new(534, 672);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/icons/navigation_pushRight"] = {
			ImageRectOffset = Vector2.new(534, 563);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/icons/progress_small"] = {
			ImageRectOffset = Vector2.new(970, 563);
			ImageRectSize = Vector2.new(51, 48);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/icons/robux"] = {
			ImageRectOffset = Vector2.new(936, 85);
			ImageRectSize = Vector2.new(84, 84);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/icons/robux-hex"] = {
			ImageRectOffset = Vector2.new(739, 436);
			ImageRectSize = Vector2.new(96, 96);
			ImageSet = "LuaApp/img_set_3x_2";
		};
		["LuaApp/icons/robux_white"] = {
			ImageRectOffset = Vector2.new(936, 0);
			ImageRectSize = Vector2.new(84, 84);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/icons/status_BC"] = {
			ImageRectOffset = Vector2.new(948, 0);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_3x_3";
		};
		["LuaApp/icons/status_OBC"] = {
			ImageRectOffset = Vector2.new(875, 0);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_3x_3";
		};
		["LuaApp/icons/status_TBC"] = {
			ImageRectOffset = Vector2.new(599, 374);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/icons/status_item_limited"] = {
			ImageRectOffset = Vector2.new(975, 345);
			ImageRectSize = Vector2.new(48, 48);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/icons/status_premium"] = {
			ImageRectOffset = Vector2.new(864, 451);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["LuaApp/icons/status_progress"] = {
			ImageRectOffset = Vector2.new(755, 451);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "LuaApp/img_set_3x_1";
		};
		["InGameMenu/9Slice/DropShadow"] = {
			ImageRectOffset = Vector2.new(0, 0);
			ImageRectSize = Vector2.new(156, 156);
			ImageSet = "InGameMenu/img_set_3x_1";
		};
		["InGameMenu/9Slice/DropdownOutline"] = {
			ImageRectOffset = Vector2.new(0, 290);
			ImageRectSize = Vector2.new(132, 132);
			ImageSet = "InGameMenu/img_set_3x_1";
		};
		["InGameMenu/9Slice/ToggleFill"] = {
			ImageRectOffset = Vector2.new(484, 109);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "InGameMenu/img_set_3x_1";
		};
		["InGameMenu/9Slice/ToggleOutline"] = {
			ImageRectOffset = Vector2.new(375, 109);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "InGameMenu/img_set_3x_1";
		};
		["InGameMenu/9Slice/sliderCircle"] = {
			ImageRectOffset = Vector2.new(920, 0);
			ImageRectSize = Vector2.new(51, 51);
			ImageSet = "InGameMenu/img_set_3x_1";
		};
		["InGameMenu/Graphic/ClickLeft"] = {
			ImageRectOffset = Vector2.new(266, 109);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "InGameMenu/img_set_3x_1";
		};
		["InGameMenu/Graphic/ClickRight"] = {
			ImageRectOffset = Vector2.new(157, 109);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "InGameMenu/img_set_3x_1";
		};
		["InGameMenu/Graphic/SliderButton"] = {
			ImageRectOffset = Vector2.new(0, 423);
			ImageRectSize = Vector2.new(126, 126);
			ImageSet = "InGameMenu/img_set_3x_1";
		};
		["InGameMenu/Graphic/WheelScroll"] = {
			ImageRectOffset = Vector2.new(811, 0);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "InGameMenu/img_set_3x_1";
		};
		["InGameMenu/Graphic/sliderHover"] = {
			ImageRectOffset = Vector2.new(0, 157);
			ImageRectSize = Vector2.new(132, 132);
			ImageSet = "InGameMenu/img_set_3x_1";
		};
		["InGameMenu/Icons/ArrowDown"] = {
			ImageRectOffset = Vector2.new(593, 158);
			ImageRectSize = Vector2.new(48, 48);
			ImageSet = "InGameMenu/img_set_3x_1";
		};
		["InGameMenu/Icons/ArrowLeft"] = {
			ImageRectOffset = Vector2.new(593, 109);
			ImageRectSize = Vector2.new(48, 48);
			ImageSet = "InGameMenu/img_set_3x_1";
		};
		["InGameMenu/Icons/ArrowRight"] = {
			ImageRectOffset = Vector2.new(972, 0);
			ImageRectSize = Vector2.new(48, 51);
			ImageSet = "InGameMenu/img_set_3x_1";
		};
		["InGameMenu/Icons/ArrowUp"] = {
			ImageRectOffset = Vector2.new(969, 52);
			ImageRectSize = Vector2.new(48, 48);
			ImageSet = "InGameMenu/img_set_3x_1";
		};
		["InGameMenu/Icons/CancelFriendRequest"] = {
			ImageRectOffset = Vector2.new(702, 0);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "InGameMenu/img_set_3x_1";
		};
		["InGameMenu/Icons/Clear"] = {
			ImageRectOffset = Vector2.new(920, 52);
			ImageRectSize = Vector2.new(48, 48);
			ImageSet = "InGameMenu/img_set_3x_1";
		};
		["InGameMenu/Icons/ExpandArrow"] = {
			ImageRectOffset = Vector2.new(593, 0);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "InGameMenu/img_set_3x_1";
		};
		["InGameMenu/Icons/Friends"] = {
			ImageRectOffset = Vector2.new(484, 0);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "InGameMenu/img_set_3x_1";
		};
		["InGameMenu/Icons/GameSettings"] = {
			ImageRectOffset = Vector2.new(375, 0);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "InGameMenu/img_set_3x_1";
		};
		["InGameMenu/Icons/KeyBorder"] = {
			ImageRectOffset = Vector2.new(266, 0);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "InGameMenu/img_set_3x_1";
		};
		["InGameMenu/Icons/MenuControls"] = {
			ImageRectOffset = Vector2.new(157, 0);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "InGameMenu/img_set_3x_1";
		};
		["InGameMenu/Icons/MenuFriends"] = {
			ImageRectOffset = Vector2.new(484, 0);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "InGameMenu/img_set_3x_1";
		};
		["InGameMenu/Icons/MenuPlayers"] = {
			ImageRectOffset = Vector2.new(0, 877);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "InGameMenu/img_set_3x_1";
		};
		["InGameMenu/Icons/RespawnIcon"] = {
			ImageRectOffset = Vector2.new(0, 768);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "InGameMenu/img_set_3x_1";
		};
		["InGameMenu/Icons/SelectedCheck"] = {
			ImageRectOffset = Vector2.new(109, 550);
			ImageRectSize = Vector2.new(45, 36);
			ImageSet = "InGameMenu/img_set_3x_1";
		};
		["InGameMenu/Icons/UnFriend"] = {
			ImageRectOffset = Vector2.new(0, 659);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "InGameMenu/img_set_3x_1";
		};
		["InGameMenu/Icons/ViewAvatar"] = {
			ImageRectOffset = Vector2.new(0, 550);
			ImageRectSize = Vector2.new(108, 108);
			ImageSet = "InGameMenu/img_set_3x_1";
		};
	}
end
local var554_upvw
function make_assets_2x() -- Line 568
	--[[ Upvalues[1]:
		[1]: var554_upvw (read and write)
	]]
	var554_upvw = {
		["LuaApp/9-slice/gr-badge"] = {
			ImageRectOffset = Vector2.new(470, 227);
			ImageRectSize = Vector2.new(30, 30);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/9-slice/gr-btn-blue-3px"] = {
			ImageRectOffset = Vector2.new(284, 394);
			ImageRectSize = Vector2.new(14, 14);
			ImageSet = "LuaApp/img_set_2x_1";
		};
		["LuaApp/9-slice/gr-btn-blue-3px-pressed"] = {
			ImageRectOffset = Vector2.new(284, 409);
			ImageRectSize = Vector2.new(14, 14);
			ImageSet = "LuaApp/img_set_2x_1";
		};
		["LuaApp/9-slice/gr-btn-white-3px"] = {
			ImageRectOffset = Vector2.new(284, 364);
			ImageRectSize = Vector2.new(14, 14);
			ImageSet = "LuaApp/img_set_2x_1";
		};
		["LuaApp/9-slice/gr-btn-white-3px-pressed"] = {
			ImageRectOffset = Vector2.new(284, 379);
			ImageRectSize = Vector2.new(14, 14);
			ImageSet = "LuaApp/img_set_2x_1";
		};
		["LuaApp/9-slice/gr-capsule-circle"] = {
			ImageRectOffset = Vector2.new(349, 89);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/9-slice/gr-loading-indicator"] = {
			ImageRectOffset = Vector2.new(284, 424);
			ImageRectSize = Vector2.new(8, 8);
			ImageSet = "LuaApp/img_set_2x_1";
		};
		["LuaApp/9-slice/gr-search"] = {
			ImageRectOffset = Vector2.new(138, 0);
			ImageRectSize = Vector2.new(56, 56);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/9-slice/gr-shadow"] = {
			ImageRectOffset = Vector2.new(465, 0);
			ImageRectSize = Vector2.new(46, 46);
			ImageSet = "LuaApp/img_set_2x_1";
		};
		["LuaApp/9-slice/gr-shadow-strong"] = {
			ImageRectOffset = Vector2.new(0, 89);
			ImageRectSize = Vector2.new(104, 104);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/9-slice/input-default"] = {
			ImageRectOffset = Vector2.new(284, 349);
			ImageRectSize = Vector2.new(14, 14);
			ImageSet = "LuaApp/img_set_2x_1";
		};
		["LuaApp/9-slice/notification_badge"] = {
			ImageRectOffset = Vector2.new(463, 0);
			ImageRectSize = Vector2.new(48, 48);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/9-slice/slot_bg"] = {
			ImageRectOffset = Vector2.new(472, 122);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/9-slice/slot_stroke"] = {
			ImageRectOffset = Vector2.new(0, 344);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_2x_5";
		};
		["LuaApp/9-slice/white_button_9slices"] = {
			ImageRectOffset = Vector2.new(0, 416);
			ImageRectSize = Vector2.new(34, 34);
			ImageSet = "LuaApp/img_set_2x_5";
		};
		["LuaApp/buttons/buttonFill"] = {
			ImageRectOffset = Vector2.new(0, 381);
			ImageRectSize = Vector2.new(34, 34);
			ImageSet = "LuaApp/img_set_2x_5";
		};
		["LuaApp/buttons/buttonLeftFill"] = {
			ImageRectOffset = Vector2.new(480, 0);
			ImageRectSize = Vector2.new(18, 34);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/buttons/buttonPill"] = {
			ImageRectOffset = Vector2.new(0, 0);
			ImageRectSize = Vector2.new(120, 88);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/buttons/buttonRightFill"] = {
			ImageRectOffset = Vector2.new(493, 289);
			ImageRectSize = Vector2.new(18, 34);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/buttons/buttonStroke"] = {
			ImageRectOffset = Vector2.new(0, 416);
			ImageRectSize = Vector2.new(34, 34);
			ImageSet = "LuaApp/img_set_2x_5";
		};
		["LuaApp/buttons/line"] = {
			ImageRectOffset = Vector2.new(388, 75);
			ImageRectSize = Vector2.new(72, 8);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/category/filter_continueplaying"] = {
			ImageRectOffset = Vector2.new(195, 0);
			ImageRectSize = Vector2.new(56, 56);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/category/filter_default"] = {
			ImageRectOffset = Vector2.new(252, 0);
			ImageRectSize = Vector2.new(56, 56);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/category/filter_featured"] = {
			ImageRectOffset = Vector2.new(309, 0);
			ImageRectSize = Vector2.new(56, 56);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/category/filter_friendsplaying"] = {
			ImageRectOffset = Vector2.new(366, 0);
			ImageRectSize = Vector2.new(56, 56);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/category/filter_myfavorites"] = {
			ImageRectOffset = Vector2.new(423, 0);
			ImageRectSize = Vector2.new(56, 56);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/category/filter_popular"] = {
			ImageRectOffset = Vector2.new(73, 65);
			ImageRectSize = Vector2.new(56, 56);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/category/filter_popularnearyou"] = {
			ImageRectOffset = Vector2.new(130, 65);
			ImageRectSize = Vector2.new(56, 56);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/category/filter_recommended"] = {
			ImageRectOffset = Vector2.new(187, 65);
			ImageRectSize = Vector2.new(56, 56);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/category/filter_topearning"] = {
			ImageRectOffset = Vector2.new(244, 65);
			ImageRectSize = Vector2.new(56, 56);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/category/filter_toprated"] = {
			ImageRectOffset = Vector2.new(301, 65);
			ImageRectSize = Vector2.new(56, 56);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/category/ic-bc"] = {
			ImageRectOffset = Vector2.new(470, 186);
			ImageRectSize = Vector2.new(40, 40);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/category/ic-cancel"] = {
			ImageRectOffset = Vector2.new(470, 259);
			ImageRectSize = Vector2.new(40, 40);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/category/ic-default"] = {
			ImageRectOffset = Vector2.new(470, 332);
			ImageRectSize = Vector2.new(40, 40);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/category/ic-featured"] = {
			ImageRectOffset = Vector2.new(470, 405);
			ImageRectSize = Vector2.new(40, 40);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/category/ic-friend activity"] = {
			ImageRectOffset = Vector2.new(470, 446);
			ImageRectSize = Vector2.new(40, 40);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/category/ic-my favorite"] = {
			ImageRectOffset = Vector2.new(0, 303);
			ImageRectSize = Vector2.new(40, 40);
			ImageSet = "LuaApp/img_set_2x_5";
		};
		["LuaApp/category/ic-my recent"] = {
			ImageRectOffset = Vector2.new(0, 262);
			ImageRectSize = Vector2.new(40, 40);
			ImageSet = "LuaApp/img_set_2x_5";
		};
		["LuaApp/category/ic-popular in VR"] = {
			ImageRectOffset = Vector2.new(0, 221);
			ImageRectSize = Vector2.new(40, 40);
			ImageSet = "LuaApp/img_set_2x_5";
		};
		["LuaApp/category/ic-popular in country"] = {
			ImageRectOffset = Vector2.new(0, 180);
			ImageRectSize = Vector2.new(40, 40);
			ImageSet = "LuaApp/img_set_2x_5";
		};
		["LuaApp/category/ic-popular"] = {
			ImageRectOffset = Vector2.new(0, 139);
			ImageRectSize = Vector2.new(40, 40);
			ImageSet = "LuaApp/img_set_2x_5";
		};
		["LuaApp/category/ic-purchased"] = {
			ImageRectOffset = Vector2.new(0, 98);
			ImageRectSize = Vector2.new(40, 40);
			ImageSet = "LuaApp/img_set_2x_5";
		};
		["LuaApp/category/ic-recommended"] = {
			ImageRectOffset = Vector2.new(401, 463);
			ImageRectSize = Vector2.new(40, 40);
			ImageSet = "LuaApp/img_set_2x_1";
		};
		["LuaApp/category/ic-top earning"] = {
			ImageRectOffset = Vector2.new(465, 243);
			ImageRectSize = Vector2.new(40, 40);
			ImageSet = "LuaApp/img_set_2x_1";
		};
		["LuaApp/category/ic-top favorite"] = {
			ImageRectOffset = Vector2.new(465, 202);
			ImageRectSize = Vector2.new(40, 40);
			ImageSet = "LuaApp/img_set_2x_1";
		};
		["LuaApp/category/ic-top paid"] = {
			ImageRectOffset = Vector2.new(465, 161);
			ImageRectSize = Vector2.new(40, 40);
			ImageSet = "LuaApp/img_set_2x_1";
		};
		["LuaApp/category/ic-top rated"] = {
			ImageRectOffset = Vector2.new(465, 88);
			ImageRectSize = Vector2.new(40, 40);
			ImageSet = "LuaApp/img_set_2x_1";
		};
		["LuaApp/dropdown/gr-contextual menu"] = {
			ImageRectOffset = Vector2.new(50, 485);
			ImageRectSize = Vector2.new(22, 22);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/dropdown/gr-tip-down"] = {
			ImageRectOffset = Vector2.new(465, 146);
			ImageRectSize = Vector2.new(24, 12);
			ImageSet = "LuaApp/img_set_2x_1";
		};
		["LuaApp/dropdown/gr-tip-left"] = {
			ImageRectOffset = Vector2.new(146, 487);
			ImageRectSize = Vector2.new(12, 24);
			ImageSet = "LuaApp/img_set_2x_1";
		};
		["LuaApp/dropdown/gr-tip-right"] = {
			ImageRectOffset = Vector2.new(146, 462);
			ImageRectSize = Vector2.new(12, 24);
			ImageSet = "LuaApp/img_set_2x_1";
		};
		["LuaApp/dropdown/gr-tip-up"] = {
			ImageRectOffset = Vector2.new(258, 499);
			ImageRectSize = Vector2.new(24, 12);
			ImageSet = "LuaApp/img_set_2x_1";
		};
		["LuaApp/graphic/actions_friends_addfriend"] = {
			ImageRectOffset = Vector2.new(422, 89);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/graphic/addfriendborder"] = {
			ImageRectOffset = Vector2.new(304, 161);
			ImageRectSize = Vector2.new(160, 160);
			ImageSet = "LuaApp/img_set_2x_1";
		};
		["LuaApp/graphic/addfriendfill"] = {
			ImageRectOffset = Vector2.new(304, 0);
			ImageRectSize = Vector2.new(160, 160);
			ImageSet = "LuaApp/img_set_2x_1";
		};
		["LuaApp/graphic/checkbox_checked"] = {
			ImageRectOffset = Vector2.new(244, 179);
			ImageRectSize = Vector2.new(52, 52);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/graphic/checkbox_checked_disabled"] = {
			ImageRectOffset = Vector2.new(297, 179);
			ImageRectSize = Vector2.new(52, 52);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/graphic/checkbox_unchecked"] = {
			ImageRectOffset = Vector2.new(350, 179);
			ImageRectSize = Vector2.new(52, 52);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/graphic/checkbox_unchecked_disabled"] = {
			ImageRectOffset = Vector2.new(403, 179);
			ImageRectSize = Vector2.new(52, 52);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/graphic/checkbox_unchecked_hover"] = {
			ImageRectOffset = Vector2.new(456, 179);
			ImageRectSize = Vector2.new(52, 52);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/graphic/common_add"] = {
			ImageRectOffset = Vector2.new(105, 186);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/graphic/friendpresence"] = {
			ImageRectOffset = Vector2.new(0, 485);
			ImageRectSize = Vector2.new(24, 24);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/graphic/gr-add"] = {
			ImageRectOffset = Vector2.new(0, 194);
			ImageRectSize = Vector2.new(96, 96);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/graphic/gr-card"] = {
			ImageRectOffset = Vector2.new(284, 334);
			ImageRectSize = Vector2.new(14, 14);
			ImageSet = "LuaApp/img_set_2x_1";
		};
		["LuaApp/graphic/gr-counter-slot-32x32"] = {
			ImageRectOffset = Vector2.new(0, 438);
			ImageRectSize = Vector2.new(64, 64);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/graphic/gr-indicator-ingame"] = {
			ImageRectOffset = Vector2.new(470, 300);
			ImageRectSize = Vector2.new(28, 28);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/graphic/gr-indicator-instudio"] = {
			ImageRectOffset = Vector2.new(470, 373);
			ImageRectSize = Vector2.new(28, 28);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/graphic/gr-indicator-online"] = {
			ImageRectOffset = Vector2.new(480, 35);
			ImageRectSize = Vector2.new(28, 28);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/graphic/gr-notification badge"] = {
			ImageRectOffset = Vector2.new(463, 49);
			ImageRectSize = Vector2.new(38, 38);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/graphic/gr-play-circle"] = {
			ImageRectOffset = Vector2.new(304, 322);
			ImageRectSize = Vector2.new(140, 140);
			ImageSet = "LuaApp/img_set_2x_1";
		};
		["LuaApp/graphic/ic_alert"] = {
			ImageRectOffset = Vector2.new(105, 259);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/graphic/ic_logo"] = {
			ImageRectOffset = Vector2.new(202, 89);
			ImageRectSize = Vector2.new(72, 74);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/graphic/itemCard-Background"] = {
			ImageRectOffset = Vector2.new(301, 0);
			ImageRectSize = Vector2.new(2, 256);
			ImageSet = "LuaApp/img_set_2x_1";
		};
		["LuaApp/graphic/ph-avatar-portrait"] = {
			ImageRectOffset = Vector2.new(0, 0);
			ImageRectSize = Vector2.new(300, 300);
			ImageSet = "LuaApp/img_set_2x_1";
		};
		["LuaApp/graphic/profilemask"] = {
			ImageRectOffset = Vector2.new(0, 301);
			ImageRectSize = Vector2.new(160, 160);
			ImageSet = "LuaApp/img_set_2x_1";
		};
		["LuaApp/graphic/profilemask_36"] = {
			ImageRectOffset = Vector2.new(105, 332);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/graphic/slot_dot"] = {
			ImageRectOffset = Vector2.new(0, 291);
			ImageRectSize = Vector2.new(96, 96);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/graphic/tooltipbox"] = {
			ImageRectOffset = Vector2.new(0, 388);
			ImageRectSize = Vector2.new(96, 96);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/graphic/tooltipcaretLeft"] = {
			ImageRectOffset = Vector2.new(284, 301);
			ImageRectSize = Vector2.new(16, 32);
			ImageSet = "LuaApp/img_set_2x_1";
		};
		["LuaApp/graphic/triangle"] = {
			ImageRectOffset = Vector2.new(465, 129);
			ImageRectSize = Vector2.new(40, 16);
			ImageSet = "LuaApp/img_set_2x_1";
		};
		["LuaApp/graphic/verificationUpsellModal"] = {
			ImageRectOffset = Vector2.new(161, 301);
			ImageRectSize = Vector2.new(122, 156);
			ImageSet = "LuaApp/img_set_2x_1";
		};
		["LuaApp/icons/Catalog"] = {
			ImageRectOffset = Vector2.new(105, 405);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/icons/GameDetails/collapse"] = {
			ImageRectOffset = Vector2.new(178, 186);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/icons/GameDetails/favoriteOff"] = {
			ImageRectOffset = Vector2.new(178, 259);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/icons/GameDetails/favoriteOn"] = {
			ImageRectOffset = Vector2.new(178, 332);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/icons/GameDetails/feedback"] = {
			ImageRectOffset = Vector2.new(178, 405);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/icons/GameDetails/invite"] = {
			ImageRectOffset = Vector2.new(251, 186);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/icons/GameDetails/more"] = {
			ImageRectOffset = Vector2.new(388, 0);
			ImageRectSize = Vector2.new(74, 74);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/icons/GameDetails/navigation/close"] = {
			ImageRectOffset = Vector2.new(324, 186);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/icons/GameDetails/navigation/pushLeft"] = {
			ImageRectOffset = Vector2.new(397, 186);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/icons/GameDetails/navigation/pushRight_small"] = {
			ImageRectOffset = Vector2.new(140, 478);
			ImageRectSize = Vector2.new(32, 32);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/icons/GameDetails/notificationsOff"] = {
			ImageRectOffset = Vector2.new(251, 259);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/icons/GameDetails/notificationsOn"] = {
			ImageRectOffset = Vector2.new(251, 332);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/icons/GameDetails/play"] = {
			ImageRectOffset = Vector2.new(251, 405);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/icons/GameDetails/playing_large"] = {
			ImageRectOffset = Vector2.new(121, 0);
			ImageRectSize = Vector2.new(88, 88);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/icons/GameDetails/playing_small"] = {
			ImageRectOffset = Vector2.new(178, 478);
			ImageRectSize = Vector2.new(32, 32);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/icons/GameDetails/private"] = {
			ImageRectOffset = Vector2.new(324, 259);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/icons/GameDetails/rating_large"] = {
			ImageRectOffset = Vector2.new(210, 0);
			ImageRectSize = Vector2.new(88, 88);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/icons/GameDetails/rating_small"] = {
			ImageRectOffset = Vector2.new(211, 478);
			ImageRectSize = Vector2.new(32, 32);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/icons/GameDetails/sessions_large"] = {
			ImageRectOffset = Vector2.new(299, 0);
			ImageRectSize = Vector2.new(88, 88);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/icons/GameDetails/share"] = {
			ImageRectOffset = Vector2.new(397, 259);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/icons/GameDetails/social/Amazon_large"] = {
			ImageRectOffset = Vector2.new(324, 332);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/icons/GameDetails/social/Facebook_large"] = {
			ImageRectOffset = Vector2.new(324, 405);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/icons/GameDetails/social/RobloxGroup"] = {
			ImageRectOffset = Vector2.new(397, 332);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/icons/GameDetails/social/Twitch_large"] = {
			ImageRectOffset = Vector2.new(397, 405);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/icons/GameDetails/social/Twitter_large"] = {
			ImageRectOffset = Vector2.new(0, 0);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/GameDetails/social/Youtube_large"] = {
			ImageRectOffset = Vector2.new(0, 73);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/GameDetails/unavailable"] = {
			ImageRectOffset = Vector2.new(0, 146);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/GameDetails/voteDownOff"] = {
			ImageRectOffset = Vector2.new(0, 219);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/GameDetails/voteDownOn"] = {
			ImageRectOffset = Vector2.new(0, 292);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/GameDetails/voteUpOff"] = {
			ImageRectOffset = Vector2.new(0, 365);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/GameDetails/voteUpOn"] = {
			ImageRectOffset = Vector2.new(438, 438);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_3";
		};
		["LuaApp/icons/Luobu/close-circle"] = {
			ImageRectOffset = Vector2.new(105, 89);
			ImageRectSize = Vector2.new(96, 96);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/icons/Luobu/friend-request-accept"] = {
			ImageRectOffset = Vector2.new(358, 65);
			ImageRectSize = Vector2.new(56, 56);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/Luobu/friend-request-reject"] = {
			ImageRectOffset = Vector2.new(415, 65);
			ImageRectSize = Vector2.new(56, 56);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/actions_block"] = {
			ImageRectOffset = Vector2.new(0, 146);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/actions_edit"] = {
			ImageRectOffset = Vector2.new(438, 365);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_3";
		};
		["LuaApp/icons/actions_edit_add"] = {
			ImageRectOffset = Vector2.new(365, 438);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_3";
		};
		["LuaApp/icons/actions_edit_hide"] = {
			ImageRectOffset = Vector2.new(251, 478);
			ImageRectSize = Vector2.new(32, 32);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/icons/actions_edit_remove"] = {
			ImageRectOffset = Vector2.new(365, 365);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_3";
		};
		["LuaApp/icons/actions_favoriteOff"] = {
			ImageRectOffset = Vector2.new(438, 292);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_3";
		};
		["LuaApp/icons/actions_favoriteOn"] = {
			ImageRectOffset = Vector2.new(365, 292);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_3";
		};
		["LuaApp/icons/actions_privacy_show"] = {
			ImageRectOffset = Vector2.new(284, 478);
			ImageRectSize = Vector2.new(32, 32);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/icons/actions_selectOn"] = {
			ImageRectOffset = Vector2.new(292, 438);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_3";
		};
		["LuaApp/icons/archived/ARCHIVED_robux"] = {
			ImageRectOffset = Vector2.new(292, 365);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_3";
		};
		["LuaApp/icons/arrow_right"] = {
			ImageRectOffset = Vector2.new(324, 478);
			ImageRectSize = Vector2.new(32, 32);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/icons/avatar_profile"] = {
			ImageRectOffset = Vector2.new(292, 292);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_3";
		};
		["LuaApp/icons/challenge_games"] = {
			ImageRectOffset = Vector2.new(438, 219);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_3";
		};
		["LuaApp/icons/chat"] = {
			ImageRectOffset = Vector2.new(275, 89);
			ImageRectSize = Vector2.new(73, 73);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/icons/common/robux"] = {
			ImageRectOffset = Vector2.new(365, 219);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_3";
		};
		["LuaApp/icons/common/robux_color"] = {
			ImageRectOffset = Vector2.new(292, 219);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_3";
		};
		["LuaApp/icons/common/robux_color_small"] = {
			ImageRectOffset = Vector2.new(357, 478);
			ImageRectSize = Vector2.new(32, 32);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/icons/common/robux_small"] = {
			ImageRectOffset = Vector2.new(397, 478);
			ImageRectSize = Vector2.new(32, 32);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/icons/common_clear_small"] = {
			ImageRectOffset = Vector2.new(430, 478);
			ImageRectSize = Vector2.new(32, 32);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/icons/common_refresh"] = {
			ImageRectOffset = Vector2.new(219, 438);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_3";
		};
		["LuaApp/icons/dropdown_arrowDown"] = {
			ImageRectOffset = Vector2.new(73, 122);
			ImageRectSize = Vector2.new(56, 56);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/gender_female"] = {
			ImageRectOffset = Vector2.new(219, 365);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_3";
		};
		["LuaApp/icons/gender_female_selected"] = {
			ImageRectOffset = Vector2.new(219, 292);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_3";
		};
		["LuaApp/icons/gender_male"] = {
			ImageRectOffset = Vector2.new(219, 219);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_3";
		};
		["LuaApp/icons/gender_male_selected"] = {
			ImageRectOffset = Vector2.new(438, 146);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_3";
		};
		["LuaApp/icons/ic-ROBUX"] = {
			ImageRectOffset = Vector2.new(346, 289);
			ImageRectSize = Vector2.new(48, 48);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/ic-add"] = {
			ImageRectOffset = Vector2.new(445, 387);
			ImageRectSize = Vector2.new(64, 64);
			ImageSet = "LuaApp/img_set_2x_1";
		};
		["LuaApp/icons/ic-add-down"] = {
			ImageRectOffset = Vector2.new(73, 0);
			ImageRectSize = Vector2.new(64, 64);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/ic-arrow-down"] = {
			ImageRectOffset = Vector2.new(25, 485);
			ImageRectSize = Vector2.new(24, 24);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/icons/ic-arrow-right"] = {
			ImageRectOffset = Vector2.new(465, 284);
			ImageRectSize = Vector2.new(36, 36);
			ImageSet = "LuaApp/img_set_2x_1";
		};
		["LuaApp/icons/ic-back"] = {
			ImageRectOffset = Vector2.new(395, 289);
			ImageRectSize = Vector2.new(48, 48);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/ic-bc"] = {
			ImageRectOffset = Vector2.new(304, 463);
			ImageRectSize = Vector2.new(96, 48);
			ImageSet = "LuaApp/img_set_2x_1";
		};
		["LuaApp/icons/ic-bc-small"] = {
			ImageRectOffset = Vector2.new(444, 289);
			ImageRectSize = Vector2.new(48, 48);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/ic-blue-arrow"] = {
			ImageRectOffset = Vector2.new(293, 342);
			ImageRectSize = Vector2.new(48, 48);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/ic-blue-dot"] = {
			ImageRectOffset = Vector2.new(173, 0);
			ImageRectSize = Vector2.new(28, 28);
			ImageSet = "LuaApp/img_set_2x_5";
		};
		["LuaApp/icons/ic-blue-online"] = {
			ImageRectOffset = Vector2.new(293, 391);
			ImageRectSize = Vector2.new(48, 48);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/ic-chat20x20"] = {
			ImageRectOffset = Vector2.new(465, 47);
			ImageRectSize = Vector2.new(40, 40);
			ImageSet = "LuaApp/img_set_2x_1";
		};
		["LuaApp/icons/ic-clear"] = {
			ImageRectOffset = Vector2.new(82, 0);
			ImageRectSize = Vector2.new(32, 32);
			ImageSet = "LuaApp/img_set_2x_5";
		};
		["LuaApp/icons/ic-favorite"] = {
			ImageRectOffset = Vector2.new(130, 464);
			ImageRectSize = Vector2.new(48, 46);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/ic-favorite-filled"] = {
			ImageRectOffset = Vector2.new(73, 464);
			ImageRectSize = Vector2.new(48, 46);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/ic-games"] = {
			ImageRectOffset = Vector2.new(293, 440);
			ImageRectSize = Vector2.new(48, 48);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/ic-gray-arrow"] = {
			ImageRectOffset = Vector2.new(342, 342);
			ImageRectSize = Vector2.new(48, 48);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/ic-green-dot"] = {
			ImageRectOffset = Vector2.new(144, 0);
			ImageRectSize = Vector2.new(28, 28);
			ImageSet = "LuaApp/img_set_2x_5";
		};
		["LuaApp/icons/ic-green-ingame"] = {
			ImageRectOffset = Vector2.new(342, 391);
			ImageRectSize = Vector2.new(48, 48);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/ic-more"] = {
			ImageRectOffset = Vector2.new(342, 440);
			ImageRectSize = Vector2.new(48, 48);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/ic-more-about"] = {
			ImageRectOffset = Vector2.new(187, 236);
			ImageRectSize = Vector2.new(52, 52);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/ic-more-blog"] = {
			ImageRectOffset = Vector2.new(187, 289);
			ImageRectSize = Vector2.new(52, 52);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/ic-more-builders-club"] = {
			ImageRectOffset = Vector2.new(187, 342);
			ImageRectSize = Vector2.new(52, 52);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/ic-more-catalog"] = {
			ImageRectOffset = Vector2.new(187, 395);
			ImageRectSize = Vector2.new(52, 52);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/ic-more-create"] = {
			ImageRectOffset = Vector2.new(187, 448);
			ImageRectSize = Vector2.new(52, 52);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/ic-more-events"] = {
			ImageRectOffset = Vector2.new(240, 236);
			ImageRectSize = Vector2.new(52, 52);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/ic-more-friends"] = {
			ImageRectOffset = Vector2.new(293, 236);
			ImageRectSize = Vector2.new(52, 52);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/ic-more-groups"] = {
			ImageRectOffset = Vector2.new(346, 236);
			ImageRectSize = Vector2.new(52, 52);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/ic-more-help"] = {
			ImageRectOffset = Vector2.new(399, 236);
			ImageRectSize = Vector2.new(52, 52);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/ic-more-inventory"] = {
			ImageRectOffset = Vector2.new(452, 236);
			ImageRectSize = Vector2.new(52, 52);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/ic-more-message"] = {
			ImageRectOffset = Vector2.new(240, 289);
			ImageRectSize = Vector2.new(52, 52);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/ic-more-my-feed"] = {
			ImageRectOffset = Vector2.new(240, 342);
			ImageRectSize = Vector2.new(52, 52);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/ic-more-premium"] = {
			ImageRectOffset = Vector2.new(240, 395);
			ImageRectSize = Vector2.new(52, 52);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/ic-more-profile"] = {
			ImageRectOffset = Vector2.new(240, 448);
			ImageRectSize = Vector2.new(52, 52);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/ic-more-settings"] = {
			ImageRectOffset = Vector2.new(293, 289);
			ImageRectSize = Vector2.new(52, 52);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/ic-notification"] = {
			ImageRectOffset = Vector2.new(391, 342);
			ImageRectSize = Vector2.new(48, 48);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/ic-obc"] = {
			ImageRectOffset = Vector2.new(161, 458);
			ImageRectSize = Vector2.new(96, 48);
			ImageSet = "LuaApp/img_set_2x_1";
		};
		["LuaApp/icons/ic-obc-small"] = {
			ImageRectOffset = Vector2.new(440, 342);
			ImageRectSize = Vector2.new(48, 48);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/ic-orange-dot"] = {
			ImageRectOffset = Vector2.new(115, 0);
			ImageRectSize = Vector2.new(28, 28);
			ImageSet = "LuaApp/img_set_2x_5";
		};
		["LuaApp/icons/ic-orange-instudio"] = {
			ImageRectOffset = Vector2.new(391, 391);
			ImageRectSize = Vector2.new(48, 48);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/ic-profile"] = {
			ImageRectOffset = Vector2.new(73, 179);
			ImageRectSize = Vector2.new(56, 56);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/ic-roblox-close"] = {
			ImageRectOffset = Vector2.new(365, 146);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_3";
		};
		["LuaApp/icons/ic-search"] = {
			ImageRectOffset = Vector2.new(391, 440);
			ImageRectSize = Vector2.new(48, 48);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/ic-search-gray"] = {
			ImageRectOffset = Vector2.new(472, 65);
			ImageRectSize = Vector2.new(38, 38);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/ic-search-new"] = {
			ImageRectOffset = Vector2.new(292, 146);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_3";
		};
		["LuaApp/icons/ic-tbc"] = {
			ImageRectOffset = Vector2.new(0, 462);
			ImageRectSize = Vector2.new(96, 48);
			ImageSet = "LuaApp/img_set_2x_1";
		};
		["LuaApp/icons/ic-tbc-small"] = {
			ImageRectOffset = Vector2.new(440, 391);
			ImageRectSize = Vector2.new(48, 48);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/ic-view-details20x20"] = {
			ImageRectOffset = Vector2.new(258, 458);
			ImageRectSize = Vector2.new(40, 40);
			ImageSet = "LuaApp/img_set_2x_1";
		};
		["LuaApp/icons/icon_retry_white"] = {
			ImageRectOffset = Vector2.new(440, 440);
			ImageRectSize = Vector2.new(48, 48);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/logout"] = {
			ImageRectOffset = Vector2.new(219, 146);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_3";
		};
		["LuaApp/icons/menu/avatar_off"] = {
			ImageRectOffset = Vector2.new(146, 438);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_3";
		};
		["LuaApp/icons/menu/avatar_on"] = {
			ImageRectOffset = Vector2.new(146, 365);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_3";
		};
		["LuaApp/icons/menu/chat_off"] = {
			ImageRectOffset = Vector2.new(146, 292);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_3";
		};
		["LuaApp/icons/menu/chat_on"] = {
			ImageRectOffset = Vector2.new(146, 219);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_3";
		};
		["LuaApp/icons/menu/games_off"] = {
			ImageRectOffset = Vector2.new(146, 146);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_3";
		};
		["LuaApp/icons/menu/games_on"] = {
			ImageRectOffset = Vector2.new(438, 73);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_3";
		};
		["LuaApp/icons/menu/home_off"] = {
			ImageRectOffset = Vector2.new(365, 73);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_3";
		};
		["LuaApp/icons/menu/home_on"] = {
			ImageRectOffset = Vector2.new(292, 73);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_3";
		};
		["LuaApp/icons/menu/menu_avatarOn"] = {
			ImageRectOffset = Vector2.new(219, 73);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_3";
		};
		["LuaApp/icons/menu/menu_editavatar"] = {
			ImageRectOffset = Vector2.new(146, 73);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_3";
		};
		["LuaApp/icons/menu/menu_messages"] = {
			ImageRectOffset = Vector2.new(73, 438);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_3";
		};
		["LuaApp/icons/menu/menu_profile"] = {
			ImageRectOffset = Vector2.new(73, 365);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_3";
		};
		["LuaApp/icons/menu/menu_shop"] = {
			ImageRectOffset = Vector2.new(73, 292);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_3";
		};
		["LuaApp/icons/menu/menu_trade"] = {
			ImageRectOffset = Vector2.new(73, 219);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_3";
		};
		["LuaApp/icons/menu/more_off"] = {
			ImageRectOffset = Vector2.new(73, 146);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_3";
		};
		["LuaApp/icons/menu/more_on"] = {
			ImageRectOffset = Vector2.new(73, 73);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_3";
		};
		["LuaApp/icons/minimize"] = {
			ImageRectOffset = Vector2.new(438, 0);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_3";
		};
		["LuaApp/icons/more_about"] = {
			ImageRectOffset = Vector2.new(73, 236);
			ImageRectSize = Vector2.new(56, 56);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/more_blog"] = {
			ImageRectOffset = Vector2.new(73, 293);
			ImageRectSize = Vector2.new(56, 56);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/more_buildersclub"] = {
			ImageRectOffset = Vector2.new(73, 350);
			ImageRectSize = Vector2.new(56, 56);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/more_catalog"] = {
			ImageRectOffset = Vector2.new(73, 407);
			ImageRectSize = Vector2.new(56, 56);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/more_creategames"] = {
			ImageRectOffset = Vector2.new(130, 122);
			ImageRectSize = Vector2.new(56, 56);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/more_events"] = {
			ImageRectOffset = Vector2.new(187, 122);
			ImageRectSize = Vector2.new(56, 56);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/more_friends"] = {
			ImageRectOffset = Vector2.new(244, 122);
			ImageRectSize = Vector2.new(56, 56);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/more_groups"] = {
			ImageRectOffset = Vector2.new(301, 122);
			ImageRectSize = Vector2.new(56, 56);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/more_help"] = {
			ImageRectOffset = Vector2.new(358, 122);
			ImageRectSize = Vector2.new(56, 56);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/more_inventory"] = {
			ImageRectOffset = Vector2.new(415, 122);
			ImageRectSize = Vector2.new(56, 56);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/more_messages"] = {
			ImageRectOffset = Vector2.new(130, 179);
			ImageRectSize = Vector2.new(56, 56);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/more_myfeed"] = {
			ImageRectOffset = Vector2.new(130, 236);
			ImageRectSize = Vector2.new(56, 56);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/more_premium"] = {
			ImageRectOffset = Vector2.new(130, 293);
			ImageRectSize = Vector2.new(56, 56);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/more_profile"] = {
			ImageRectOffset = Vector2.new(130, 350);
			ImageRectSize = Vector2.new(56, 56);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/more_settings"] = {
			ImageRectOffset = Vector2.new(130, 407);
			ImageRectSize = Vector2.new(56, 56);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/navbar_avatar"] = {
			ImageRectOffset = Vector2.new(365, 0);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_3";
		};
		["LuaApp/icons/navbar_chat"] = {
			ImageRectOffset = Vector2.new(73, 438);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_3";
		};
		["LuaApp/icons/navbar_games"] = {
			ImageRectOffset = Vector2.new(292, 0);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_3";
		};
		["LuaApp/icons/navbar_home"] = {
			ImageRectOffset = Vector2.new(219, 0);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_3";
		};
		["LuaApp/icons/navbar_more"] = {
			ImageRectOffset = Vector2.new(146, 0);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_3";
		};
		["LuaApp/icons/navigation/close"] = {
			ImageRectOffset = Vector2.new(73, 0);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_3";
		};
		["LuaApp/icons/navigation/pushBack"] = {
			ImageRectOffset = Vector2.new(0, 438);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_3";
		};
		["LuaApp/icons/navigation/pushRight"] = {
			ImageRectOffset = Vector2.new(0, 365);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_3";
		};
		["LuaApp/icons/navigation/pushRight_small"] = {
			ImageRectOffset = Vector2.new(49, 0);
			ImageRectSize = Vector2.new(32, 32);
			ImageSet = "LuaApp/img_set_2x_5";
		};
		["LuaApp/icons/navigation/swipe"] = {
			ImageRectOffset = Vector2.new(0, 292);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_3";
		};
		["LuaApp/icons/navigation/swipeDown"] = {
			ImageRectOffset = Vector2.new(0, 219);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_3";
		};
		["LuaApp/icons/navigation_pushRight"] = {
			ImageRectOffset = Vector2.new(0, 146);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_3";
		};
		["LuaApp/icons/progress_small"] = {
			ImageRectOffset = Vector2.new(105, 478);
			ImageRectSize = Vector2.new(34, 32);
			ImageSet = "LuaApp/img_set_2x_2";
		};
		["LuaApp/icons/robux"] = {
			ImageRectOffset = Vector2.new(187, 179);
			ImageRectSize = Vector2.new(56, 56);
			ImageSet = "LuaApp/img_set_2x_4";
		};
		["LuaApp/icons/robux-hex"] = {
			ImageRectOffset = Vector2.new(445, 322);
			ImageRectSize = Vector2.new(64, 64);
			ImageSet = "LuaApp/img_set_2x_1";
		};
		["LuaApp/icons/robux_white"] = {
			ImageRectOffset = Vector2.new(445, 452);
			ImageRectSize = Vector2.new(56, 56);
			ImageSet = "LuaApp/img_set_2x_1";
		};
		["LuaApp/icons/status_BC"] = {
			ImageRectOffset = Vector2.new(0, 49);
			ImageRectSize = Vector2.new(48, 48);
			ImageSet = "LuaApp/img_set_2x_5";
		};
		["LuaApp/icons/status_OBC"] = {
			ImageRectOffset = Vector2.new(0, 0);
			ImageRectSize = Vector2.new(48, 48);
			ImageSet = "LuaApp/img_set_2x_5";
		};
		["LuaApp/icons/status_TBC"] = {
			ImageRectOffset = Vector2.new(97, 462);
			ImageRectSize = Vector2.new(48, 48);
			ImageSet = "LuaApp/img_set_2x_1";
		};
		["LuaApp/icons/status_item_limited"] = {
			ImageRectOffset = Vector2.new(0, 451);
			ImageRectSize = Vector2.new(32, 32);
			ImageSet = "LuaApp/img_set_2x_5";
		};
		["LuaApp/icons/status_premium"] = {
			ImageRectOffset = Vector2.new(0, 73);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_3";
		};
		["LuaApp/icons/status_progress"] = {
			ImageRectOffset = Vector2.new(0, 0);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "LuaApp/img_set_2x_3";
		};
		["InGameMenu/9Slice/DropShadow"] = {
			ImageRectOffset = Vector2.new(0, 0);
			ImageRectSize = Vector2.new(104, 104);
			ImageSet = "InGameMenu/img_set_2x_1";
		};
		["InGameMenu/9Slice/DropdownOutline"] = {
			ImageRectOffset = Vector2.new(0, 194);
			ImageRectSize = Vector2.new(88, 88);
			ImageSet = "InGameMenu/img_set_2x_1";
		};
		["InGameMenu/9Slice/ToggleFill"] = {
			ImageRectOffset = Vector2.new(105, 365);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "InGameMenu/img_set_2x_1";
		};
		["InGameMenu/9Slice/ToggleOutline"] = {
			ImageRectOffset = Vector2.new(105, 292);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "InGameMenu/img_set_2x_1";
		};
		["InGameMenu/9Slice/sliderCircle"] = {
			ImageRectOffset = Vector2.new(0, 441);
			ImageRectSize = Vector2.new(34, 34);
			ImageSet = "InGameMenu/img_set_2x_1";
		};
		["InGameMenu/Graphic/ClickLeft"] = {
			ImageRectOffset = Vector2.new(105, 219);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "InGameMenu/img_set_2x_1";
		};
		["InGameMenu/Graphic/ClickRight"] = {
			ImageRectOffset = Vector2.new(105, 146);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "InGameMenu/img_set_2x_1";
		};
		["InGameMenu/Graphic/SliderButton"] = {
			ImageRectOffset = Vector2.new(0, 283);
			ImageRectSize = Vector2.new(84, 84);
			ImageSet = "InGameMenu/img_set_2x_1";
		};
		["InGameMenu/Graphic/WheelScroll"] = {
			ImageRectOffset = Vector2.new(397, 73);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "InGameMenu/img_set_2x_1";
		};
		["InGameMenu/Graphic/sliderHover"] = {
			ImageRectOffset = Vector2.new(0, 105);
			ImageRectSize = Vector2.new(88, 88);
			ImageSet = "InGameMenu/img_set_2x_1";
		};
		["InGameMenu/Icons/ArrowDown"] = {
			ImageRectOffset = Vector2.new(68, 474);
			ImageRectSize = Vector2.new(32, 32);
			ImageSet = "InGameMenu/img_set_2x_1";
		};
		["InGameMenu/Icons/ArrowLeft"] = {
			ImageRectOffset = Vector2.new(35, 474);
			ImageRectSize = Vector2.new(32, 32);
			ImageSet = "InGameMenu/img_set_2x_1";
		};
		["InGameMenu/Icons/ArrowRight"] = {
			ImageRectOffset = Vector2.new(0, 476);
			ImageRectSize = Vector2.new(32, 34);
			ImageSet = "InGameMenu/img_set_2x_1";
		};
		["InGameMenu/Icons/ArrowUp"] = {
			ImageRectOffset = Vector2.new(68, 441);
			ImageRectSize = Vector2.new(32, 32);
			ImageSet = "InGameMenu/img_set_2x_1";
		};
		["InGameMenu/Icons/CancelFriendRequest"] = {
			ImageRectOffset = Vector2.new(324, 73);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "InGameMenu/img_set_2x_1";
		};
		["InGameMenu/Icons/Clear"] = {
			ImageRectOffset = Vector2.new(35, 441);
			ImageRectSize = Vector2.new(32, 32);
			ImageSet = "InGameMenu/img_set_2x_1";
		};
		["InGameMenu/Icons/ExpandArrow"] = {
			ImageRectOffset = Vector2.new(251, 73);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "InGameMenu/img_set_2x_1";
		};
		["InGameMenu/Icons/Friends"] = {
			ImageRectOffset = Vector2.new(178, 73);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "InGameMenu/img_set_2x_1";
		};
		["InGameMenu/Icons/GameSettings"] = {
			ImageRectOffset = Vector2.new(105, 73);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "InGameMenu/img_set_2x_1";
		};
		["InGameMenu/Icons/KeyBorder"] = {
			ImageRectOffset = Vector2.new(397, 0);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "InGameMenu/img_set_2x_1";
		};
		["InGameMenu/Icons/MenuControls"] = {
			ImageRectOffset = Vector2.new(324, 0);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "InGameMenu/img_set_2x_1";
		};
		["InGameMenu/Icons/MenuFriends"] = {
			ImageRectOffset = Vector2.new(178, 73);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "InGameMenu/img_set_2x_1";
		};
		["InGameMenu/Icons/MenuPlayers"] = {
			ImageRectOffset = Vector2.new(251, 0);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "InGameMenu/img_set_2x_1";
		};
		["InGameMenu/Icons/RespawnIcon"] = {
			ImageRectOffset = Vector2.new(178, 0);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "InGameMenu/img_set_2x_1";
		};
		["InGameMenu/Icons/SelectedCheck"] = {
			ImageRectOffset = Vector2.new(73, 368);
			ImageRectSize = Vector2.new(30, 24);
			ImageSet = "InGameMenu/img_set_2x_1";
		};
		["InGameMenu/Icons/UnFriend"] = {
			ImageRectOffset = Vector2.new(105, 0);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "InGameMenu/img_set_2x_1";
		};
		["InGameMenu/Icons/ViewAvatar"] = {
			ImageRectOffset = Vector2.new(0, 368);
			ImageRectSize = Vector2.new(72, 72);
			ImageSet = "InGameMenu/img_set_2x_1";
		};
	}
end
return function(arg1) -- Line 842
	--[[ Upvalues[3]:
		[1]: var283_upvw (read and write)
		[2]: var554_upvw (read and write)
		[3]: var1_upvw (read and write)
	]]
	if 2.5 < arg1 then
		if not var283_upvw then
			make_assets_3x()
		end
		return var283_upvw, 3
	end
	if 1.5 < arg1 then
		if not var554_upvw then
			make_assets_2x()
		end
		return var554_upvw, 2
	end
	if not var1_upvw then
		make_assets_1x()
	end
	return var1_upvw, 1
end