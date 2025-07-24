-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:19:47
-- Luau version 6, Types version 3
-- Time taken: 0.002099 seconds

local AppTopBanner = script:FindFirstAncestor("AppTopBanner")
local Parent = AppTopBanner.Parent
local Cryo_upvr = require(Parent.Cryo)
local module_upvr = {
	isDisabled = true;
	expanded = false;
	appTopBannerType = require(AppTopBanner.Enums.AppTopBannerType).None;
	appTopBannerContentProps = nil;
	appTopBannerContentHeight = 0;
	onAppTopBannerClick = function() -- Line 37, Named "onAppTopBannerClick"
	end;
}
local module = {}
local Constants_upvr = require(AppTopBanner.Constants)
module[require(AppTopBanner.Actions.SetAppTopBanner).name] = function(arg1, arg2) -- Line 41
	--[[ Upvalues[3]:
		[1]: Cryo_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: module_upvr (readonly)
	]]
	local isDisabled = arg1.isDisabled
	local var9
	if arg2.expanded then
		local tbl = {
			expanded = arg2.expanded;
			appTopBannerType = arg2.appTopBannerType;
			appTopBannerContentProps = arg2.appTopBannerContentProps;
			onAppTopBannerClick = arg2.onAppTopBannerClick;
		}
		local appTopBannerContentHeight = arg2.appTopBannerContentHeight
		if not appTopBannerContentHeight then
			appTopBannerContentHeight = Constants_upvr.CONTENT_HEIGHT
		end
		tbl.appTopBannerContentHeight = appTopBannerContentHeight
		tbl.isDisabled = isDisabled
		var9 = Cryo_upvr.Dictionary.join(var9, tbl)
		return var9
	end
	if var9.expanded ~= arg2.expanded then
		var9 = Cryo_upvr.Dictionary.join(module_upvr, {
			isDisabled = isDisabled;
		})
	end
	return var9
end
module[require(AppTopBanner.Actions.DisableAppTopBanner).name] = function(arg1, arg2) -- Line 61
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	if arg1.isDisabled == arg2.isDisabled then
		return arg1
	end
	return Cryo_upvr.Dictionary.join(arg1, {
		isDisabled = not arg1.isDisabled;
	})
end
return require(Parent.Rodux).createReducer(module_upvr, module)