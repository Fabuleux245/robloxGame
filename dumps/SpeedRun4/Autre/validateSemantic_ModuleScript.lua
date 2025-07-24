-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:58:17
-- Luau version 6, Types version 3
-- Time taken: 0.010480 seconds

return function(arg1) -- Line 1
	return {
		Typography = arg1.strictInterface({
			Title = arg1.strictInterface({
				Font = arg1.enum(Enum.Font);
				FontSize = arg1.number;
				LineHeight = arg1.number;
				LetterSpacing = arg1.number;
			});
			Header = arg1.strictInterface({
				Font = arg1.enum(Enum.Font);
				FontSize = arg1.number;
				LineHeight = arg1.number;
				LetterSpacing = arg1.number;
			});
			Subheader = arg1.strictInterface({
				Font = arg1.enum(Enum.Font);
				FontSize = arg1.number;
				LineHeight = arg1.number;
				LetterSpacing = arg1.number;
			});
			Body = arg1.strictInterface({
				Font = arg1.enum(Enum.Font);
				FontSize = arg1.number;
				LineHeight = arg1.number;
				LetterSpacing = arg1.number;
			});
			CaptionHeader = arg1.strictInterface({
				Font = arg1.enum(Enum.Font);
				FontSize = arg1.number;
				LineHeight = arg1.number;
				LetterSpacing = arg1.number;
			});
			CaptionBody = arg1.strictInterface({
				Font = arg1.enum(Enum.Font);
				FontSize = arg1.number;
				LineHeight = arg1.number;
				LetterSpacing = arg1.number;
			});
			Footer = arg1.strictInterface({
				Font = arg1.enum(Enum.Font);
				FontSize = arg1.number;
				LineHeight = arg1.number;
				LetterSpacing = arg1.number;
			});
		});
		Color = arg1.strictInterface({
			Background = arg1.strictInterface({
				Default = arg1.strictInterface({
					Color3 = arg1.Color3;
					Transparency = arg1.number;
				});
				Contrast = arg1.strictInterface({
					Color3 = arg1.Color3;
					Transparency = arg1.number;
				});
				Muted = arg1.strictInterface({
					Color3 = arg1.Color3;
					Transparency = arg1.number;
				});
				OnHover = arg1.strictInterface({
					Color3 = arg1.Color3;
					Transparency = arg1.number;
				});
				OnPress = arg1.strictInterface({
					Color3 = arg1.Color3;
					Transparency = arg1.number;
				});
			});
			BackgroundUi = arg1.strictInterface({
				Default = arg1.strictInterface({
					Color3 = arg1.Color3;
					Transparency = arg1.number;
				});
				Contrast = arg1.strictInterface({
					Color3 = arg1.Color3;
					Transparency = arg1.number;
				});
			});
			Ui = arg1.strictInterface({
				Default = arg1.strictInterface({
					Color3 = arg1.Color3;
					Transparency = arg1.number;
				});
				Muted = arg1.strictInterface({
					Color3 = arg1.Color3;
					Transparency = arg1.number;
				});
				Emphasis = arg1.strictInterface({
					Color3 = arg1.Color3;
					Transparency = arg1.number;
				});
			});
			Text = arg1.strictInterface({
				Default = arg1.strictInterface({
					Color3 = arg1.Color3;
					Transparency = arg1.number;
				});
				Muted = arg1.strictInterface({
					Color3 = arg1.Color3;
					Transparency = arg1.number;
				});
				Emphasis = arg1.strictInterface({
					Color3 = arg1.Color3;
					Transparency = arg1.number;
				});
				Link = arg1.strictInterface({
					Color3 = arg1.Color3;
					Transparency = arg1.number;
				});
				Inverse = arg1.strictInterface({
					Color3 = arg1.Color3;
					Transparency = arg1.number;
				});
			});
			Icon = arg1.strictInterface({
				Default = arg1.strictInterface({
					Color3 = arg1.Color3;
					Transparency = arg1.number;
				});
				Emphasis = arg1.strictInterface({
					Color3 = arg1.Color3;
					Transparency = arg1.number;
				});
				OnHover = arg1.strictInterface({
					Color3 = arg1.Color3;
					Transparency = arg1.number;
				});
			});
			Action = arg1.strictInterface({
				Primary = arg1.strictInterface({
					Background = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
					Border = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
					Content = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
				});
				PrimaryBrand = arg1.strictInterface({
					Background = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
					Border = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
					Content = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
				});
				Secondary = arg1.strictInterface({
					Background = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
					Border = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
					Content = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
				});
				Alert = arg1.strictInterface({
					Background = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
					Border = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
					Content = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
				});
				Subtle = arg1.strictInterface({
					Background = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
					Border = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
					Content = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
				});
			});
			State = arg1.strictInterface({
				Standard = arg1.strictInterface({
					Default = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
					Hover = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
					Pressed = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
				});
				Lighten = arg1.strictInterface({
					Default = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
					Hover = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
					Pressed = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
				});
				Inverse = arg1.strictInterface({
					Default = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
					Hover = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
					Pressed = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
				});
				Darken = arg1.strictInterface({
					Default = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
					Hover = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
					Pressed = arg1.strictInterface({
						Color3 = arg1.Color3;
						Transparency = arg1.number;
					});
				});
			});
			Focus = arg1.strictInterface({
				Start = arg1.strictInterface({
					Color3 = arg1.Color3;
					Transparency = arg1.number;
				});
				End = arg1.strictInterface({
					Color3 = arg1.Color3;
					Transparency = arg1.number;
				});
				Gradient = arg1.strictInterface({
					Color3 = arg1.Color3;
					Transparency = arg1.number;
				});
			});
			Common = arg1.strictInterface({
				Divider = arg1.strictInterface({
					Color3 = arg1.Color3;
					Transparency = arg1.number;
				});
				Overlay = arg1.strictInterface({
					Color3 = arg1.Color3;
					Transparency = arg1.number;
				});
				DropShadow = arg1.strictInterface({
					Color3 = arg1.Color3;
					Transparency = arg1.number;
				});
				NavigationBar = arg1.strictInterface({
					Color3 = arg1.Color3;
					Transparency = arg1.number;
				});
				Badge = arg1.strictInterface({
					Color3 = arg1.Color3;
					Transparency = arg1.number;
				});
				BadgeContent = arg1.strictInterface({
					Color3 = arg1.Color3;
					Transparency = arg1.number;
				});
				Placeholder = arg1.strictInterface({
					Color3 = arg1.Color3;
					Transparency = arg1.number;
				});
				Online = arg1.strictInterface({
					Color3 = arg1.Color3;
					Transparency = arg1.number;
				});
				Offline = arg1.strictInterface({
					Color3 = arg1.Color3;
					Transparency = arg1.number;
				});
				Alert = arg1.strictInterface({
					Color3 = arg1.Color3;
					Transparency = arg1.number;
				});
				Success = arg1.strictInterface({
					Color3 = arg1.Color3;
					Transparency = arg1.number;
				});
			});
		});
		Radius = arg1.strictInterface({
			None = arg1.number;
			Small = arg1.number;
			Medium = arg1.number;
			Large = arg1.number;
			XLarge = arg1.number;
			Circle = arg1.number;
		});
		Icon = arg1.strictInterface({
			Size = arg1.strictInterface({
				Small = arg1.number;
				Medium = arg1.number;
				Large = arg1.number;
				XLarge = arg1.number;
				XxLarge = arg1.number;
			});
		});
		Stroke = arg1.strictInterface({
			Input = arg1.number;
			Focus = arg1.number;
		});
		Offset = arg1.strictInterface({
			Focus = arg1.strictInterface({
				Standard = arg1.number;
				Inset = arg1.number;
			});
		});
		Opacity = arg1.strictInterface({
			State = arg1.strictInterface({
				Lighten = arg1.strictInterface({
					Hover = arg1.number;
					Pressed = arg1.number;
				});
				Darken = arg1.strictInterface({
					Hover = arg1.number;
					Pressed = arg1.number;
				});
			});
		});
	}
end