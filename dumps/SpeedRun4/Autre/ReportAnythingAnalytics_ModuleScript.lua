-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:54
-- Luau version 6, Types version 3
-- Time taken: 0.002296 seconds

local EventIngestService_upvr = game:GetService("EventIngestService")
local CorePackages = game:GetService("CorePackages")
local EventIngest_upvr = require(CorePackages.Workspace.Packages.Analytics).AnalyticsReporters.EventIngest
local tbl_upvr = {
	EventType = {
		AvatarsIdentified = "ReportAnythingAvatarsIdentified";
	};
	Context = {
		LegacyMenu = "ReportAbuseLegacyMenu";
	};
}
local function _() -- Line 33
	return {
		previewBackCount = 0;
		previewAttachCount = 0;
		retakeCount = 0;
		retakeAbandon = false;
		highlightSceneCount = 0;
		annotationBackCount = 0;
		annotationPlaceCount = 0;
		annotationUndoCount = 0;
		annotationRedoCount = 0;
		annotationNext = false;
	}
end
local module_upvw = {
	previewBackCount = 0;
	previewAttachCount = 0;
	retakeCount = 0;
	retakeAbandon = false;
	highlightSceneCount = 0;
	annotationBackCount = 0;
	annotationPlaceCount = 0;
	annotationUndoCount = 0;
	annotationRedoCount = 0;
	annotationNext = false;
}
local var10_upvw
local function _() -- Line 51
	--[[ Upvalues[3]:
		[1]: var10_upvw (read and write)
		[2]: EventIngest_upvr (readonly)
		[3]: EventIngestService_upvr (readonly)
	]]
	if not var10_upvw then
		var10_upvw = EventIngest_upvr.new(EventIngestService_upvr)
	end
	return var10_upvw
end
local module = {
	incrementPreviewBack = function() -- Line 59, Named "incrementPreviewBack"
		--[[ Upvalues[1]:
			[1]: module_upvw (read and write)
		]]
		local var13 = module_upvw
		var13.previewBackCount += 1
	end;
	incrementPreviewAttach = function() -- Line 62, Named "incrementPreviewAttach"
		--[[ Upvalues[1]:
			[1]: module_upvw (read and write)
		]]
		local var14 = module_upvw
		var14.previewAttachCount += 1
	end;
	incrementRetake = function() -- Line 65, Named "incrementRetake"
		--[[ Upvalues[1]:
			[1]: module_upvw (read and write)
		]]
		local var15 = module_upvw
		var15.retakeCount += 1
	end;
	setRetakeAbandon = function() -- Line 68, Named "setRetakeAbandon"
		--[[ Upvalues[1]:
			[1]: module_upvw (read and write)
		]]
		module_upvw.retakeAbandon = true
	end;
	incrementHighlightScene = function() -- Line 71, Named "incrementHighlightScene"
		--[[ Upvalues[1]:
			[1]: module_upvw (read and write)
		]]
		local var16 = module_upvw
		var16.highlightSceneCount += 1
	end;
	incrementAnnotationBack = function() -- Line 74, Named "incrementAnnotationBack"
		--[[ Upvalues[1]:
			[1]: module_upvw (read and write)
		]]
		local var17 = module_upvw
		var17.annotationBackCount += 1
	end;
	incrementAnnotationPlace = function() -- Line 77, Named "incrementAnnotationPlace"
		--[[ Upvalues[1]:
			[1]: module_upvw (read and write)
		]]
		local var18 = module_upvw
		var18.annotationPlaceCount += 1
	end;
	incrementAnnotationUndo = function() -- Line 80, Named "incrementAnnotationUndo"
		--[[ Upvalues[1]:
			[1]: module_upvw (read and write)
		]]
		local var19 = module_upvw
		var19.annotationUndoCount += 1
	end;
	incrementAnnotationRedo = function() -- Line 83, Named "incrementAnnotationRedo"
		--[[ Upvalues[1]:
			[1]: module_upvw (read and write)
		]]
		local var20 = module_upvw
		var20.annotationRedoCount += 1
	end;
	setAnnotationNext = function() -- Line 86, Named "setAnnotationNext"
		--[[ Upvalues[1]:
			[1]: module_upvw (read and write)
		]]
		module_upvw.annotationNext = true
	end;
	getAccumulatedParameters = function() -- Line 90, Named "getAccumulatedParameters"
		--[[ Upvalues[1]:
			[1]: module_upvw (read and write)
		]]
		return module_upvw
	end;
}
local Cryo_upvr = require(CorePackages.Packages.Cryo)
function module.emitAvatarsIdentifiedStats(arg1) -- Line 93
	--[[ Upvalues[5]:
		[1]: Cryo_upvr (readonly)
		[2]: var10_upvw (read and write)
		[3]: EventIngest_upvr (readonly)
		[4]: EventIngestService_upvr (readonly)
		[5]: tbl_upvr (readonly)
	]]
	if not var10_upvw then
		var10_upvw = EventIngest_upvr.new(EventIngestService_upvr)
	end
	var10_upvw:sendEventDeferred(tbl_upvr.Context.LegacyMenu, tbl_upvr.EventType.AvatarsIdentified, Cryo_upvr.Dictionary.join(arg1, {
		duration = arg1.duration * 1000000;
	}))
end
function module.clear() -- Line 103
	--[[ Upvalues[1]:
		[1]: module_upvw (read and write)
	]]
	module_upvw = {
		previewBackCount = 0;
		previewAttachCount = 0;
		retakeCount = 0;
		retakeAbandon = false;
		highlightSceneCount = 0;
		annotationBackCount = 0;
		annotationPlaceCount = 0;
		annotationUndoCount = 0;
		annotationRedoCount = 0;
		annotationNext = false;
	}
end
return module