-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:43:16
-- Luau version 6, Types version 3
-- Time taken: 0.005767 seconds

local Squads = script:FindFirstAncestor("Squads")
local dependencies = require(Squads.dependencies)
local Foundation = dependencies.Foundation
local useTokens_upvr = Foundation.Hooks.useTokens
local SquadInviteChangesExperimentation_upvr = dependencies.SocialExperiments.SquadInviteChangesExperimentation
local Cryo_upvr = require(Squads.Parent.Cryo)
local React_upvr = dependencies.React
local dependencyArray_upvr = dependencies.Hooks.dependencyArray
local Image_upvr = Foundation.Image
local View_upvr = Foundation.View
function HorizontalFacepileGroup(arg1) -- Line 28
	--[[ Upvalues[7]:
		[1]: useTokens_upvr (readonly)
		[2]: SquadInviteChangesExperimentation_upvr (readonly)
		[3]: Cryo_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: dependencyArray_upvr (readonly)
		[6]: Image_upvr (readonly)
		[7]: View_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 24 start (CF ANALYSIS FAILED)
	local var4_result1_upvr = useTokens_upvr()
	local var12_upvw = arg1
	if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() then
		var12_upvw = Cryo_upvr.Dictionary.union({
			avatarSize = 0;
			images = {};
			layoutOrder = 1;
			imageBackgroundStyle = nil;
			imageBorderStyle = {
				Color = var4_result1_upvr.Color.Extended.Green.Green_800.Color3;
				Transparency = var4_result1_upvr.Color.Extended.Green.Green_800.Transparency;
			};
		}, arg1)
	end
	if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() then
	else
	end
	if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() then
		-- KONSTANTWARNING: GOTO [103] #73
	end
	-- KONSTANTERROR: [0] 1. Error Block 24 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [102] 72. Error Block 26 start (CF ANALYSIS FAILED)
	local var34
	local module = {}
	var34 = UDim2.fromOffset(React_upvr.useMemo(function() -- Line 48
		--[[ Upvalues[1]:
			[1]: var12_upvw (read and write)
		]]
		local len = #var12_upvw.images
		local var19
		if len <= var19 then
			var19 = 0
			return var19
		end
		var19 = var12_upvw.avatarSize
		for _ = 2, len do
			var19 += var12_upvw.avatarSize - 4
		end
		return var19
	end, dependencyArray_upvr(#var12_upvw.images, var12_upvw.avatarSize)), var12_upvw.avatarSize)
	module.Size = var34
	var34 = 1
	module.BackgroundTransparency = var34
	if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() and var12_upvw.layoutOrder then
		var34 = var12_upvw.layoutOrder
	else
		var34 = nil
	end
	module.LayoutOrder = var34
	var34 = {}
	var34[1] = React_upvr.useMemo(function() -- Line 64
		--[[ Upvalues[5]:
			[1]: var12_upvw (read and write)
			[2]: React_upvr (copied, readonly)
			[3]: Image_upvr (copied, readonly)
			[4]: SquadInviteChangesExperimentation_upvr (copied, readonly)
			[5]: var4_result1_upvr (readonly)
		]]
		local module_2 = {}
		local _
		for i_2, v in ipairs(var12_upvw.images) do
			if i_2 == 1 then
				_ = 0
			else
				_ = 4
			end
			local var30
			local tbl_2 = {
				Image = v;
			}
			if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() and var12_upvw.imageBackgroundStyle then
				var30 = var12_upvw.imageBackgroundStyle
			else
				var30 = nil
			end
			tbl_2.backgroundStyle = var30
			local var32
			var30 = UDim2.fromOffset(var12_upvw.avatarSize, var12_upvw.avatarSize)
			tbl_2.Size = var30
			var30 = UDim2.new
			var32 = var12_upvw.avatarSize
			var32 = _ * (i_2 - 1)
			var32 = 0
			var30 = var30(0, var32 * (i_2 - 1) - var32, 0.5, var32)
			tbl_2.Position = var30
			var30 = "anchor-center-left bg-surface-100 radius-circle"
			tbl_2.tag = var30
			var30 = #var12_upvw.images - i_2 + 1
			tbl_2.ZIndex = var30
			var30 = {}
			local tbl = {}
			if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() and var12_upvw.imageBorderStyle then
				var32 = var12_upvw.imageBorderStyle.Color
			else
				var32 = var4_result1_upvr.Color.Extended.Green.Green_800.Color3
			end
			tbl.Color = var32
			if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() and var12_upvw.imageBorderStyle then
				var32 = var12_upvw.imageBorderStyle.Transparency
			else
				var32 = var4_result1_upvr.Color.Extended.Green.Green_800.Transparency
			end
			tbl.Transparency = var32
			var32 = var4_result1_upvr.Stroke.Thick
			tbl.Thickness = var32
			var30.UIStroke = React_upvr.createElement("UIStroke", tbl)
			table.insert(module_2, React_upvr.createElement(Image_upvr, tbl_2, var30))
		end
		return module_2
	end, dependencyArray_upvr(var12_upvw.avatarSize, var12_upvw.images, nil, nil))
	do
		return React_upvr.createElement(View_upvr, module, var34)
	end
	-- KONSTANTERROR: [102] 72. Error Block 26 end (CF ANALYSIS FAILED)
end
return HorizontalFacepileGroup