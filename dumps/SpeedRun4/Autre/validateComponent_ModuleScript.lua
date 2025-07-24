-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:58:16
-- Luau version 6, Types version 3
-- Time taken: 0.014592 seconds

return function(arg1) -- Line 1
	return {
		VerticalTile = arg1.strictInterface({
			Base = arg1.strictInterface({
				Container = arg1.strictInterface({
					Background = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
					BorderWidth = arg1.number;
					BorderColor = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
					DropShadow = arg1.strictInterface({
						X = arg1.number;
						Y = arg1.number;
						Blur = arg1.number;
						Color = arg1.strictInterface({
							Color3 = arg1.Color3;
							Transparency = arg1.number;
						});
					});
					BorderRadius = arg1.strictInterface({
						LeadingTop = arg1.number;
						TrailingTop = arg1.number;
						TrailingBottom = arg1.number;
						LeadingBottom = arg1.number;
					});
				});
				ContentTop = arg1.strictInterface({
					Spacing = arg1.strictInterface({
						Top = arg1.number;
						Trailing = arg1.number;
						Bottom = arg1.number;
						Leading = arg1.number;
					});
				});
				ContentBottom = arg1.strictInterface({
					Spacing = arg1.strictInterface({
						Top = arg1.number;
						Trailing = arg1.number;
						Bottom = arg1.number;
						Leading = arg1.number;
					});
				});
			});
		});
		PlayerTileSmall = arg1.strictInterface({
			Base = arg1.strictInterface({
				Container = arg1.strictInterface({
					Gap = arg1.number;
					Spacing = arg1.strictInterface({
						Top = arg1.number;
						Trailing = arg1.number;
						Bottom = arg1.number;
						Leading = arg1.number;
					});
				});
				Image = arg1.strictInterface({
					Size = arg1.number;
					BackgroundColor = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
					BorderColor = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
					BorderRadius = arg1.number;
					BorderWidth = arg1.number;
				});
				Status = arg1.strictInterface({
					Size = arg1.number;
					BackgroundColor = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
					BorderColor = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
					BorderWidth = arg1.number;
				});
				Content = arg1.strictInterface({
					Gap = arg1.number;
					Typography = arg1.strictInterface({
						Font = arg1.enum(Enum.Font);
						FontSize = arg1.number;
						LineHeight = arg1.number;
						LetterSpacing = arg1.number;
					});
					ContentColor = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
				});
				Icon = arg1.strictInterface({
					Size = arg1.number;
				});
				Presence = arg1.strictInterface({
					ContentColor = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
				});
			});
		});
		Facepile = arg1.strictInterface({
			Container = arg1.strictInterface({
				Gap = arg1.number;
			});
			FaceGroup = arg1.strictInterface({
				Gap = arg1.number;
			});
			Face = arg1.strictInterface({
				BackgroundColor = arg1.strictInterface({
					Color3 = arg1.Color3;
					Transparency = arg1.number;
				});
				BorderWidth = arg1.number;
				BorderColor = arg1.strictInterface({
					Color3 = arg1.Color3;
					Transparency = arg1.number;
				});
				BorderRadius = arg1.number;
				Width = arg1.number;
				Height = arg1.number;
			});
			Badge = arg1.strictInterface({
				BackgroundColor = arg1.strictInterface({
					Color3 = arg1.Color3;
					Transparency = arg1.number;
				});
				BorderWidth = arg1.number;
				BorderColor = arg1.strictInterface({
					Color3 = arg1.Color3;
					Transparency = arg1.number;
				});
				BorderRadius = arg1.number;
				Spacing = arg1.number;
				Height = arg1.number;
				MinWidth = arg1.number;
				ContentColor = arg1.strictInterface({
					Color3 = arg1.Color3;
					Transparency = arg1.number;
				});
				Typography = arg1.strictInterface({
					Font = arg1.enum(Enum.Font);
					FontSize = arg1.number;
					LineHeight = arg1.number;
					LetterSpacing = arg1.number;
				});
			});
			Label = arg1.strictInterface({
				ContentColor = arg1.strictInterface({
					Color3 = arg1.Color3;
					Transparency = arg1.number;
				});
				Typography = arg1.strictInterface({
					Font = arg1.enum(Enum.Font);
					FontSize = arg1.number;
					LineHeight = arg1.number;
					LetterSpacing = arg1.number;
				});
			});
		});
		ControllerBar = arg1.strictInterface({
			BackgroundColor = arg1.strictInterface({
				Color3 = arg1.Color3;
				Transparency = arg1.number;
			});
			BorderRadius = arg1.strictInterface({
				LeadingTop = arg1.number;
				TrailingTop = arg1.number;
				TrailingBottom = arg1.number;
				LeadingBottom = arg1.number;
			});
			Spacing = arg1.strictInterface({
				Top = arg1.number;
				Trailing = arg1.number;
				Bottom = arg1.number;
				Leading = arg1.number;
			});
			Gap = arg1.number;
		});
		ControllerBarShortcut = arg1.strictInterface({
			Container = arg1.strictInterface({
				Gap = arg1.number;
				ContentColor = arg1.strictInterface({
					Color3 = arg1.Color3;
					Transparency = arg1.number;
				});
			});
			Icon = arg1.strictInterface({
				Size = arg1.number;
			});
			Label = arg1.strictInterface({
				Typography = arg1.strictInterface({
					Font = arg1.enum(Enum.Font);
					FontSize = arg1.number;
					LineHeight = arg1.number;
					LetterSpacing = arg1.number;
				});
			});
		});
		SelectionCursor = arg1.strictInterface({
			BorderWidth = arg1.number;
			Offset = arg1.number;
			Inset = arg1.number;
			Gradient = arg1.strictInterface({
				Start = arg1.strictInterface({
					Color3 = arg1.Color3;
					Transparency = arg1.number;
				});
				End = arg1.strictInterface({
					Color3 = arg1.Color3;
					Transparency = arg1.number;
				});
			});
		});
		StateLayer = arg1.strictInterface({
			Base = arg1.strictInterface({
				BorderWidth = arg1.number;
			});
			Standard = arg1.strictInterface({
				Initialize = arg1.strictInterface({
					Color = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
				});
				Default = arg1.strictInterface({
					Color = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
				});
				Hover = arg1.strictInterface({
					Color = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
				});
				Pressed = arg1.strictInterface({
					Color = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
				});
				Selected = arg1.strictInterface({
					Color = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
				});
				SelectedPressed = arg1.strictInterface({
					Color = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
				});
				Disabled = arg1.strictInterface({
					Color = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
				});
			});
			Lighten = arg1.strictInterface({
				Initialize = arg1.strictInterface({
					Color = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
				});
				Default = arg1.strictInterface({
					Color = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
				});
				Hover = arg1.strictInterface({
					Color = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
				});
				Pressed = arg1.strictInterface({
					Color = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
				});
				Selected = arg1.strictInterface({
					Color = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
				});
				SelectedPressed = arg1.strictInterface({
					Color = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
				});
				Disabled = arg1.strictInterface({
					Color = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
				});
			});
			Inverse = arg1.strictInterface({
				Initialize = arg1.strictInterface({
					Color = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
				});
				Default = arg1.strictInterface({
					Color = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
				});
				Hover = arg1.strictInterface({
					Color = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
				});
				Pressed = arg1.strictInterface({
					Color = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
				});
				Selected = arg1.strictInterface({
					Color = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
				});
				SelectedPressed = arg1.strictInterface({
					Color = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
				});
				Disabled = arg1.strictInterface({
					Color = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
				});
			});
			Darken = arg1.strictInterface({
				Initialize = arg1.strictInterface({
					Color = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
				});
				Default = arg1.strictInterface({
					Color = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
				});
				Hover = arg1.strictInterface({
					Color = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
				});
				Pressed = arg1.strictInterface({
					Color = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
				});
				Selected = arg1.strictInterface({
					Color = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
				});
				SelectedPressed = arg1.strictInterface({
					Color = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
				});
				Disabled = arg1.strictInterface({
					Color = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
				});
			});
		});
		MenuCell = arg1.strictInterface({
			Base = arg1.strictInterface({
				Container = arg1.strictInterface({
					Height = arg1.number;
					ContentColor = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
					BackgroundColor = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
					BorderColor = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
					BorderRadius = arg1.strictInterface({
						TopLeading = arg1.number;
						TopTrailing = arg1.number;
						BottomTrailing = arg1.number;
						BottomLeading = arg1.number;
					});
					BorderWidth = arg1.number;
					Spacing = arg1.strictInterface({
						Top = arg1.number;
						Trailing = arg1.number;
						Bottom = arg1.number;
						Leading = arg1.number;
					});
				});
				IconFrame = arg1.strictInterface({
					Size = arg1.number;
				});
				TextFrame = arg1.strictInterface({
					Spacing = arg1.strictInterface({
						Top = arg1.number;
						Trailing = arg1.number;
						Bottom = arg1.number;
						Leading = arg1.number;
					});
				});
				Text = arg1.strictInterface({
					Typography = arg1.strictInterface({
						Font = arg1.enum(Enum.Font);
						FontSize = arg1.number;
						LineHeight = arg1.number;
						LetterSpacing = arg1.number;
					});
				});
				CheckFrame = arg1.strictInterface({
					Size = arg1.number;
				});
			});
			Divider = arg1.strictInterface({
				Container = arg1.strictInterface({
					BorderWidth = arg1.number;
				});
			});
			Disabled = arg1.strictInterface({
				Container = arg1.strictInterface({
					ContentColor = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
				});
			});
			HasRoundBottom = arg1.strictInterface({
				Container = arg1.strictInterface({
					BorderRadius = arg1.strictInterface({
						BottomTrailing = arg1.number;
						BottomLeading = arg1.number;
					});
				});
			});
			HasRoundTop = arg1.strictInterface({
				Container = arg1.strictInterface({
					BorderRadius = arg1.strictInterface({
						TopLeading = arg1.number;
						TopTrailing = arg1.number;
					});
				});
			});
		});
		BaseMenu = arg1.strictInterface({
			BorderRadius = arg1.number;
			BackgroundColor = arg1.strictInterface({
				Color3 = arg1.Color3;
				Transparency = arg1.number;
			});
		});
		StatGroup = arg1.strictInterface({
			Gap = arg1.number;
		});
		StatItem = arg1.strictInterface({
			Container = arg1.strictInterface({
				Gap = arg1.number;
				ContentColor = arg1.strictInterface({
					Color3 = arg1.Color3;
					Transparency = arg1.number;
				});
			});
			Icon = arg1.strictInterface({
				Size = arg1.number;
			});
			Label = arg1.strictInterface({
				Typography = arg1.strictInterface({
					Font = arg1.enum(Enum.Font);
					FontSize = arg1.number;
					LineHeight = arg1.number;
					LetterSpacing = arg1.number;
				});
			});
		});
		MediaTile = arg1.strictInterface({
			Container = arg1.strictInterface({
				BorderRadius = arg1.number;
			});
			Icon = arg1.strictInterface({
				Size = arg1.number;
			});
		});
		StatWidget = arg1.strictInterface({
			Container = arg1.strictInterface({
				Gap = arg1.number;
				ContentColor = arg1.strictInterface({
					Color3 = arg1.Color3;
					Transparency = arg1.number;
				});
			});
			Icon = arg1.strictInterface({
				Size = arg1.number;
			});
			DataGroup = arg1.strictInterface({
				Gap = arg1.number;
			});
			Data = arg1.strictInterface({
				Typography = arg1.strictInterface({
					Font = arg1.enum(Enum.Font);
					FontSize = arg1.number;
					LineHeight = arg1.number;
					LetterSpacing = arg1.number;
				});
			});
			Label = arg1.strictInterface({
				Typography = arg1.strictInterface({
					Font = arg1.enum(Enum.Font);
					FontSize = arg1.number;
					LineHeight = arg1.number;
					LetterSpacing = arg1.number;
				});
			});
		});
		RateCount = arg1.strictInterface({
			Container = arg1.strictInterface({
				Spacing = arg1.number;
				Gap = arg1.number;
				BorderRadius = arg1.number;
				BackgroundColor = arg1.strictInterface({
					Color3 = arg1.Color3;
					Transparency = arg1.number;
				});
			});
			ButtonGroup = arg1.strictInterface({
				Gap = arg1.number;
			});
		});
		PlayerCount = arg1.strictInterface({
			Container = arg1.strictInterface({
				Spacing = arg1.number;
				BorderRadius = arg1.number;
				BackgroundColor = arg1.strictInterface({
					Color3 = arg1.Color3;
					Transparency = arg1.number;
				});
			});
		});
		VerticalScrollView = arg1.strictInterface({
			Base = arg1.strictInterface({
				Handle = arg1.strictInterface({
					BackgroundColor = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
					ContentColor = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
					BorderRadius = arg1.number;
				});
				Icon = arg1.strictInterface({
					Size = arg1.number;
				});
				Track = arg1.strictInterface({
					Opacity = arg1.number;
					Spacing = arg1.strictInterface({
						Top = arg1.number;
						Bottom = arg1.number;
					});
				});
			});
			Compact = arg1.strictInterface({
				Handle = arg1.strictInterface({
					Width = arg1.number;
				});
				Track = arg1.strictInterface({
					Width = arg1.number;
				});
			});
			Wide = arg1.strictInterface({
				Handle = arg1.strictInterface({
					Width = arg1.number;
				});
				Track = arg1.strictInterface({
					Width = arg1.number;
				});
			});
			Gamepad = arg1.strictInterface({
				Handle = arg1.strictInterface({
					Width = arg1.number;
				});
				Track = arg1.strictInterface({
					Width = arg1.number;
				});
			});
		});
		TextField = arg1.strictInterface({
			Base = arg1.strictInterface({
				Field = arg1.strictInterface({
					BorderColor = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
					BorderRadius = arg1.number;
					Typography = arg1.strictInterface({
						Font = arg1.enum(Enum.Font);
						FontSize = arg1.number;
						LineHeight = arg1.number;
						LetterSpacing = arg1.number;
					});
					Spacing = arg1.strictInterface({
						Leading = arg1.number;
						Trailing = arg1.number;
					});
					Gap = arg1.number;
					Opacity = arg1.number;
				});
				PlaceholderText = arg1.strictInterface({
					ContentColor = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
				});
				FieldValue = arg1.strictInterface({
					ContentColor = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
				});
				IconLeading = arg1.strictInterface({
					ContentColor = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
					Size = arg1.number;
				});
			});
			Error = arg1.strictInterface({
				Field = arg1.strictInterface({
					BorderColor = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
				});
			});
			Disabled = arg1.strictInterface({
				Field = arg1.strictInterface({
					Opacity = arg1.number;
				});
			});
		});
		InputLabel = arg1.strictInterface({
			Base = arg1.strictInterface({
				Typography = arg1.strictInterface({
					Font = arg1.enum(Enum.Font);
					FontSize = arg1.number;
					LineHeight = arg1.number;
					LetterSpacing = arg1.number;
				});
				ContentColor = arg1.strictInterface({
					Color3 = arg1.Color3;
					Transparency = arg1.number;
				});
				Spacing = arg1.strictInterface({
					Bottom = arg1.number;
				});
				Opacity = arg1.number;
			});
			Disabled = arg1.strictInterface({
				Opacity = arg1.number;
			});
		});
		HelperText = arg1.strictInterface({
			Base = arg1.strictInterface({
				Typography = arg1.strictInterface({
					Font = arg1.enum(Enum.Font);
					FontSize = arg1.number;
					LineHeight = arg1.number;
					LetterSpacing = arg1.number;
				});
				ContentColor = arg1.strictInterface({
					Color3 = arg1.Color3;
					Transparency = arg1.number;
				});
				Padding = arg1.strictInterface({
					Top = arg1.number;
				});
				Opacity = arg1.number;
			});
			Error = arg1.strictInterface({
				ContentColor = arg1.strictInterface({
					Color3 = arg1.Color3;
					Transparency = arg1.number;
				});
			});
		});
	}
end