-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:07
-- Luau version 6, Types version 3
-- Time taken: 0.002597 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local React_upvr = require(Foundation.Parent.React)
local UserPresence_upvr = require(Foundation.Enums.UserPresence)
local tbl_upvr = {
	size = require(Foundation.Enums.InputSize).Medium;
	userPresence = UserPresence_upvr.None;
}
local withDefaults_upvr = require(Foundation.Utility.withDefaults)
local useTokens_upvr = require(Foundation.Providers.Style.useTokens)
local useAvatarVariants_upvr = require(script.Parent.useAvatarVariants)
local getAvatarSize_upvr = require(script.Parent.getAvatarSize)
local View_upvr = require(Foundation.Components.View)
local withCommonProps_upvr = require(Foundation.Utility.withCommonProps)
local Image_upvr = require(Foundation.Components.Image)
local getRbxThumb_upvr = require(Foundation.Utility.getRbxThumb)
local ThumbnailType_upvr = require(Foundation.Enums.ThumbnailType)
local ThumbnailSize_upvr = require(Foundation.Enums.ThumbnailSize)
local Indicator_upvr = require(script.Parent.Indicator)
return React_upvr.memo(React_upvr.forwardRef(function(arg1, arg2) -- Line 41, Named "Avatar"
	--[[ Upvalues[14]:
		[1]: withDefaults_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useTokens_upvr (readonly)
		[4]: useAvatarVariants_upvr (readonly)
		[5]: getAvatarSize_upvr (readonly)
		[6]: UserPresence_upvr (readonly)
		[7]: React_upvr (readonly)
		[8]: View_upvr (readonly)
		[9]: withCommonProps_upvr (readonly)
		[10]: Image_upvr (readonly)
		[11]: getRbxThumb_upvr (readonly)
		[12]: ThumbnailType_upvr (readonly)
		[13]: ThumbnailSize_upvr (readonly)
		[14]: Indicator_upvr (readonly)
	]]
	local withDefaults_upvr_result1 = withDefaults_upvr(arg1, tbl_upvr)
	local useTokens_upvr_result1 = useTokens_upvr()
	local var7_result1 = useAvatarVariants_upvr(useTokens_upvr_result1, withDefaults_upvr_result1.size, withDefaults_upvr_result1.userPresence, withDefaults_upvr_result1.backplateStyle)
	local var8_result1 = getAvatarSize_upvr(useTokens_upvr_result1, withDefaults_upvr_result1.size)
	local var20 = true
	local var21
	if withDefaults_upvr_result1.userPresence ~= UserPresence_upvr.Active then
		if withDefaults_upvr_result1.userPresence ~= UserPresence_upvr.Away then
			var20 = false
		else
			var20 = true
		end
	end
	var21 = {}
	var21.tag = var7_result1.container.tag
	var21.ref = arg2
	var21.backgroundStyle = var7_result1.container.backgroundStyle
	var21.stroke = var7_result1.container.stroke
	var21.Size = UDim2.fromOffset(var8_result1, var8_result1)
	local module = {}
	var21 = React_upvr.createElement
	var21 = var21(Image_upvr, {
		Image = getRbxThumb_upvr(ThumbnailType_upvr.AvatarHeadShot, withDefaults_upvr_result1.userId, ThumbnailSize_upvr.Medium);
		tag = var7_result1.avatar.tag;
		backgroundStyle = withDefaults_upvr_result1.backgroundStyle;
	})
	module.Image = var21
	if var20 then
		var21 = React_upvr.createElement(View_upvr, var7_result1.indicatorBackplate, React_upvr.createElement(Indicator_upvr, var7_result1.indicator))
	else
		var21 = nil
	end
	module.Indicator = var21
	return React_upvr.createElement(View_upvr, withCommonProps_upvr(withDefaults_upvr_result1, var21), module)
end))