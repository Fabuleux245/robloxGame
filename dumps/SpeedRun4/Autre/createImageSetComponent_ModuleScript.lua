-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:02
-- Luau version 6, Types version 3
-- Time taken: 0.006369 seconds

local Parent_3 = script.Parent
local Parent_2 = Parent_3.Parent.Parent
local Parent = Parent_2.Parent
local Foundation = require(Parent.Foundation)
local Roact_upvr = require(Parent.Roact)
local UIBloxConfig_upvr = require(Parent_2.UIBloxConfig)
local useTokens_upvr = Foundation.Hooks.useTokens
local useTextSizeOffset_upvr = Foundation.Hooks.useTextSizeOffset
local ImagesInverse_upvr = require(Parent_2.App.ImageSet.ImagesInverse)
local uiblox_upvr = require(Parent.BuilderIcons).Migration.uiblox
local getBuilderIconElement_upvr = require(Parent_3.getBuilderIconElement)
local scaleSliceToResolution_upvr = require(Parent_2.App.ImageSet.scaleSliceToResolution)
return function(arg1, arg2) -- Line 17
	--[[ Upvalues[8]:
		[1]: Roact_upvr (readonly)
		[2]: UIBloxConfig_upvr (readonly)
		[3]: useTokens_upvr (readonly)
		[4]: useTextSizeOffset_upvr (readonly)
		[5]: ImagesInverse_upvr (readonly)
		[6]: uiblox_upvr (readonly)
		[7]: getBuilderIconElement_upvr (readonly)
		[8]: scaleSliceToResolution_upvr (readonly)
	]]
	local var15
	if 0 >= arg2 then
		var15 = false
	else
		var15 = true
	end
	assert(var15, "resolutionScale for ImageSet must be greater than 0! got "..tostring(arg2))
	var15 = Roact_upvr
	function var15(arg1_2, arg2_2) -- Line 23
		--[[ Upvalues[10]:
			[1]: Roact_upvr (copied, readonly)
			[2]: UIBloxConfig_upvr (copied, readonly)
			[3]: useTokens_upvr (copied, readonly)
			[4]: useTextSizeOffset_upvr (copied, readonly)
			[5]: ImagesInverse_upvr (copied, readonly)
			[6]: uiblox_upvr (copied, readonly)
			[7]: getBuilderIconElement_upvr (copied, readonly)
			[8]: arg1 (readonly)
			[9]: arg2 (readonly)
			[10]: scaleSliceToResolution_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local module = {}
		module[Roact_upvr.Ref] = arg2_2
		module[Roact_upvr.Children] = arg1_2[Roact_upvr.Children]
		local var62
		for i, v in pairs(arg1_2) do
			if i == "Image" and typeof(v) == "table" then
				var62 = true
			else
				module[i] = v
			end
		end
		if UIBloxConfig_upvr.migrateBuilderIcon then
			local var8_result1 = useTokens_upvr()
			if var62 then
				i = ImagesInverse_upvr
				local var64 = i[v]
				if var64 then
					v = uiblox_upvr
					i = v[var64]
					if i then
						v = var8_result1.Stroke
						i = v.Standard
						v = getBuilderIconElement_upvr(module, arg1, uiblox_upvr[var64], var64, var8_result1, useTextSizeOffset_upvr(), i)
						return v
					end
				end
			end
		end
		if var62 then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			for i_2, v_2 in pairs(v) do
				if not module[i_2] then
					module[i_2] = v_2
				elseif i_2 == "ImageRectOffset" then
					module[i_2] = v_2 + module[i_2] * arg2
				elseif i_2 == "ImageRectSize" then
					module[i_2] *= arg2
				end
			end
		end
		if var62 then
		end
		return Roact_upvr.createElement(arg1, scaleSliceToResolution_upvr(module, arg2))
	end
	return var15.forwardRef(var15)
end