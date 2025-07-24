-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:13:07
-- Luau version 6, Types version 3
-- Time taken: 0.009090 seconds

local InGameAssetReporting = script:FindFirstAncestor("InGameAssetReporting")
local HttpService_upvr = game:GetService("HttpService")
local tbl_50_upvr = {
	Variant = {
		IGARv1 = "IGARv1";
	};
}
local getHumanoidDescription_upvr = require(InGameAssetReporting.Parent.GetHumanoidDescription).getHumanoidDescription
function transformTargetPlayers(arg1, arg2) -- Line 37
	--[[ Upvalues[1]:
		[1]: getHumanoidDescription_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module_5 = {}
	local var15
	if var15 == 0 then
		var15 = 1
	end
	for _, v in ipairs(arg1) do
		local player = v.player
		local count = v.count
		local getHumanoidDescription_upvr_result1, var5_result2 = getHumanoidDescription_upvr(player.UserId)
		table.insert(module_5, {
			userId = player.UserId;
			hitCount = count;
			hitPercentage = count / var15;
			humanoidDescription = getHumanoidDescription_upvr_result1;
			humanoidDescriptionStatus = var5_result2;
		})
	end
	return module_5
end
function serializeTargetPlayersIntoTagValues(arg1) -- Line 59
	--[[ Upvalues[1]:
		[1]: HttpService_upvr (readonly)
	]]
	local module_3 = {}
	for _, v_2 in ipairs(arg1) do
		table.insert(module_3, {
			data = HttpService_upvr:JSONEncode(v_2);
		})
	end
	return module_3
end
local function var33_upvr(arg1) -- Line 69
	local module_4 = {}
	for _, v_3 in ipairs(arg1) do
		module_4[#module_4 + 1] = {v_3.X, v_3.Y}
	end
	return module_4
end
local function _(arg1) -- Line 77
	local extractedAssets = arg1.extractedAssets
	local var49 = true
	if 0 >= #extractedAssets.Image then
		var49 = true
		if 0 >= #extractedAssets.Mesh then
			var49 = true
			if 0 >= #extractedAssets.Model then
				if 0 >= #extractedAssets.Package then
					var49 = false
				else
					var49 = true
				end
			end
		end
	end
	return var49
end
local GetFFlagSelectInSceneUseEngineSignal_upvr = require(InGameAssetReporting.Flags.GetFFlagSelectInSceneUseEngineSignal)
function buildReport(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) -- Line 85
	--[[ Upvalues[4]:
		[1]: tbl_50_upvr (readonly)
		[2]: HttpService_upvr (readonly)
		[3]: var33_upvr (readonly)
		[4]: GetFFlagSelectInSceneUseEngineSignal_upvr (readonly)
	]]
	local module_2 = {}
	local tbl_54 = {
		ENTRY_POINT = {
			valueList = {{
				data = "in-experience";
			}};
		};
		SUBMITTER_USER_ID = {
			valueList = {{
				data = tostring(arg1);
			}};
		};
	}
	local tbl_64 = {}
	local tbl_63 = {}
	local tbl_39 = {}
	tbl_39.data = arg4
	tbl_63[1] = tbl_39
	tbl_64.valueList = tbl_63
	tbl_54.REPORTED_ABUSE_CATEGORY = tbl_64
	local tbl_62 = {}
	local tbl_60 = {}
	local tbl_59 = {}
	tbl_59.data = arg5
	tbl_60[1] = tbl_59
	tbl_62.valueList = tbl_60
	tbl_54.REPORTED_ABUSE_SURFACE = tbl_62
	local tbl_58 = {}
	local tbl_57 = {}
	local tbl_26 = {}
	local tostring_result1 = tostring(game.PlaceId)
	tbl_26.data = tostring_result1
	tbl_57[1] = tbl_26
	tbl_58.valueList = tbl_57
	tbl_54.PLACE_ID = tbl_58
	local tbl_68 = {}
	local tbl_55 = {}
	local tbl_53 = {}
	tbl_53.data = arg6
	tbl_55[1] = tbl_53
	tbl_68.valueList = tbl_55
	tbl_54.REPORTER_COMMENT = tbl_68
	local tbl_52 = {}
	local tbl_27 = {}
	local tbl_51 = {}
	if arg5 == "username" then
		tostring_result1 = "user_profile"
	else
		tostring_result1 = "multi"
	end
	tbl_51.data = tostring_result1
	tbl_27[1] = tbl_51
	tbl_52.valueList = tbl_27
	tbl_54.REPORTED_ABUSE_VECTOR = tbl_52
	tbl_54.VARIANT = {
		valueList = {{
			data = tbl_50_upvr.Variant.IGARv1;
		}};
	}
	tbl_54.IGAR_REPORT_TARGET_ASSETS = {
		valueList = {{
			data = HttpService_upvr:JSONEncode(arg3.extractedAssets);
		}};
	}
	tbl_54.IGAR_EXTRACTION_STATS = {
		valueList = {{
			data = HttpService_upvr:JSONEncode(arg3.stats);
		}};
	}
	tbl_54.IGAR_ANNOTATION_COORDINATES = {
		valueList = {{
			data = HttpService_upvr:JSONEncode(var33_upvr(arg7));
		}};
	}
	module_2.tags = tbl_54
	if GetFFlagSelectInSceneUseEngineSignal_upvr() and arg8 then
		local extractedAssets_4 = arg8.extractedAssets
		local var192 = true
		if 0 >= #extractedAssets_4.Image then
			var192 = true
			if 0 >= #extractedAssets_4.Mesh then
				var192 = true
				if 0 >= #extractedAssets_4.Model then
					if 0 >= #extractedAssets_4.Package then
						var192 = false
					else
						var192 = true
					end
				end
			end
		end
		if var192 then
			module_2.tags.IGAR_REPORT_TARGET_GUI_ASSETS = {
				valueList = {{
					data = HttpService_upvr:JSONEncode(arg8.extractedAssets);
				}};
			}
			module_2.tags.IGAR_GUI_EXTRACTION_STATS = {
				valueList = {{
					data = HttpService_upvr:JSONEncode(arg8.stats);
				}};
			}
		end
	end
	if 0 < #arg3.extractedPlayers then
		local transformTargetPlayers_result1_3 = transformTargetPlayers(arg3.extractedPlayers, arg3.stats.raycastCompletedCount)
		module_2.tags.IGAR_REPORT_TARGET_PLAYERS = {
			valueList = serializeTargetPlayersIntoTagValues(transformTargetPlayers_result1_3);
		}
		if arg5 == "username" then
			module_2.tags.REPORT_TARGET_USER_ID = {
				valueList = {{
					data = tostring(transformTargetPlayers_result1_3[1].userId);
				}};
			}
		end
	end
	if arg2 then
		local tbl_38 = {}
		local tbl_32 = {}
		local tbl_28 = {}
		tbl_28.data = arg2
		tbl_32[1] = tbl_28
		tbl_38.valueList = tbl_32
		module_2.tags.SCREENSHOT_ID = tbl_38
	end
	if arg5 == "username" and #arg3.extractedPlayers == 0 then
		return nil
	end
	return HttpService_upvr:JSONEncode(module_2)
end
return buildReport