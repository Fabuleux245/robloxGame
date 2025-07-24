-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:58:58
-- Luau version 6, Types version 3
-- Time taken: 0.005998 seconds

local Parent_2 = script.Parent.Parent
local Parent = Parent_2.Parent
local Cryo_upvr = require(Parent.Cryo)
local CaptureType_upvr = require(Parent_2.Enums.CaptureType)
local FFlagUseRbxstorageInGallery_upvr = require(Parent_2.Flags.FFlagUseRbxstorageInGallery)
local function _(arg1, arg2, arg3) -- Line 30, Named "findNewSelectedCaptureIndex"
	--[[ Upvalues[3]:
		[1]: FFlagUseRbxstorageInGallery_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: CaptureType_upvr (readonly)
	]]
	if not FFlagUseRbxstorageInGallery_upvr and arg1[arg2] ~= nil and arg1[arg2].filePath == arg3.filePath then
		return arg2
	end
	return Cryo_upvr.List.findWhere(arg1, function(arg1_2) -- Line 44
		--[[ Upvalues[3]:
			[1]: FFlagUseRbxstorageInGallery_upvr (copied, readonly)
			[2]: CaptureType_upvr (copied, readonly)
			[3]: arg3 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		if FFlagUseRbxstorageInGallery_upvr and arg1_2.type == CaptureType_upvr.Video then
			local type_4 = arg3.type
			if type_4 == CaptureType_upvr.Video then
				if arg1_2.thumbnailKey ~= arg3.thumbnailKey then
					type_4 = false
				else
					type_4 = true
				end
				return type_4
			end
		end
		if FFlagUseRbxstorageInGallery_upvr then
			if arg1_2.type == CaptureType_upvr.Screenshot then
				local type = arg3.type
				if type == CaptureType_upvr.Screenshot then
					if arg1_2.filePath ~= arg3.filePath then
						type = false
					else
						type = true
					end
					return type
				end
			end
		end
		type = FFlagUseRbxstorageInGallery_upvr
		if not type then
			if arg1_2.filePath ~= arg3.filePath then
			else
			end
			return true
		end
		return false
	end)
end
return require(Parent.Rodux).createReducer({
	IsOpen = false;
	IsDeleteWarningModalOpen = false;
	SelectedCaptureIndex = 0;
}, {
	[require(Parent_2.Actions.CapturesRetrieved).name] = function(arg1, arg2) -- Line 66
		--[[ Upvalues[3]:
			[1]: Cryo_upvr (readonly)
			[2]: FFlagUseRbxstorageInGallery_upvr (readonly)
			[3]: CaptureType_upvr (readonly)
		]]
		local var13
		if arg1.IsOpen == false then
			return arg1
		end
		var13 = arg2.captures
		if #var13 == 0 then
			var13 = Cryo_upvr.Dictionary
			var13 = arg1
			return var13.join(var13, {
				IsOpen = false;
				SelectedCaptureIndex = 0;
			})
		end
		if arg2.selectedCapture == nil then
			var13 = arg2.captures
			var13 = Cryo_upvr.Dictionary.join
			var13 = var13(arg1, {
				SelectedCaptureIndex = math.min(arg1.SelectedCaptureIndex, #var13);
			})
			return var13
		end
		if arg2.selectedCapture == nil then
			var13 = false
		else
			var13 = true
		end
		assert(var13, "CapturesRetrieved selectedCapture should not be nil")
		local captures = arg2.captures
		local SelectedCaptureIndex = arg1.SelectedCaptureIndex
		if not FFlagUseRbxstorageInGallery_upvr and captures[SelectedCaptureIndex] ~= nil and captures[SelectedCaptureIndex].filePath == arg2.selectedCapture.filePath then
			var13 = SelectedCaptureIndex
		else
			local selectedCapture_upvr = arg2.selectedCapture
			var13 = Cryo_upvr.List.findWhere(captures, function(arg1_3) -- Line 44
				--[[ Upvalues[3]:
					[1]: FFlagUseRbxstorageInGallery_upvr (copied, readonly)
					[2]: CaptureType_upvr (copied, readonly)
					[3]: selectedCapture_upvr (readonly)
				]]
				-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
				if FFlagUseRbxstorageInGallery_upvr and arg1_3.type == CaptureType_upvr.Video then
					local type_5 = selectedCapture_upvr.type
					if type_5 == CaptureType_upvr.Video then
						if arg1_3.thumbnailKey ~= selectedCapture_upvr.thumbnailKey then
							type_5 = false
						else
							type_5 = true
						end
						return type_5
					end
				end
				if FFlagUseRbxstorageInGallery_upvr then
					if arg1_3.type == CaptureType_upvr.Screenshot then
						local type_2 = selectedCapture_upvr.type
						if type_2 == CaptureType_upvr.Screenshot then
							if arg1_3.filePath ~= selectedCapture_upvr.filePath then
								type_2 = false
							else
								type_2 = true
							end
							return type_2
						end
					end
				end
				type_2 = FFlagUseRbxstorageInGallery_upvr
				if not type_2 then
					if arg1_3.filePath ~= selectedCapture_upvr.filePath then
					else
					end
					return true
				end
				return false
			end)
		end
		if var13 == arg1.SelectedCaptureIndex then
			return arg1
		end
		if var13 ~= nil then
			return Cryo_upvr.Dictionary.join(arg1, {
				SelectedCaptureIndex = var13;
			})
		end
		return Cryo_upvr.Dictionary.join(arg1, {
			SelectedCaptureIndex = math.clamp(arg1.SelectedCaptureIndex - 1, 1, #arg2.captures);
		})
	end;
	[require(Parent_2.Actions.CarouselClosed).name] = function(arg1, arg2) -- Line 111
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			IsOpen = false;
			SelectedCaptureIndex = 0;
		})
	end;
	[require(Parent_2.Actions.CarouselIndexSelected).name] = function(arg1, arg2) -- Line 118
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			SelectedCaptureIndex = arg2.index;
		})
	end;
	[require(Parent_2.Actions.CarouselOpened).name] = function(arg1, arg2) -- Line 124
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			IsOpen = true;
			SelectedCaptureIndex = arg2.index;
		})
	end;
	[require(Parent_2.Actions.DeleteWarningModalClosed).name] = function(arg1, arg2) -- Line 131
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			IsDeleteWarningModalOpen = false;
		})
	end;
	[require(Parent_2.Actions.DeleteWarningModalOpened).name] = function(arg1, arg2) -- Line 137
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			IsDeleteWarningModalOpen = true;
		})
	end;
})