-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:57
-- Luau version 6, Types version 3
-- Time taken: 0.001826 seconds

local AppsFlyerUtil_upvr = require(script.Parent.utils.AppsFlyerUtil)
return function(arg1) -- Line 4
	--[[ Upvalues[1]:
		[1]: AppsFlyerUtil_upvr (readonly)
	]]
	local module_upvr = {
		info = {
			webpage = arg1.fromString("www:games/{placeId}");
			store = arg1.fromString("www:games/store-section/{universeId}");
			badges = arg1.fromString("www:games/badges-section/{universeId}");
			servers = arg1.fromString("www:games/servers-section/{universeId}");
			serversPreopenCreateVip = arg1.fromString("www:games/servers-section-preopen-create-vip/{universeId}");
			group = arg1.fromString("www:communities/{creatorId}");
			user = arg1.fromString("www:users/{creatorId}/profile");
			pass = arg1.fromString("www:game-pass/{passId}");
			creator = function(arg1_2) -- Line 19, Named "creator"
				--[[ Upvalues[1]:
					[1]: module_upvr (readonly)
				]]
				if arg1_2.creatorType == "Group" then
					return module_upvr.info.group(arg1_2)
				end
				if arg1_2.creatorType == "User" then
					return module_upvr.info.user(arg1_2)
				end
				warn(string.format("%s - unknown creatorType of %s", tostring(script.name), tostring(arg1_2.creatorType)))
				return nil
			end;
			appsflyer = function(arg1_3) -- Line 28, Named "appsflyer"
				--[[ Upvalues[3]:
					[1]: arg1 (readonly)
					[2]: AppsFlyerUtil_upvr (copied, readonly)
					[3]: module_upvr (readonly)
				]]
				local description = arg1_3.description
				local image = arg1_3.image
				if description and image and arg1_3.title then
					local module = {
						image = image;
					}
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					module.title = arg1_3.title
					module.description = AppsFlyerUtil_upvr.sanitizeDescription(description)
					module.mobileUrl = arg1.fromString("mobilenav:game_details?gameId={universeId}")(arg1_3)
					module.webUrl = module_upvr.info.webpage(arg1_3)
					return arg1.fromString("appsflyer:Ebh5?pid=share&is_retargeting=true&af_og_title={title}&af_og_image={image}&af_og_description={description}&af_dp={mobileUrl}&af_web_dp={webUrl}")(module)
				end
				return arg1.fromString("appsflyer:Ebh5?pid=share&is_retargeting=true&af_dp={mobileUrl}&af_web_dp={webUrl}")({
					mobileUrl = arg1.fromString("mobilenav:game_details?gameId={universeId}")(arg1_3);
					webUrl = module_upvr.info.webpage(arg1_3);
				})
			end;
		};
		details = arg1.fromString("games:games?{universeIds}");
		playability = arg1.fromString("games:games/multiget-playability-status?{universeIds}");
		media = arg1.fromString("games:games/{universeId}/media");
		favorite = arg1.fromString("games:games/{universeId}/favorites");
		social = arg1.fromString("games:games/{universeId}/social-links/list");
		recommended = arg1.fromString("games:games/recommendations/game/{universeId}?{paginationKey|}&{maxRows|6}");
		thumbnail = arg1.fromString("games:games/game-thumbnails?{height|150}&{width|150}&{imageTokens}");
		vote = {
			all = arg1.fromString("games:games/{universeId}/votes");
			get = arg1.fromString("games:games/{universeId}/votes/user");
			set = arg1.fromString("games:games/{universeId}/user-votes");
		};
		follow = {
			get = arg1.fromString("followings:users/{userId}/universes/{universeId}/status");
			set = arg1.fromString("followings:users/{userId}/universes/{universeId}");
		};
		report = arg1.fromString("www:abusereport/asset?id={placeId}");
		place = arg1.fromString("games:games/multiget-place-details?{placeIds}");
	}
	return module_upvr
end