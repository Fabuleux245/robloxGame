-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:06:20
-- Luau version 6, Types version 3
-- Time taken: 0.000820 seconds

local EventNames = require(script.Parent.EventNames)
local Enums = require(script.Parent.Parent.Enums)
local Contexts = Enums.Contexts
local EventTypes = Enums.EventTypes
local BtnValues = require(script.Parent.BtnValues)
local function var6(arg1) -- Line 10
	return tostring(arg1)
end
return {
	[EventNames.HomePage_Carousel_LuaProfile] = {
		context = Contexts.HomePage;
		eventType = EventTypes.ButtonClick;
		additionalInfo = {
			btn = BtnValues.PlayerProfile;
			subpage = Enums.SubPages.PeekView;
			page = Enums.Pages.PlayerProfile;
		};
		formatRulesForAdditionalInfo = {
			uid = var6;
		};
	};
	[EventNames.HomePage_Carousel_FriendsLanding] = {
		context = Contexts.HomePage;
		eventType = EventTypes.ButtonClick;
		additionalInfo = {
			btn = BtnValues.FriendsLanding;
		};
		formatRulesForAdditionalInfo = {
			uid = var6;
		};
	};
	[EventNames.MorePage_FriendsLanding] = {
		context = Contexts.HomePage;
		eventType = EventTypes.ButtonClick;
		additionalInfo = {
			btn = BtnValues.FriendsLanding;
		};
		formatRulesForAdditionalInfo = {
			uid = var6;
		};
	};
}