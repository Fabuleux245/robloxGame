-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:59:23
-- Luau version 6, Types version 3
-- Time taken: 0.002327 seconds

local Parent = script.Parent.Parent
local default_upvr = require(Parent.Parent.PermissionsProtocol).PermissionsProtocol.default
local UserInputService_upvr = game:GetService("UserInputService")
local SaveCapturesToExternalStorage_upvr = require(Parent.Thunks.SaveCapturesToExternalStorage)
local SaveCaptureToExternalStorage_upvr = require(Parent.Thunks.SaveCaptureToExternalStorage)
return function(arg1, arg2, arg3) -- Line 13
	--[[ Upvalues[4]:
		[1]: default_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
		[3]: SaveCapturesToExternalStorage_upvr (readonly)
		[4]: SaveCaptureToExternalStorage_upvr (readonly)
	]]
	default_upvr:hasPermissions({default_upvr.Permissions.WRITE_MEDIA_STORAGE}):andThen(function(arg1_2) -- Line 15
		--[[ Upvalues[7]:
			[1]: default_upvr (copied, readonly)
			[2]: UserInputService_upvr (copied, readonly)
			[3]: arg2 (readonly)
			[4]: arg1 (readonly)
			[5]: arg3 (readonly)
			[6]: SaveCapturesToExternalStorage_upvr (copied, readonly)
			[7]: SaveCaptureToExternalStorage_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var9 = true
		if arg1_2.status ~= default_upvr.Status.AUTHORIZED then
			if UserInputService_upvr:GetPlatform() ~= Enum.Platform.OSX then
				var9 = false
			else
				var9 = true
			end
		end
		local var10
		if UserInputService_upvr:GetPlatform() == var10 and not var9 then
			if not arg2 then
			else
				if arg2 == nil then
					var10 = false
				else
					var10 = true
				end
				assert(var10, "openPermissionModal is not nil")
				arg2()
			end
		end
		if not var9 then
			default_upvr:requestPermissions({default_upvr.Permissions.WRITE_MEDIA_STORAGE}):andThen(function(arg1_3) -- Line 26
				--[[ Upvalues[5]:
					[1]: default_upvr (copied, readonly)
					[2]: arg1 (copied, readonly)
					[3]: arg3 (copied, readonly)
					[4]: SaveCapturesToExternalStorage_upvr (copied, readonly)
					[5]: SaveCaptureToExternalStorage_upvr (copied, readonly)
				]]
				local var13 = true
				if arg1_3.status ~= default_upvr.Status.AUTHORIZED then
					if arg1_3.status ~= default_upvr.Status.UNSUPPORTED then
						var13 = false
					else
						var13 = true
					end
				end
				if var13 then
					if 0 < #arg1 then
						arg3(SaveCapturesToExternalStorage_upvr(arg1))
						return
					end
					arg3(SaveCaptureToExternalStorage_upvr(arg1))
				end
			end):catch(function() -- Line 38
			end)
		else
			var10 = arg1
			var10 = 0
			if var10 < #var10 then
				var10 = SaveCapturesToExternalStorage_upvr(arg1)
				arg3(var10)
				return
			end
			var10 = SaveCaptureToExternalStorage_upvr(arg1)
			arg3(var10)
		end
	end):catch(function() -- Line 49
		--[[ Upvalues[2]:
			[1]: UserInputService_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
		local var16
		if UserInputService_upvr:GetPlatform() ~= var16 then
		else
			if not arg2 then return end
			if arg2 == nil then
				var16 = false
			else
				var16 = true
			end
			assert(var16, "openPermissionModal is not nil")
			arg2()
		end
	end)
	return nil
end