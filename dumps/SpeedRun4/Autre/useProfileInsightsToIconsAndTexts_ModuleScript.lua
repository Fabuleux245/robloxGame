-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:45:18
-- Luau version 6, Types version 3
-- Time taken: 0.004366 seconds

local Parent = script:FindFirstAncestor("TrustedContacts").Parent
local FriendRequestOriginSource_upvr = require(Parent.ApolloProfileInsights).Enums.FriendRequestOriginSource
local Icon = require(Parent.BuilderIcons).Icon
local tbl_3_upvr = {
	mutualFriends = Icon.TwoPeople;
	friendshipAgeUnixSeconds = Icon.Calendar;
	qrCode = Icon.SquaresGridQr;
	contacts = Icon.SmartphonePortrait;
	accountCreationDateUnixSeconds = Icon.CircleI;
	localizedCountryName = Icon.GlobeDetailed;
}
local function _(arg1, arg2) -- Line 34
	--[[ Upvalues[2]:
		[1]: FriendRequestOriginSource_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
	]]
	if arg1 == "friendRequestOriginSource" then
		local var6
		if arg2 == FriendRequestOriginSource_upvr.QrCode then
			var6 = "qrCode"
		elseif arg2 == FriendRequestOriginSource_upvr.PhoneContactImporter then
			var6 = "contacts"
		end
		return tbl_3_upvr[var6]
	end
	return tbl_3_upvr[arg1]
end
local function var7_upvr(arg1, arg2, arg3) -- Line 48
	--[[ Upvalues[1]:
		[1]: FriendRequestOriginSource_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 3. Error Block 2 start (CF ANALYSIS FAILED)
	do
		return arg3.connectedDuration
	end
	-- KONSTANTERROR: [3] 3. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 5. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 5. Error Block 3 end (CF ANALYSIS FAILED)
end
local React_upvr = require(Parent.React)
local LocalizationService_upvr = game:GetService("LocalizationService")
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local dependencyArray_upvr = require(Parent.RoactUtils).Hooks.dependencyArray
return function(arg1) -- Line 75, Named "useProfileInsightsToIconsAndTexts"
	--[[ Upvalues[7]:
		[1]: React_upvr (readonly)
		[2]: LocalizationService_upvr (readonly)
		[3]: useLocalization_upvr (readonly)
		[4]: FriendRequestOriginSource_upvr (readonly)
		[5]: tbl_3_upvr (readonly)
		[6]: var7_upvr (readonly)
		[7]: dependencyArray_upvr (readonly)
	]]
	local tbl_2 = {
		singularMutualConnection = "Feature.Friends.Label.MutualConnection";
	}
	local tbl = {"Feature.Friends.Label.MutualConnections"}
	local var23
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var23 = #arg1.mutualFriends
		return var23
	end
	if not arg1.mutualFriends or not INLINED() then
		var23 = 0
	end
	tbl.numConnections = var23
	tbl_2.mutualConnections = tbl
	tbl_2.joinedInYear = {
		year = DateTime.fromUnixTimestamp(arg1.accountCreationDateUnixSeconds or 0):FormatLocalTime("YYYY", LocalizationService_upvr.RobloxLocaleId);
		"Feature.Friends.Label.JoinedInYear"
	}
	tbl_2.connectedDuration = React_upvr.useMemo(function() -- Line 78
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.friendshipAgeUnixSeconds then
			local var13 = DateTime.now().UnixTimestamp - arg1.friendshipAgeUnixSeconds or 0
			local floored_2 = math.floor(var13 / 31536000)
			local floored_3 = math.floor(var13 / 2592000)
			local floored = math.floor(var13 / 86400)
			if 1 < floored_2 then
				return {
					num = floored_2;
					"Feature.Friends.Label.ConnectedNumYears"
				}
			end
			if floored_2 == 1 then
				return "Feature.Friends.Label.ConnectedOneYear"
			end
			if 1 < floored_3 then
				return {
					num = floored_3;
					"Feature.Friends.Label.ConnectedNumMonths"
				}
			end
			if floored_3 == 1 then
				return "Feature.Friends.Label.ConnectedOneMonth"
			end
			if 1 < floored then
				return {
					num = floored;
					"Feature.Friends.Label.ConnectedNumDays"
				}
			end
			if floored == 1 then
				return "Feature.Friends.Label.ConnectedOneDay"
			end
			return "Feature.Friends.Label.NewConnection"
		end
		return nil
	end, {arg1.friendshipAgeUnixSeconds})
	tbl_2.fromQrCode = "Feature.Friends.Description.FromQrCode"
	tbl_2.fromContacts = "Feature.Friends.Description.FromContacts"
	local var10_result1_upvr = useLocalization_upvr(tbl_2)
	local module_upvr = {}
	var23 = dependencyArray_upvr(var10_result1_upvr, arg1)
	return React_upvr.useMemo(function() -- Line 123
		--[[ Upvalues[6]:
			[1]: arg1 (readonly)
			[2]: FriendRequestOriginSource_upvr (copied, readonly)
			[3]: tbl_3_upvr (copied, readonly)
			[4]: var7_upvr (copied, readonly)
			[5]: var10_result1_upvr (readonly)
			[6]: module_upvr (readonly)
		]]
		local var32
		for i, v in arg1 do
			if i == "friendRequestOriginSource" then
				local var33
				if v == FriendRequestOriginSource_upvr.QrCode then
					var33 = "qrCode"
				elseif v == FriendRequestOriginSource_upvr.PhoneContactImporter then
					var33 = "contacts"
				end
				var32 = tbl_3_upvr[var33]
			else
				var32 = tbl_3_upvr[i]
			end
			local var7_result1 = var7_upvr(i, v, var10_result1_upvr)
			if var32 and var7_result1 then
				table.insert(module_upvr, {
					icon = var32;
					text = var7_result1;
				})
			end
		end
		return module_upvr
	end, var23)
end