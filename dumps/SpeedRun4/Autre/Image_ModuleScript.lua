-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:46
-- Luau version 6, Types version 3
-- Time taken: 0.008147 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local Parent = Foundation.Parent
local React_upvr = require(Parent.React)
local tbl_upvr = {
	AutoLocalize = false;
	AutoButtonColor = false;
	BorderSizePixel = 0;
	isDisabled = false;
}
local Flags_upvr = require(Foundation.Utility.Flags)
local useStyledDefaults_upvr = require(Foundation.Utility.useStyledDefaults)
local withDefaults_upvr = require(Foundation.Utility.withDefaults)
local ReactIs_upvr = require(Parent.ReactIs)
local isFoundationImage_upvr = require(script.Parent.ImageSet.isFoundationImage)
local Images_upvr = require(Parent.FoundationImages).Images
local getScaledSlice_upvr = require(script.Parent.ImageSet.getScaledSlice)
local formatted_upvr = `{"gui-object-defaults"} x-default-transparency`
local useDefaultTags_upvr = require(Foundation.Utility.useDefaultTags)
local useStyleTags_upvr = require(Foundation.Providers.Style.useStyleTags)
local withGuiObjectProps_upvr = require(Foundation.Utility.withGuiObjectProps)
local indexBindable_upvr = require(Foundation.Utility.indexBindable)
local Interactable_upvr = require(Foundation.Components.Interactable)
local Cryo_upvr = require(Parent.Cryo)
local GuiObjectChildren_upvr = require(Foundation.Utility.GuiObjectChildren)
return React_upvr.memo(React_upvr.forwardRef(function(arg1, arg2) -- Line 57, Named "Image"
	--[[ Upvalues[17]:
		[1]: Flags_upvr (readonly)
		[2]: useStyledDefaults_upvr (readonly)
		[3]: tbl_upvr (readonly)
		[4]: withDefaults_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: ReactIs_upvr (readonly)
		[7]: isFoundationImage_upvr (readonly)
		[8]: Images_upvr (readonly)
		[9]: getScaledSlice_upvr (readonly)
		[10]: formatted_upvr (readonly)
		[11]: useDefaultTags_upvr (readonly)
		[12]: useStyleTags_upvr (readonly)
		[13]: withGuiObjectProps_upvr (readonly)
		[14]: indexBindable_upvr (readonly)
		[15]: Interactable_upvr (readonly)
		[16]: Cryo_upvr (readonly)
		[17]: GuiObjectChildren_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var20
	if not Flags_upvr.FoundationDisableStylingPolyfill then
		var20 = useStyledDefaults_upvr("Image", arg1.tag, "gui-object-defaults", tbl_upvr)
	else
		var20 = nil
	end
	if Flags_upvr.FoundationDisableStylingPolyfill then
	else
	end
	local var7_result1_upvr = withDefaults_upvr(arg1, var20)
	if var7_result1_upvr.onStateChanged == nil then
		if var7_result1_upvr.onActivated == nil then
			local _ = false
			-- KONSTANTWARNING: Skipped task `defvar` above
		else
		end
	end
	local any_useMemo_result1, any_useMemo_result2, any_useMemo_result3 = React_upvr.useMemo(function() -- Line 70
		--[[ Upvalues[4]:
			[1]: var7_result1_upvr (readonly)
			[2]: ReactIs_upvr (copied, readonly)
			[3]: isFoundationImage_upvr (copied, readonly)
			[4]: Images_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var34
		if var7_result1_upvr.imageRect then
		else
		end
		if var7_result1_upvr.imageRect then
		else
		end
		if ReactIs_upvr.isBinding(var7_result1_upvr.Image) then
			local function _(arg1_7) -- Line 76, Named "getImageBindingValue"
				--[[ Upvalues[3]:
					[1]: var7_result1_upvr (copied, readonly)
					[2]: isFoundationImage_upvr (copied, readonly)
					[3]: Images_upvr (copied, readonly)
				]]
				return var7_result1_upvr.Image:map(function(arg1_8) -- Line 77
					--[[ Upvalues[4]:
						[1]: isFoundationImage_upvr (copied, readonly)
						[2]: Images_upvr (copied, readonly)
						[3]: arg1_7 (readonly)
						[4]: var7_result1_upvr (copied, readonly)
					]]
					if isFoundationImage_upvr(arg1_8) then
						local var36 = Images_upvr[arg1_8]
						if var36 then
							return var36[arg1_7]
						end
						return nil
					end
					if arg1_7 == "Image" then
						return arg1_8
					end
					if arg1_7 == "ImageRectOffset" and var7_result1_upvr.imageRect then
						return var7_result1_upvr.imageRect.offset
					end
					if arg1_7 == "ImageRectSize" and var7_result1_upvr.imageRect then
						return var7_result1_upvr.imageRect.size
					end
					return nil
				end)
			end
			local var38_upvr = "Image"
			var34 = var7_result1_upvr.Image:map(function(arg1_9) -- Line 77
				--[[ Upvalues[4]:
					[1]: isFoundationImage_upvr (copied, readonly)
					[2]: Images_upvr (copied, readonly)
					[3]: var38_upvr (readonly)
					[4]: var7_result1_upvr (copied, readonly)
				]]
				if isFoundationImage_upvr(arg1_9) then
					local var39 = Images_upvr[arg1_9]
					if var39 then
						return var39[var38_upvr]
					end
					return nil
				end
				if var38_upvr == "Image" then
					return arg1_9
				end
				if var38_upvr == "ImageRectOffset" and var7_result1_upvr.imageRect then
					return var7_result1_upvr.imageRect.offset
				end
				if var38_upvr == "ImageRectSize" and var7_result1_upvr.imageRect then
					return var7_result1_upvr.imageRect.size
				end
				return nil
			end)
			var38_upvr = "ImageRectOffset"
			var38_upvr = "ImageRectSize"
			return var34, var7_result1_upvr.Image:map(function(arg1_10) -- Line 77
				--[[ Upvalues[4]:
					[1]: isFoundationImage_upvr (copied, readonly)
					[2]: Images_upvr (copied, readonly)
					[3]: var38_upvr (readonly)
					[4]: var7_result1_upvr (copied, readonly)
				]]
				if isFoundationImage_upvr(arg1_10) then
					local var41 = Images_upvr[arg1_10]
					if var41 then
						return var41[var38_upvr]
					end
					return nil
				end
				if var38_upvr == "Image" then
					return arg1_10
				end
				if var38_upvr == "ImageRectOffset" and var7_result1_upvr.imageRect then
					return var7_result1_upvr.imageRect.offset
				end
				if var38_upvr == "ImageRectSize" and var7_result1_upvr.imageRect then
					return var7_result1_upvr.imageRect.size
				end
				return nil
			end), var7_result1_upvr.Image:map(function(arg1_11) -- Line 77
				--[[ Upvalues[4]:
					[1]: isFoundationImage_upvr (copied, readonly)
					[2]: Images_upvr (copied, readonly)
					[3]: var38_upvr (readonly)
					[4]: var7_result1_upvr (copied, readonly)
				]]
				if isFoundationImage_upvr(arg1_11) then
					local var43 = Images_upvr[arg1_11]
					if var43 then
						return var43[var38_upvr]
					end
					return nil
				end
				if var38_upvr == "Image" then
					return arg1_11
				end
				if var38_upvr == "ImageRectOffset" and var7_result1_upvr.imageRect then
					return var7_result1_upvr.imageRect.offset
				end
				if var38_upvr == "ImageRectSize" and var7_result1_upvr.imageRect then
					return var7_result1_upvr.imageRect.size
				end
				return nil
			end)
		end
		if typeof(var7_result1_upvr.Image) == "string" then
			if isFoundationImage_upvr(var7_result1_upvr.Image) then
				local var44 = Images_upvr[var7_result1_upvr.Image]
				if var44 then
					var34 = var44.Image
				end
			end
		end
		return var34, var44.ImageRectOffset, var44.ImageRectSize
	end, {var7_result1_upvr.Image, var7_result1_upvr.imageRect, Images_upvr})
	if var7_result1_upvr.slice then
		if ReactIs_upvr.isBinding(var7_result1_upvr.Image) then
			local _ = var7_result1_upvr.Image:map(function(arg1_12) -- Line 111
				--[[ Upvalues[3]:
					[1]: isFoundationImage_upvr (copied, readonly)
					[2]: getScaledSlice_upvr (copied, readonly)
					[3]: var7_result1_upvr (readonly)
				]]
				if isFoundationImage_upvr(arg1_12) then
					return getScaledSlice_upvr(var7_result1_upvr.slice.center, var7_result1_upvr.slice.scale)
				end
				return var7_result1_upvr.slice
			end)
			local function _(arg1_13) -- Line 118
				return arg1_13.center
			end
			local function _(arg1_14) -- Line 121
				return arg1_14.scale
			end
		elseif typeof(var7_result1_upvr.Image) == "string" and isFoundationImage_upvr(var7_result1_upvr.Image) then
			local getScaledSlice_upvr_result1 = getScaledSlice_upvr(var7_result1_upvr.slice.center, var7_result1_upvr.slice.scale)
		end
	end
	if var7_result1_upvr.backgroundStyle ~= nil then
	else
	end
	if true then
		-- KONSTANTWARNING: GOTO [134] #101
	end
	local var54 = "ImageLabel"
	local module = {}
	if var54 == "ImageButton" then
		-- KONSTANTWARNING: GOTO [144] #108
	end
	module.AutoButtonColor = nil
	module.Image = any_useMemo_result1
	if var7_result1_upvr.imageStyle then
		-- KONSTANTWARNING: GOTO [158] #118
	end
	module.ImageColor3 = nil
	if var7_result1_upvr.imageStyle then
		-- KONSTANTWARNING: GOTO [170] #127
	end
	module.ImageTransparency = nil
	module.ImageRectOffset = any_useMemo_result2
	module.ImageRectSize = any_useMemo_result3
	module.ResampleMode = var7_result1_upvr.ResampleMode
	module.ScaleType = Enum.ScaleType.Slice
	module.SliceCenter = getScaledSlice_upvr_result1.center
	module.SliceScale = getScaledSlice_upvr_result1.scale
	module.TileSize = var7_result1_upvr.TileSize
	module.ref = arg2
	module[React_upvr.Tag] = useStyleTags_upvr(useDefaultTags_upvr(var7_result1_upvr.tag, "gui-object-defaults"))
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if true then
		-- KONSTANTWARNING: GOTO [201] #146
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if true then
		local _ = {
			component = var54;
			onActivated = var7_result1_upvr.onActivated;
			onStateChanged = var7_result1_upvr.onStateChanged;
			stateLayer = var7_result1_upvr.stateLayer;
			isDisabled = var7_result1_upvr.isDisabled;
		}
	else
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return React_upvr.createElement(var54, withGuiObjectProps_upvr(var7_result1_upvr, module), GuiObjectChildren_upvr(var7_result1_upvr))
end))