-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:15:47
-- Luau version 6, Types version 3
-- Time taken: 0.002235 seconds

local Parent = script:FindFirstAncestor("PeekView").Parent
local React_upvr = require(Parent.React)
local useDesignTokens_upvr = require(Parent.Style).useDesignTokens
local GetFFlagPeekViewContentAndSystemBarFrameJitterFixIXP_upvr = require(Parent.SharedFlags).GetFFlagPeekViewContentAndSystemBarFrameJitterFixIXP
local useUserExperiment_upvr = require(Parent.RoactAppExperiment).useUserExperiment
local GetFFlagFixPeekViewJitter_upvr = require(Parent.SharedFlags).GetFFlagFixPeekViewJitter
local ReactOtter_upvr = require(Parent.ReactOtter)
return React_upvr.forwardRef(function(arg1, arg2) -- Line 20
	--[[ Upvalues[6]:
		[1]: useDesignTokens_upvr (readonly)
		[2]: GetFFlagPeekViewContentAndSystemBarFrameJitterFixIXP_upvr (readonly)
		[3]: useUserExperiment_upvr (readonly)
		[4]: GetFFlagFixPeekViewJitter_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: ReactOtter_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local useDesignTokens_upvr_result1 = useDesignTokens_upvr()
	local var10_upvw
	local var11
	if GetFFlagPeekViewContentAndSystemBarFrameJitterFixIXP_upvr() then
		var10_upvw = useUserExperiment_upvr({"PlatformExcellence.QualityImprovement.App"}, function(arg1_2) -- Line 27
			local PlatformExcellence_QualityImprovement_App = arg1_2["PlatformExcellence.QualityImprovement.App"]
			if not PlatformExcellence_QualityImprovement_App then
				PlatformExcellence_QualityImprovement_App = {}
			end
			return PlatformExcellence_QualityImprovement_App.peekViewJitterFixEnabled
		end)
	end
	if GetFFlagFixPeekViewJitter_upvr() or GetFFlagPeekViewContentAndSystemBarFrameJitterFixIXP_upvr() then
		local any_useState_result1, any_useState_result2_upvw = React_upvr.useState(true)
		local var17_upvw = any_useState_result1
		local any_useAnimatedBinding_result1, any_useAnimatedBinding_result2_upvw = ReactOtter_upvr.useAnimatedBinding(1)
		var11 = any_useAnimatedBinding_result1
		React_upvr.useEffect(function() -- Line 37
			--[[ Upvalues[3]:
				[1]: any_useAnimatedBinding_result2_upvw (read and write)
				[2]: ReactOtter_upvr (copied, readonly)
				[3]: var17_upvw (read and write)
			]]
			local var21 = ReactOtter_upvr
			if var17_upvw then
				var21 = 0.35
			else
				var21 = 1
			end
			any_useAnimatedBinding_result2_upvw(var21.spring(var21))
		end, {var17_upvw})
	end
	local module = {}
	module.ref = arg2
	local udim2 = UDim2.new(1, 0, 1, 0)
	module.Size = udim2
	if GetFFlagFixPeekViewJitter_upvr() or var10_upvw then
		udim2 = var11
	else
		udim2 = useDesignTokens_upvr_result1.Semantic.Color.Common.Overlay.Transparency
	end
	module.BackgroundTransparency = udim2
	module.BackgroundColor3 = useDesignTokens_upvr_result1.Semantic.Color.Common.Overlay.Color3
	module.ClipsDescendants = false
	module.Text = ""
	module.AutoButtonColor = false
	module[React_upvr.Event.Activated] = function() -- Line 52
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: GetFFlagFixPeekViewJitter_upvr (copied, readonly)
			[3]: var10_upvw (read and write)
			[4]: any_useState_result2_upvw (read and write)
			[5]: var17_upvw (read and write)
		]]
		if arg1.onActivated then
			arg1.onActivated()
		end
		if GetFFlagFixPeekViewJitter_upvr() or var10_upvw then
			any_useState_result2_upvw(not var17_upvw)
		end
	end
	module[React_upvr.Change.AbsoluteSize] = arg1.onSizeChanged
	return React_upvr.createElement("TextButton", module, arg1.children)
end)