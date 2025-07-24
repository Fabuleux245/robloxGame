-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:58
-- Luau version 6, Types version 3
-- Time taken: 0.003574 seconds

game:DefineFastFlag("EnableShopGiftCardsURL", false)
return function(arg1) -- Line 3
	local function _() -- Line 4, Named "isQQ"
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return string.find(arg1.fromString("corp:")(), "qq.com")
	end
	local module = {
		catalog = arg1.fromString("www:catalog");
		buildersClub = arg1.fromString("www:mobile-app-upgrades/native-ios/bc");
		trades = arg1.fromString("www:trades");
		profile = arg1.fromString("www:users/profile");
		friends = arg1.fromString("www:users/friends");
		groups = arg1.fromString("www:my/communities");
		inventory = arg1.fromString("www:users/inventory");
		messages = arg1.fromString("www:my/messages");
		feed = arg1.fromString("www:feeds/inapp");
		develop = arg1.fromString("www:develop");
		creatorHub = arg1.fromString("create:");
		blog = arg1.fromString("blog:");
		giftCards = function(arg1_2) -- Line 21, Named "giftCards"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			local var3 = "www:giftcards?ref={source}"
			if game:GetFastFlag("EnableShopGiftCardsURL") then
				var3 = "www:shopgiftcards?ref={source}"
			end
			return arg1.fromString(var3)({
				source = arg1_2 or "";
			})
		end;
	}
	local var5 = "https://www.amazon.com/roblox"
	module.amazonStore = arg1.fromString(var5)
	if string.find(arg1.fromString("corp:")(), "qq.com") then
		var5 = "corp:faq"
	else
		var5 = "www:help"
	end
	module.help = arg1.fromString(var5)
	module.appealsPortal = {
		main = arg1.fromString("www:report-appeals?t_source={source|app}");
		violation = arg1.fromString("www:report-appeals?vid={id}&t_source={source|app}");
	}
	module.email = {
		getSetEmail = arg1.fromString("accountSettings:v1/email");
		sendVerificationEmail = arg1.fromString("accountSettings:v1/email/verify");
	}
	module.about = {
		us = function(arg1_3) -- Line 44, Named "us"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.fromString("www:info/about-us?locale={localeCode}")({
				localeCode = arg1_3 or "";
			})
		end;
		careers = function(arg1_4) -- Line 48, Named "careers"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if string.find(arg1.fromString("corp:")(), "qq.com") then
				return arg1.fromString("corp:careers.html")
			end
			return arg1.fromString("www:info/jobs?locale={localeCode}")({
				localeCode = arg1_4 or "";
			})
		end;
		parents = function(arg1_5) -- Line 56, Named "parents"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.fromString("www:info/parents?locale={localeCode}")({
				localeCode = arg1_5 or "";
			})
		end;
		terms = function(arg1_6) -- Line 60, Named "terms"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if string.find(arg1.fromString("corp:")(), "qq.com") and arg1_6.useGameQQUrls then
				return arg1.fromString("https://game.qq.com/contract.shtml")()
			end
			return arg1.fromString("www:info/terms")()
		end;
		privacy = function(arg1_7) -- Line 67, Named "privacy"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if string.find(arg1.fromString("corp:")(), "qq.com") and arg1_7.useGameQQUrls then
				return arg1.fromString("https://game.qq.com/privacy_guide.shtml")()
			end
			return arg1.fromString("www:info/privacy")()
		end;
		guidelines = arg1.fromString("www:info/community-guidelines");
		support = arg1.fromString("www:support");
	}
	module.settings = {
		account = arg1.fromString("www:my/account#!/info");
		security = arg1.fromString("www:my/account#!/security");
		privacy = arg1.fromString("www:my/account#!/privacy");
		parentalControls = arg1.fromString("www:my/account#!/parental-controls");
		billing = arg1.fromString("www:my/account#!/billing");
		subscriptions = arg1.fromString("www:my/account#!/subscriptions");
		notifications = arg1.fromString("www:my/account#!/notifications");
		appPermissions = arg1.fromString("www:my/account#!/app-permissions");
		screentimeSettings = arg1.fromString("www:my/account#!/privacy/Screentime");
		blockedExperiencesSettings = arg1.fromString("www:my/account#!/privacy/ContentRestrictions/BlockedExperiences");
		blockedUsersSettings = arg1.fromString("www:my/account#!/privacy/BlockedUsers");
		experienceChatSettings = arg1.fromString("www:my/account#!/privacy/Communication/ExperienceChat");
		partySettings = arg1.fromString("www:my/account#!/privacy/Communication/Party");
		voiceSettings = arg1.fromString("www:my/account#!/privacy/Communication/Voice");
		tradingInventorySettings = arg1.fromString("www:my/account#!/privacy/TradingAndInventory");
		friendsContactsSettings = arg1.fromString("www:my/account#!/privacy/FriendsAndContacts");
		privateServerSettings = arg1.fromString("www:my/account#!/privacy/VisibilityAndPrivateServers/PrivateServerPrivacy");
		visibilitySettings = arg1.fromString("www:my/account#!/privacy/VisibilityAndPrivateServers/Visibility");
	}
	module.tencent = {
		childrenPrivacyGuide = arg1.fromString("https://game.qq.com/privacy_guide_children.shtml");
		luobuRiderTerms = arg1.fromString("https://roblox.qq.com/web201904/newsdetail.html?newsid=12429812");
		reputationInfo = arg1.fromString("https://gamecredit.qq.com/static/games/index.htm");
		luobuThirdPartyDataUse = arg1.fromString("https://game.qq.com/zlkdatasys/privacy_SDK.html");
	}
	module.idVerification = {
		verify = arg1.fromString("www:id-verification/verify");
		getAge = arg1.fromString("apis:age-verification-service/v1/age-verification/get-verified-age");
	}
	module.notifications = {
		clearUnread = arg1.fromString("notifications:stream-notifications/clear-unread");
		unreadCount = arg1.fromString("notifications:stream-notifications/unread-count");
	}
	module.securityAlert = arg1.fromString("www:security-feedback?payload={payload}&username={username}")
	module.securityAlertWithChannel = arg1.fromString("www:security-feedback?payload={payload}&username={username}&channel={channel}")
	return module
end