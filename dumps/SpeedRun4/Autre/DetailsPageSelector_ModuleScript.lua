-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:47:04
-- Luau version 6, Types version 3
-- Time taken: 0.000606 seconds

local Parent = script:FindFirstAncestor("AppBlox").Parent
local DetailsPageTemplate_upvr = require(script.Parent.DetailsPageTemplate)
local DeviceType = require(Parent.RobloxAppEnums).DeviceType
local tbl_upvr = {
	[DeviceType.Console] = require(script.Parent.DetailsPageTenfootTemplate);
	[DeviceType.Phone] = DetailsPageTemplate_upvr;
	[DeviceType.Desktop] = DetailsPageTemplate_upvr;
	[DeviceType.Unknown] = DetailsPageTemplate_upvr;
	[DeviceType.Tablet] = DetailsPageTemplate_upvr;
	[DeviceType.VR] = DetailsPageTemplate_upvr;
}
local React_upvr = require(Parent.React)
return function(arg1) -- Line 32, Named "DetailsPageTemplateSelector"
	--[[ Upvalues[3]:
		[1]: tbl_upvr (readonly)
		[2]: DetailsPageTemplate_upvr (readonly)
		[3]: React_upvr (readonly)
	]]
	local var6 = tbl_upvr[arg1.deviceType]
	if not var6 then
		var6 = DetailsPageTemplate_upvr
	end
	return React_upvr.createElement(var6, arg1.detailsPageProps)
end