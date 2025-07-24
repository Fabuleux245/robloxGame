-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:13:02
-- Luau version 6, Types version 3
-- Time taken: 0.001692 seconds

local Parent = script:FindFirstAncestor("InGameAssetReporting").Parent
local React_upvr = require(Parent.React)
local DefaultDualDropdownDialog_upvr = require(Parent.GenericAbuseReporting).UXFlows.DefaultDualDropdownDialog
return function(arg1) -- Line 16, Named "InGameAssetReportSubmitDialog"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: DefaultDualDropdownDialog_upvr (readonly)
	]]
	return React_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0);
		Position = UDim2.fromScale(0.5, 0.5);
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundTransparency = 1;
		ZIndex = 10;
	}, {
		SubmitReportDialog = React_upvr.createElement(DefaultDualDropdownDialog_upvr, {
			analyticsContext = "Test";
			localizationKeys = {
				formTitle = "Feature.ReportAbuse.Title.SelectInSceneFinishYourReport";
				formSubmit = "Feature.ReportAbuse.Action.Submit";
			};
			onSubmitProps = {
				hasNextSteps = true;
				onProceedToNextStep = arg1.onSubmit;
			};
			onCloseProps = {
				hasPreviousSteps = false;
				onAbandon = arg1.onBack;
			};
			reportProblems = {{
				localizationKey = "Feature.ReportAbuse.Problem.Bullying";
				value = "bullying";
				descriptionLocalizationKey = "Feature.ReportAbuse.ProblemDescription.Bullying";
			}, {
				localizationKey = "Feature.ReportAbuse.Problem.Cheating";
				value = "exploiting";
				descriptionLocalizationKey = "Feature.ReportAbuse.ProblemDescription.Cheating";
			}, {
				localizationKey = "Feature.ReportAbuse.Problem.Dating";
				value = "dating";
				descriptionLocalizationKey = "Feature.ReportAbuse.ProblemDescription.Dating";
			}, {
				localizationKey = "Feature.ReportAbuse.Problem.Hate";
				value = "hate";
				descriptionLocalizationKey = "Feature.ReportAbuse.ProblemDescription.Hate";
			}, {
				localizationKey = "Feature.ReportAbuse.Problem.Links";
				value = "offsite links";
				descriptionLocalizationKey = "Feature.ReportAbuse.ProblemDescription.Links";
			}, {
				localizationKey = "Feature.ReportAbuse.Problem.Personal";
				value = "personal question";
				descriptionLocalizationKey = "Feature.ReportAbuse.ProblemDescription.Personal";
			}, {
				localizationKey = "Feature.ReportAbuse.Problem.Scamming";
				value = "scamming";
				descriptionLocalizationKey = "Feature.ReportAbuse.ProblemDescription.Scamming";
			}, {
				localizationKey = "Feature.ReportAbuse.Problem.Swearing";
				value = "swearing";
				descriptionLocalizationKey = "Feature.ReportAbuse.ProblemDescription.Swearing";
			}, {
				localizationKey = "Feature.ReportAbuse.Problem.Violence";
				value = "violence";
				descriptionLocalizationKey = "Feature.ReportAbuse.ProblemDescription.Violence";
			}};
			reportSurfaces = {{
				localizationKey = "Feature.ReportAbuse.ProblemSurface.Avatar";
				value = "avatar";
			}, {
				localizationKey = "Feature.ReportAbuse.ProblemSurface.DrawingOrCreation";
				value = "drawing";
			}, {
				localizationKey = "Feature.ReportAbuse.ProblemSurface.Experience";
				value = "experience";
			}, {
				localizationKey = "Feature.ReportAbuse.ProblemSurface.ItemOrAsset";
				value = "item";
			}, {
				localizationKey = "Feature.ReportAbuse.ProblemSurface.Movement";
				value = "movement";
			}, {
				localizationKey = "Feature.ReportAbuse.ProblemSurface.MusicOrSoundEffect";
				value = "music";
			}, {
				localizationKey = "Feature.ReportAbuse.ProblemSurface.TextChat";
				value = "text";
			}, {
				localizationKey = "Feature.ReportAbuse.ProblemSurface.Username";
				value = "username";
			}, {
				localizationKey = "Feature.ReportAbuse.ProblemSurface.VoiceChat";
				value = "voice";
			}};
		});
	})
end