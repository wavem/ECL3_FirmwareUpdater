object FormMain: TFormMain
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cairo_Line3_FirmwareUpdater'
  ClientHeight = 433
  ClientWidth = 928
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    000000000000000000000000000080000788888888888888888888700008FF70
    00788888888888888888870007FFFFF80000000000000000000000008FFFFFFF
    F70007FFFFFFFFFFFF70007FFFFFFFFFFF80000777777777700008FFFFFFFFFF
    FF70000000000000000007FFFFFFFFFFF0000000000000000000000FFFFFFFFF
    700000000000000000000007FFFFFFF80000000000000000000000008FFFFFF7
    00008F800000000008F800007FFFFFF70000FFF7000000007FFF00007FFFFFF7
    0000FFF0000000000FFF00007FFFFFF70000070000000000007000007FFFFFF7
    0000000000000000000000007FFFFFF70000000000000000000000007FFFFFF7
    0000000000000000000000007FFFFFF70008FFFFFFFFFFFFFFFF80007FFFFFF7
    008FFFFFFFFFFFFFFFFFF8007FFFFFF700FFFFFFFFFFFFFFFFFFFF007FFFFFF7
    00FFFFFFFFFFFFFFFFFFFF007FFFFFF700FFFFFFFFFFFFFFFFFFFF007FFFFFF7
    00FFFFFFFFFFFFFFFFFFFF007FFFFFF700FFFFFFFFFFFFFFFFFFFF007FFFFFF7
    007FFFFFFFFFFFFFFFFFF7007FFFFFF7000788FFFFFFFFFFFF8870007FFFFFF7
    0000000000000000000000007FFFFFF80000000000000000000000008FFFFFFF
    00000000FFFFFFFF00000000FFFFFFFF80000007FFFFFFFF70000008FFFFFFFF
    FF70000000000000000007FFFFFFFFFFFFF870000000000000078FFFFFFF0000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000}
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object RibbonMenu: TdxRibbon
    Left = 0
    Top = 0
    Width = 928
    Height = 124
    Cursor = crHandPoint
    BarManager = dxBarMgr
    ColorSchemeName = 'DevExpressDarkStyle'
    MinimizeOnTabDblClick = False
    PopupMenuItems = []
    Contexts = <>
    TabOrder = 0
    TabStop = False
    object RibbonMenuTab_01_Menu: TdxRibbonTab
      Active = True
      Caption = 'Menu'
      Groups = <
        item
          ToolbarName = 'dxBarMgrBar1'
        end
        item
          ToolbarName = 'dxBarMgrBar2'
        end>
      Index = 0
    end
  end
  object __pnBase_Main: TPanel
    Left = 0
    Top = 124
    Width = 928
    Height = 309
    Align = alClient
    BevelOuter = bvNone
    Caption = '__pnBase_Main'
    Color = clBlack
    ParentBackground = False
    TabOrder = 5
    object Notebook_Main: TNotebook
      Left = 0
      Top = 0
      Width = 928
      Height = 309
      Align = alClient
      TabOrder = 0
      object TPage
        Left = 0
        Top = 0
        Caption = 'Default'
        object _pnBase_01_Update: TPanel
          Left = 0
          Top = 0
          Width = 928
          Height = 309
          Align = alClient
          BevelOuter = bvNone
          Color = cl3DDkShadow
          ParentBackground = False
          TabOrder = 0
          object grid: TAdvStringGrid
            Left = 29
            Top = 24
            Width = 874
            Height = 256
            Cursor = crDefault
            TabStop = False
            ColCount = 11
            Ctl3D = True
            DefaultRowHeight = 28
            DoubleBuffered = True
            DrawingStyle = gdsClassic
            FixedCols = 0
            RowCount = 9
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
            ParentCtl3D = False
            ParentDoubleBuffered = False
            ParentFont = False
            ScrollBars = ssNone
            TabOrder = 0
            HoverRowCells = [hcNormal, hcSelected]
            ActiveCellFont.Charset = DEFAULT_CHARSET
            ActiveCellFont.Color = clWindowText
            ActiveCellFont.Height = -11
            ActiveCellFont.Name = 'Tahoma'
            ActiveCellFont.Style = [fsBold]
            BorderColor = cl3DDkShadow
            ColumnHeaders.Strings = (
              'Idx'
              'Status'
              'Car'
              'Device'
              'Num'
              'IP'
              'Version'
              'Date'
              'FTP Download'
              'Flash Download'
              'Result')
            ControlLook.FixedGradientHoverFrom = clGray
            ControlLook.FixedGradientHoverTo = clWhite
            ControlLook.FixedGradientDownFrom = clGray
            ControlLook.FixedGradientDownTo = clSilver
            ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
            ControlLook.DropDownHeader.Font.Color = clWindowText
            ControlLook.DropDownHeader.Font.Height = -11
            ControlLook.DropDownHeader.Font.Name = 'Tahoma'
            ControlLook.DropDownHeader.Font.Style = []
            ControlLook.DropDownHeader.Visible = True
            ControlLook.DropDownHeader.Buttons = <>
            ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
            ControlLook.DropDownFooter.Font.Color = clWindowText
            ControlLook.DropDownFooter.Font.Height = -11
            ControlLook.DropDownFooter.Font.Name = 'Tahoma'
            ControlLook.DropDownFooter.Font.Style = []
            ControlLook.DropDownFooter.Visible = True
            ControlLook.DropDownFooter.Buttons = <>
            DefaultAlignment = taCenter
            EnableWheel = False
            Filter = <>
            FilterDropDown.Font.Charset = DEFAULT_CHARSET
            FilterDropDown.Font.Color = clWindowText
            FilterDropDown.Font.Height = -11
            FilterDropDown.Font.Name = 'Tahoma'
            FilterDropDown.Font.Style = []
            FilterDropDown.TextChecked = 'Checked'
            FilterDropDown.TextUnChecked = 'Unchecked'
            FilterDropDownClear = '(All)'
            FilterEdit.TypeNames.Strings = (
              'Starts with'
              'Ends with'
              'Contains'
              'Not contains'
              'Equal'
              'Not equal'
              'Larger than'
              'Smaller than'
              'Clear')
            FixedColWidth = 32
            FixedRowHeight = 28
            FixedFont.Charset = DEFAULT_CHARSET
            FixedFont.Color = clWindowText
            FixedFont.Height = -11
            FixedFont.Name = 'Tahoma'
            FixedFont.Style = [fsBold]
            FloatFormat = '%.2f'
            HoverButtons.Buttons = <>
            HoverButtons.Position = hbLeftFromColumnLeft
            HTMLSettings.ImageFolder = 'images'
            HTMLSettings.ImageBaseName = 'img'
            IntelliZoom = False
            MouseActions.AutoSizeColOnDblClick = False
            PrintSettings.DateFormat = 'dd/mm/yyyy'
            PrintSettings.Font.Charset = DEFAULT_CHARSET
            PrintSettings.Font.Color = clWindowText
            PrintSettings.Font.Height = -11
            PrintSettings.Font.Name = 'Tahoma'
            PrintSettings.Font.Style = []
            PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
            PrintSettings.FixedFont.Color = clWindowText
            PrintSettings.FixedFont.Height = -11
            PrintSettings.FixedFont.Name = 'Tahoma'
            PrintSettings.FixedFont.Style = []
            PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
            PrintSettings.HeaderFont.Color = clWindowText
            PrintSettings.HeaderFont.Height = -11
            PrintSettings.HeaderFont.Name = 'Tahoma'
            PrintSettings.HeaderFont.Style = []
            PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
            PrintSettings.FooterFont.Color = clWindowText
            PrintSettings.FooterFont.Height = -11
            PrintSettings.FooterFont.Name = 'Tahoma'
            PrintSettings.FooterFont.Style = []
            PrintSettings.PageNumSep = '/'
            SearchFooter.FindNextCaption = 'Find &next'
            SearchFooter.FindPrevCaption = 'Find &previous'
            SearchFooter.Font.Charset = DEFAULT_CHARSET
            SearchFooter.Font.Color = clWindowText
            SearchFooter.Font.Height = -11
            SearchFooter.Font.Name = 'Tahoma'
            SearchFooter.Font.Style = []
            SearchFooter.HighLightCaption = 'Highlight'
            SearchFooter.HintClose = 'Close'
            SearchFooter.HintFindNext = 'Find next occurrence'
            SearchFooter.HintFindPrev = 'Find previous occurrence'
            SearchFooter.HintHighlight = 'Highlight occurrences'
            SearchFooter.MatchCaseCaption = 'Match case'
            ShowSelection = False
            SortSettings.DefaultFormat = ssAutomatic
            Version = '7.8.0.1'
            ColWidths = (
              32
              101
              54
              54
              54
              110
              70
              100
              110
              110
              75)
          end
        end
      end
      object TPage
        Left = 0
        Top = 0
        HelpContext = 1
        Caption = 'Setting'
        object _pnBase_02_Setting: TPanel
          Left = 0
          Top = 0
          Width = 928
          Height = 309
          Align = alClient
          BevelOuter = bvNone
          Color = cl3DDkShadow
          ParentBackground = False
          TabOrder = 0
          object lb_Setting_1: TLabel
            Left = 32
            Top = 29
            Width = 123
            Height = 18
            Caption = 'Update File Path'
            Color = clYellow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clSilver
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object lb_Setting_2: TLabel
            Left = 80
            Top = 77
            Width = 75
            Height = 18
            Caption = 'IP Setting'
            Color = clYellow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clSilver
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object btn_Apply_PollingPeriod: TAdvSmoothButton
            Left = 727
            Top = 166
            Width = 120
            Height = 35
            Cursor = crHandPoint
            Hint = 'TEST'
            Appearance.GlowPercentage = 35
            Appearance.Font.Charset = DEFAULT_CHARSET
            Appearance.Font.Color = clAqua
            Appearance.Font.Height = -15
            Appearance.Font.Name = 'Tahoma'
            Appearance.Font.Style = [fsBold]
            Appearance.Rounding = 12
            Status.Caption = '0'
            Status.Appearance.Fill.Color = clRed
            Status.Appearance.Fill.ColorMirror = clNone
            Status.Appearance.Fill.ColorMirrorTo = clNone
            Status.Appearance.Fill.GradientType = gtSolid
            Status.Appearance.Fill.GradientMirrorType = gtSolid
            Status.Appearance.Fill.BorderColor = clGray
            Status.Appearance.Fill.Rounding = 8
            Status.Appearance.Fill.ShadowOffset = 0
            Status.Appearance.Fill.Glow = gmNone
            Status.Appearance.Font.Charset = DEFAULT_CHARSET
            Status.Appearance.Font.Color = clWhite
            Status.Appearance.Font.Height = -11
            Status.Appearance.Font.Name = 'Tahoma'
            Status.Appearance.Font.Style = []
            Bevel = False
            BevelColor = clLime
            Caption = 'APPLY'
            Color = clNavy
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            Visible = False
            ShowFocus = False
            Version = '2.1.0.0'
            OnClick = btn_Apply_PollingPeriodClick
            TMSStyle = 0
          end
          object cb_SendPeriod: TAdvSmoothComboBox
            Left = 707
            Top = 230
            Width = 140
            Height = 35
            Cursor = crHandPoint
            Fill.Color = clNavy
            Fill.ColorTo = clNavy
            Fill.ColorMirror = clNavy
            Fill.ColorMirrorTo = clNavy
            Fill.GradientType = gtSolid
            Fill.GradientMirrorType = gtSolid
            Fill.BorderColor = clNavy
            Fill.Rounding = 0
            Fill.ShadowOffset = 0
            Fill.Glow = gmNone
            Items = <
              item
                Caption = '1000 ms'
                CaptionAlignment = taCenter
                CaptionFont.Charset = DEFAULT_CHARSET
                CaptionFont.Color = clAqua
                CaptionFont.Height = -15
                CaptionFont.Name = 'Tahoma'
                CaptionFont.Style = [fsBold]
                CaptionSelectedFont.Charset = DEFAULT_CHARSET
                CaptionSelectedFont.Color = clBlack
                CaptionSelectedFont.Height = -15
                CaptionSelectedFont.Name = 'Tahoma'
                CaptionSelectedFont.Style = [fsBold]
                InfoFont.Charset = DEFAULT_CHARSET
                InfoFont.Color = clWindowText
                InfoFont.Height = -11
                InfoFont.Name = 'Tahoma'
                InfoFont.Style = []
                InfoSelectedFont.Charset = DEFAULT_CHARSET
                InfoSelectedFont.Color = clWindowText
                InfoSelectedFont.Height = -11
                InfoSelectedFont.Name = 'Tahoma'
                InfoSelectedFont.Style = []
                NotesFont.Charset = DEFAULT_CHARSET
                NotesFont.Color = clWindowText
                NotesFont.Height = -11
                NotesFont.Name = 'Tahoma'
                NotesFont.Style = []
                NotesSelectedFont.Charset = DEFAULT_CHARSET
                NotesSelectedFont.Color = clWindowText
                NotesSelectedFont.Height = -11
                NotesSelectedFont.Name = 'Tahoma'
                NotesSelectedFont.Style = []
                ProgressMaximum = 100.000000000000000000
                ButtonBevel = False
              end
              item
                Caption = '2000 ms'
                CaptionAlignment = taCenter
                CaptionFont.Charset = DEFAULT_CHARSET
                CaptionFont.Color = clAqua
                CaptionFont.Height = -15
                CaptionFont.Name = 'Tahoma'
                CaptionFont.Style = [fsBold]
                CaptionSelectedFont.Charset = DEFAULT_CHARSET
                CaptionSelectedFont.Color = clWindowText
                CaptionSelectedFont.Height = -15
                CaptionSelectedFont.Name = 'Tahoma'
                CaptionSelectedFont.Style = [fsBold]
                InfoFont.Charset = DEFAULT_CHARSET
                InfoFont.Color = clWindowText
                InfoFont.Height = -11
                InfoFont.Name = 'Tahoma'
                InfoFont.Style = []
                InfoSelectedFont.Charset = DEFAULT_CHARSET
                InfoSelectedFont.Color = clWindowText
                InfoSelectedFont.Height = -11
                InfoSelectedFont.Name = 'Tahoma'
                InfoSelectedFont.Style = []
                NotesFont.Charset = DEFAULT_CHARSET
                NotesFont.Color = clWindowText
                NotesFont.Height = -11
                NotesFont.Name = 'Tahoma'
                NotesFont.Style = []
                NotesSelectedFont.Charset = DEFAULT_CHARSET
                NotesSelectedFont.Color = clWindowText
                NotesSelectedFont.Height = -11
                NotesSelectedFont.Name = 'Tahoma'
                NotesSelectedFont.Style = []
                ProgressMaximum = 100.000000000000000000
                ButtonBevel = False
              end
              item
                Caption = '500 ms'
                CaptionAlignment = taCenter
                CaptionFont.Charset = DEFAULT_CHARSET
                CaptionFont.Color = clAqua
                CaptionFont.Height = -15
                CaptionFont.Name = 'Tahoma'
                CaptionFont.Style = [fsBold]
                CaptionSelectedFont.Charset = DEFAULT_CHARSET
                CaptionSelectedFont.Color = clWindowText
                CaptionSelectedFont.Height = -15
                CaptionSelectedFont.Name = 'Tahoma'
                CaptionSelectedFont.Style = [fsBold]
                InfoFont.Charset = DEFAULT_CHARSET
                InfoFont.Color = clWindowText
                InfoFont.Height = -11
                InfoFont.Name = 'Tahoma'
                InfoFont.Style = []
                InfoSelectedFont.Charset = DEFAULT_CHARSET
                InfoSelectedFont.Color = clWindowText
                InfoSelectedFont.Height = -11
                InfoSelectedFont.Name = 'Tahoma'
                InfoSelectedFont.Style = []
                NotesFont.Charset = DEFAULT_CHARSET
                NotesFont.Color = clWindowText
                NotesFont.Height = -11
                NotesFont.Name = 'Tahoma'
                NotesFont.Style = []
                NotesSelectedFont.Charset = DEFAULT_CHARSET
                NotesSelectedFont.Color = clWindowText
                NotesSelectedFont.Height = -11
                NotesSelectedFont.Name = 'Tahoma'
                NotesSelectedFont.Style = []
                ProgressMaximum = 100.000000000000000000
                ButtonBevel = False
              end
              item
                Caption = '250 ms'
                CaptionAlignment = taCenter
                CaptionFont.Charset = DEFAULT_CHARSET
                CaptionFont.Color = clAqua
                CaptionFont.Height = -15
                CaptionFont.Name = 'Tahoma'
                CaptionFont.Style = [fsBold]
                CaptionSelectedFont.Charset = DEFAULT_CHARSET
                CaptionSelectedFont.Color = clWindowText
                CaptionSelectedFont.Height = -15
                CaptionSelectedFont.Name = 'Tahoma'
                CaptionSelectedFont.Style = [fsBold]
                InfoFont.Charset = DEFAULT_CHARSET
                InfoFont.Color = clWindowText
                InfoFont.Height = -11
                InfoFont.Name = 'Tahoma'
                InfoFont.Style = []
                InfoSelectedFont.Charset = DEFAULT_CHARSET
                InfoSelectedFont.Color = clWindowText
                InfoSelectedFont.Height = -11
                InfoSelectedFont.Name = 'Tahoma'
                InfoSelectedFont.Style = []
                NotesFont.Charset = DEFAULT_CHARSET
                NotesFont.Color = clWindowText
                NotesFont.Height = -11
                NotesFont.Name = 'Tahoma'
                NotesFont.Style = []
                NotesSelectedFont.Charset = DEFAULT_CHARSET
                NotesSelectedFont.Color = clWindowText
                NotesSelectedFont.Height = -11
                NotesSelectedFont.Name = 'Tahoma'
                NotesSelectedFont.Style = []
                ProgressMaximum = 100.000000000000000000
                ButtonBevel = False
              end>
            ItemAppearance.FillAlternate.Color = 16773091
            ItemAppearance.FillAlternate.ColorTo = 16768452
            ItemAppearance.FillAlternate.ColorMirror = 16765357
            ItemAppearance.FillAlternate.ColorMirrorTo = 16767936
            ItemAppearance.FillAlternate.GradientType = gtVertical
            ItemAppearance.FillAlternate.GradientMirrorType = gtVertical
            ItemAppearance.FillAlternate.BorderColor = 16765357
            ItemAppearance.FillAlternate.Rounding = 12
            ItemAppearance.FillAlternate.ShadowOffset = 0
            ItemAppearance.FillAlternate.Glow = gmNone
            ItemAppearance.Fill.Color = clNavy
            ItemAppearance.Fill.ColorTo = clNavy
            ItemAppearance.Fill.ColorMirror = clNavy
            ItemAppearance.Fill.ColorMirrorTo = clNavy
            ItemAppearance.Fill.GradientType = gtVertical
            ItemAppearance.Fill.GradientMirrorType = gtVertical
            ItemAppearance.Fill.BackGroundPictureAspectRatio = True
            ItemAppearance.Fill.BorderColor = clNavy
            ItemAppearance.Fill.Rounding = 0
            ItemAppearance.Fill.ShadowOffset = 0
            ItemAppearance.Fill.Glow = gmNone
            ItemAppearance.FillSelected.Color = 11196927
            ItemAppearance.FillSelected.ColorTo = 7257087
            ItemAppearance.FillSelected.ColorMirror = 4370174
            ItemAppearance.FillSelected.ColorMirrorTo = 8053246
            ItemAppearance.FillSelected.GradientType = gtVertical
            ItemAppearance.FillSelected.GradientMirrorType = gtVertical
            ItemAppearance.FillSelected.BorderColor = 16765357
            ItemAppearance.FillSelected.Rounding = 0
            ItemAppearance.FillSelected.ShadowOffset = 0
            ItemAppearance.FillSelected.Glow = gmNone
            ItemAppearance.FillSelectedAlternate.Color = 11196927
            ItemAppearance.FillSelectedAlternate.ColorTo = 7257087
            ItemAppearance.FillSelectedAlternate.ColorMirror = 4370174
            ItemAppearance.FillSelectedAlternate.ColorMirrorTo = 8053246
            ItemAppearance.FillSelectedAlternate.GradientType = gtVertical
            ItemAppearance.FillSelectedAlternate.GradientMirrorType = gtVertical
            ItemAppearance.FillSelectedAlternate.BorderColor = 16765357
            ItemAppearance.FillSelectedAlternate.Rounding = 12
            ItemAppearance.FillSelectedAlternate.ShadowOffset = 0
            ItemAppearance.FillSelectedAlternate.Glow = gmNone
            ItemAppearance.FillDisabled.Color = 15921906
            ItemAppearance.FillDisabled.ColorTo = 11974326
            ItemAppearance.FillDisabled.ColorMirror = 11974326
            ItemAppearance.FillDisabled.ColorMirrorTo = 15921906
            ItemAppearance.FillDisabled.GradientType = gtVertical
            ItemAppearance.FillDisabled.GradientMirrorType = gtVertical
            ItemAppearance.FillDisabled.BorderColor = 16765357
            ItemAppearance.FillDisabled.Rounding = 12
            ItemAppearance.FillDisabled.ShadowOffset = 0
            ItemAppearance.FillDisabled.Glow = gmNone
            ItemAppearance.ProgressAppearance.BackGroundFill.Color = 16765615
            ItemAppearance.ProgressAppearance.BackGroundFill.ColorTo = 16765615
            ItemAppearance.ProgressAppearance.BackGroundFill.ColorMirror = clNone
            ItemAppearance.ProgressAppearance.BackGroundFill.ColorMirrorTo = clNone
            ItemAppearance.ProgressAppearance.BackGroundFill.GradientType = gtVertical
            ItemAppearance.ProgressAppearance.BackGroundFill.GradientMirrorType = gtSolid
            ItemAppearance.ProgressAppearance.BackGroundFill.BorderColor = clSilver
            ItemAppearance.ProgressAppearance.BackGroundFill.Rounding = 0
            ItemAppearance.ProgressAppearance.BackGroundFill.ShadowOffset = 0
            ItemAppearance.ProgressAppearance.BackGroundFill.Glow = gmNone
            ItemAppearance.ProgressAppearance.ProgressFill.Color = 16773091
            ItemAppearance.ProgressAppearance.ProgressFill.ColorTo = 16768452
            ItemAppearance.ProgressAppearance.ProgressFill.ColorMirror = 16765357
            ItemAppearance.ProgressAppearance.ProgressFill.ColorMirrorTo = 16767936
            ItemAppearance.ProgressAppearance.ProgressFill.GradientType = gtVertical
            ItemAppearance.ProgressAppearance.ProgressFill.GradientMirrorType = gtVertical
            ItemAppearance.ProgressAppearance.ProgressFill.BorderColor = 16765357
            ItemAppearance.ProgressAppearance.ProgressFill.Rounding = 0
            ItemAppearance.ProgressAppearance.ProgressFill.ShadowOffset = 0
            ItemAppearance.ProgressAppearance.ProgressFill.Glow = gmNone
            ItemAppearance.ProgressAppearance.Font.Charset = DEFAULT_CHARSET
            ItemAppearance.ProgressAppearance.Font.Color = clWindowText
            ItemAppearance.ProgressAppearance.Font.Height = -11
            ItemAppearance.ProgressAppearance.Font.Name = 'Tahoma'
            ItemAppearance.ProgressAppearance.Font.Style = []
            ItemAppearance.ProgressAppearance.ProgressFont.Charset = DEFAULT_CHARSET
            ItemAppearance.ProgressAppearance.ProgressFont.Color = clWindowText
            ItemAppearance.ProgressAppearance.ProgressFont.Height = -11
            ItemAppearance.ProgressAppearance.ProgressFont.Name = 'Tahoma'
            ItemAppearance.ProgressAppearance.ProgressFont.Style = []
            ItemAppearance.ProgressAppearance.ValueFormat = '%.0f%%'
            ItemAppearance.ButtonAppearance.Font.Charset = DEFAULT_CHARSET
            ItemAppearance.ButtonAppearance.Font.Color = clWindowText
            ItemAppearance.ButtonAppearance.Font.Height = -11
            ItemAppearance.ButtonAppearance.Font.Name = 'Tahoma'
            ItemAppearance.ButtonAppearance.Font.Style = []
            ItemAppearance.ButtonAppearance.Rounding = 12
            ItemAppearance.InfoFill.Color = clMaroon
            ItemAppearance.InfoFill.ColorMirror = clNone
            ItemAppearance.InfoFill.ColorMirrorTo = clNone
            ItemAppearance.InfoFill.GradientType = gtVertical
            ItemAppearance.InfoFill.GradientMirrorType = gtSolid
            ItemAppearance.InfoFill.BorderColor = clNone
            ItemAppearance.InfoFill.Rounding = 12
            ItemAppearance.InfoFill.ShadowOffset = 0
            ItemAppearance.InfoFill.Glow = gmNone
            ItemAppearance.InfoFillSelected.ColorMirror = clNone
            ItemAppearance.InfoFillSelected.ColorMirrorTo = clNone
            ItemAppearance.InfoFillSelected.GradientType = gtVertical
            ItemAppearance.InfoFillSelected.GradientMirrorType = gtSolid
            ItemAppearance.InfoFillSelected.BorderColor = clNone
            ItemAppearance.InfoFillSelected.Rounding = 0
            ItemAppearance.InfoFillSelected.ShadowOffset = 0
            ItemAppearance.InfoFillSelected.Glow = gmNone
            ItemAppearance.InfoFillDisabled.ColorMirror = clNone
            ItemAppearance.InfoFillDisabled.ColorMirrorTo = clNone
            ItemAppearance.InfoFillDisabled.GradientType = gtVertical
            ItemAppearance.InfoFillDisabled.GradientMirrorType = gtSolid
            ItemAppearance.InfoFillDisabled.BorderColor = clNone
            ItemAppearance.InfoFillDisabled.Rounding = 0
            ItemAppearance.InfoFillDisabled.ShadowOffset = 0
            ItemAppearance.InfoFillDisabled.Glow = gmNone
            ItemAppearance.DeleteButtonCaption = 'Delete'
            LookupBar.DisabledFont.Charset = DEFAULT_CHARSET
            LookupBar.DisabledFont.Color = clSilver
            LookupBar.DisabledFont.Height = -11
            LookupBar.DisabledFont.Name = 'Tahoma'
            LookupBar.DisabledFont.Style = []
            LookupBar.Font.Charset = DEFAULT_CHARSET
            LookupBar.Font.Color = clWindowText
            LookupBar.Font.Height = -11
            LookupBar.Font.Name = 'Tahoma'
            LookupBar.Font.Style = []
            LookupBar.Visible = False
            DetailSpeedFactor = 3
            Sections.Font.Charset = DEFAULT_CHARSET
            Sections.Font.Color = clWindowText
            Sections.Font.Height = -11
            Sections.Font.Name = 'Tahoma'
            Sections.Font.Style = []
            Sections.BorderColor = clBlack
            SelectedItemIndex = 0
            Header.Fill.Color = 16773091
            Header.Fill.ColorTo = 16765615
            Header.Fill.ColorMirror = clNone
            Header.Fill.ColorMirrorTo = clNone
            Header.Fill.GradientType = gtVertical
            Header.Fill.GradientMirrorType = gtSolid
            Header.Fill.BorderColor = 16765615
            Header.Fill.Rounding = 0
            Header.Fill.ShadowOffset = 0
            Header.Fill.Glow = gmNone
            Header.Caption = 'Header'
            Header.Font.Charset = DEFAULT_CHARSET
            Header.Font.Color = 7485192
            Header.Font.Height = -13
            Header.Font.Name = 'Tahoma'
            Header.Font.Style = []
            Header.Visible = False
            Filter.Fill.Color = 16773091
            Filter.Fill.ColorMirror = clNone
            Filter.Fill.ColorMirrorTo = clNone
            Filter.Fill.GradientType = gtSolid
            Filter.Fill.GradientMirrorType = gtSolid
            Filter.Fill.BorderColor = 16765615
            Filter.Fill.Rounding = 0
            Filter.Fill.ShadowOffset = 0
            Filter.Fill.Glow = gmNone
            Footer.Fill.Color = 16773091
            Footer.Fill.ColorTo = 16765615
            Footer.Fill.ColorMirror = clNone
            Footer.Fill.ColorMirrorTo = clNone
            Footer.Fill.GradientType = gtVertical
            Footer.Fill.GradientMirrorType = gtSolid
            Footer.Fill.BorderColor = 16765615
            Footer.Fill.Rounding = 0
            Footer.Fill.ShadowOffset = 0
            Footer.Fill.Glow = gmNone
            Footer.Caption = 'Footer'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = 7485192
            Footer.Font.Height = -13
            Footer.Font.Name = 'Tahoma'
            Footer.Font.Style = []
            Footer.Visible = False
            ScrollIndicator.Visible = False
            ShowFocus = False
            FocusColor = clYellow
            DefaultItem.Caption = 'Item 0'
            DefaultItem.CaptionAlignment = taCenter
            DefaultItem.CaptionFont.Charset = DEFAULT_CHARSET
            DefaultItem.CaptionFont.Color = clAqua
            DefaultItem.CaptionFont.Height = -15
            DefaultItem.CaptionFont.Name = 'Tahoma'
            DefaultItem.CaptionFont.Style = [fsBold]
            DefaultItem.CaptionSelectedFont.Charset = DEFAULT_CHARSET
            DefaultItem.CaptionSelectedFont.Color = clWindowText
            DefaultItem.CaptionSelectedFont.Height = -15
            DefaultItem.CaptionSelectedFont.Name = 'Tahoma'
            DefaultItem.CaptionSelectedFont.Style = [fsBold]
            DefaultItem.InfoFont.Charset = DEFAULT_CHARSET
            DefaultItem.InfoFont.Color = clWindowText
            DefaultItem.InfoFont.Height = -11
            DefaultItem.InfoFont.Name = 'Tahoma'
            DefaultItem.InfoFont.Style = []
            DefaultItem.InfoSelectedFont.Charset = DEFAULT_CHARSET
            DefaultItem.InfoSelectedFont.Color = clWindowText
            DefaultItem.InfoSelectedFont.Height = -11
            DefaultItem.InfoSelectedFont.Name = 'Tahoma'
            DefaultItem.InfoSelectedFont.Style = []
            DefaultItem.NotesFont.Charset = DEFAULT_CHARSET
            DefaultItem.NotesFont.Color = clWindowText
            DefaultItem.NotesFont.Height = -11
            DefaultItem.NotesFont.Name = 'Tahoma'
            DefaultItem.NotesFont.Style = []
            DefaultItem.NotesSelectedFont.Charset = DEFAULT_CHARSET
            DefaultItem.NotesSelectedFont.Color = clWindowText
            DefaultItem.NotesSelectedFont.Height = -11
            DefaultItem.NotesSelectedFont.Name = 'Tahoma'
            DefaultItem.NotesSelectedFont.Style = []
            DefaultItem.ProgressMaximum = 100.000000000000000000
            DefaultItem.ButtonBevel = False
            ItemDragging = False
            Categories = <>
            EnableDragging = False
            TabOrder = 1
            Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clAqua
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Text = ''
            ItemBackGroundFill.Color = clNavy
            ItemBackGroundFill.ColorTo = clNavy
            ItemBackGroundFill.ColorMirror = clNavy
            ItemBackGroundFill.ColorMirrorTo = clNavy
            ItemBackGroundFill.GradientType = gtVertical
            ItemBackGroundFill.GradientMirrorType = gtVertical
            ItemBackGroundFill.BorderColor = clNavy
            ItemBackGroundFill.Rounding = 0
            ItemBackGroundFill.ShadowOffset = 0
            ItemBackGroundFill.Glow = gmNone
            ButtonAppearance.ArrowColor = clWhite
            ButtonAppearance.ArrowColorHover = clYellow
            ButtonAppearance.ArrowColorDown = clLime
            ButtonAppearance.Fill.Color = clNavy
            ButtonAppearance.Fill.ColorTo = clNavy
            ButtonAppearance.Fill.ColorMirror = clNavy
            ButtonAppearance.Fill.ColorMirrorTo = clNavy
            ButtonAppearance.Fill.GradientType = gtVertical
            ButtonAppearance.Fill.GradientMirrorType = gtVertical
            ButtonAppearance.Fill.BorderColor = clNavy
            ButtonAppearance.Fill.Rounding = 12
            ButtonAppearance.Fill.ShadowOffset = 0
            ButtonAppearance.Fill.Glow = gmNone
            ButtonAppearance.FillDown.Color = 16765615
            ButtonAppearance.FillDown.ColorTo = 16765615
            ButtonAppearance.FillDown.ColorMirror = 16765615
            ButtonAppearance.FillDown.ColorMirrorTo = 16765615
            ButtonAppearance.FillDown.GradientType = gtVertical
            ButtonAppearance.FillDown.GradientMirrorType = gtVertical
            ButtonAppearance.FillDown.BorderColor = 16765615
            ButtonAppearance.FillDown.Rounding = 12
            ButtonAppearance.FillDown.ShadowOffset = 0
            ButtonAppearance.FillDown.Glow = gmNone
            ButtonAppearance.FillHover.Color = clBlue
            ButtonAppearance.FillHover.ColorTo = clBlue
            ButtonAppearance.FillHover.ColorMirror = clBlue
            ButtonAppearance.FillHover.ColorMirrorTo = clBlue
            ButtonAppearance.FillHover.GradientType = gtVertical
            ButtonAppearance.FillHover.GradientMirrorType = gtVertical
            ButtonAppearance.FillHover.BorderColor = clBlue
            ButtonAppearance.FillHover.Rounding = 12
            ButtonAppearance.FillHover.ShadowOffset = 0
            ButtonAppearance.FillHover.Glow = gmNone
            AutoHeight = False
            DropDownHeight = 130
            DropDownWidth = 140
            TMSStyle = 4
          end
          object btn_OpenFilePath: TAdvSmoothButton
            Left = 783
            Top = 21
            Width = 120
            Height = 35
            Cursor = crHandPoint
            Hint = 'TEST'
            Appearance.GlowPercentage = 35
            Appearance.Font.Charset = DEFAULT_CHARSET
            Appearance.Font.Color = clWhite
            Appearance.Font.Height = -15
            Appearance.Font.Name = 'Tahoma'
            Appearance.Font.Style = [fsBold]
            Appearance.FocusColor = clWhite
            Appearance.Rounding = 12
            Status.Caption = '0'
            Status.Appearance.Fill.Color = clRed
            Status.Appearance.Fill.ColorMirror = clNone
            Status.Appearance.Fill.ColorMirrorTo = clNone
            Status.Appearance.Fill.GradientType = gtSolid
            Status.Appearance.Fill.GradientMirrorType = gtSolid
            Status.Appearance.Fill.BorderColor = clGray
            Status.Appearance.Fill.Rounding = 8
            Status.Appearance.Fill.ShadowOffset = 0
            Status.Appearance.Fill.Glow = gmNone
            Status.Appearance.Font.Charset = DEFAULT_CHARSET
            Status.Appearance.Font.Color = clWhite
            Status.Appearance.Font.Height = -11
            Status.Appearance.Font.Name = 'Tahoma'
            Status.Appearance.Font.Style = []
            Bevel = False
            BevelColor = clLime
            Caption = 'OPEN'
            Color = clNavy
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            ShowFocus = False
            Version = '2.1.0.0'
            OnClick = btn_OpenFilePathClick
            TMSStyle = 0
          end
          object ed_Path: TAdvEdit
            Left = 170
            Top = 26
            Width = 599
            Height = 26
            EmptyTextStyle = []
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Font.Charset = DEFAULT_CHARSET
            Lookup.Font.Color = clWindowText
            Lookup.Font.Height = -11
            Lookup.Font.Name = 'Arial'
            Lookup.Font.Style = []
            Lookup.Separator = ';'
            Color = clSilver
            DoubleBuffered = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
            Text = 'C:\\Rotem\\TCMS'
            Visible = True
            Version = '3.3.5.3'
          end
          object btn_Change_IP: TAdvSmoothButton
            Left = 385
            Top = 70
            Width = 120
            Height = 35
            Cursor = crHandPoint
            Hint = 'TEST'
            Appearance.GlowPercentage = 35
            Appearance.Font.Charset = DEFAULT_CHARSET
            Appearance.Font.Color = clWhite
            Appearance.Font.Height = -15
            Appearance.Font.Name = 'Tahoma'
            Appearance.Font.Style = [fsBold]
            Appearance.FocusColor = clWhite
            Appearance.Rounding = 12
            Status.Caption = '0'
            Status.Appearance.Fill.Color = clRed
            Status.Appearance.Fill.ColorMirror = clNone
            Status.Appearance.Fill.ColorMirrorTo = clNone
            Status.Appearance.Fill.GradientType = gtSolid
            Status.Appearance.Fill.GradientMirrorType = gtSolid
            Status.Appearance.Fill.BorderColor = clGray
            Status.Appearance.Fill.Rounding = 8
            Status.Appearance.Fill.ShadowOffset = 0
            Status.Appearance.Fill.Glow = gmNone
            Status.Appearance.Font.Charset = DEFAULT_CHARSET
            Status.Appearance.Font.Color = clWhite
            Status.Appearance.Font.Height = -11
            Status.Appearance.Font.Name = 'Tahoma'
            Status.Appearance.Font.Style = []
            Bevel = False
            BevelColor = clLime
            Caption = 'APPLY'
            Color = clNavy
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 8
            ShowFocus = False
            Version = '2.1.0.0'
            OnClick = btn_Change_IPClick
            TMSStyle = 0
          end
          object ed_IP_1: TAdvEdit
            Left = 170
            Top = 74
            Width = 47
            Height = 26
            EditAlign = eaCenter
            EditType = etNumeric
            EmptyText = '0'
            EmptyTextStyle = []
            MaxValue = 255
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Font.Charset = DEFAULT_CHARSET
            Lookup.Font.Color = clWindowText
            Lookup.Font.Height = -11
            Lookup.Font.Name = 'Arial'
            Lookup.Font.Style = []
            Lookup.Separator = ';'
            Color = clWhite
            DoubleBuffered = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            MaxLength = 3
            ParentFont = False
            TabOrder = 4
            Text = '192'
            Visible = True
            Version = '3.3.5.3'
          end
          object ed_IP_2: TAdvEdit
            Left = 223
            Top = 74
            Width = 47
            Height = 26
            EditAlign = eaCenter
            EditType = etNumeric
            EmptyText = '0'
            EmptyTextStyle = []
            MaxValue = 255
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Font.Charset = DEFAULT_CHARSET
            Lookup.Font.Color = clWindowText
            Lookup.Font.Height = -11
            Lookup.Font.Name = 'Arial'
            Lookup.Font.Style = []
            Lookup.Separator = ';'
            Color = clWhite
            DoubleBuffered = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            MaxLength = 3
            ParentFont = False
            TabOrder = 5
            Text = '192'
            Visible = True
            Version = '3.3.5.3'
          end
          object ed_IP_3: TAdvEdit
            Left = 276
            Top = 74
            Width = 47
            Height = 26
            EditAlign = eaCenter
            EditType = etNumeric
            EmptyText = '0'
            EmptyTextStyle = []
            MaxValue = 255
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Font.Charset = DEFAULT_CHARSET
            Lookup.Font.Color = clWindowText
            Lookup.Font.Height = -11
            Lookup.Font.Name = 'Arial'
            Lookup.Font.Style = []
            Lookup.Separator = ';'
            Color = clWhite
            DoubleBuffered = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            MaxLength = 3
            ParentFont = False
            TabOrder = 6
            Text = '192'
            Visible = True
            Version = '3.3.5.3'
          end
          object ed_IP_4: TAdvEdit
            Left = 329
            Top = 74
            Width = 47
            Height = 26
            EditAlign = eaCenter
            EditType = etNumeric
            EmptyText = '0'
            EmptyTextStyle = []
            MaxValue = 255
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Font.Charset = DEFAULT_CHARSET
            Lookup.Font.Color = clWindowText
            Lookup.Font.Height = -11
            Lookup.Font.Name = 'Arial'
            Lookup.Font.Style = []
            Lookup.Separator = ';'
            Color = clWhite
            DoubleBuffered = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            MaxLength = 3
            ParentFont = False
            TabOrder = 7
            Text = '192'
            Visible = True
            Version = '3.3.5.3'
          end
        end
      end
      object TPage
        Left = 0
        Top = 0
        HelpContext = 2
        Caption = 'Log'
        object _pnBase_03_Log: TPanel
          Left = 0
          Top = 0
          Width = 928
          Height = 309
          Align = alClient
          BevelOuter = bvNone
          Color = cl3DDkShadow
          ParentBackground = False
          TabOrder = 0
          object memo: TAdvMemo
            Left = 29
            Top = 24
            Width = 700
            Height = 256
            Cursor = crIBeam
            ActiveLineSettings.ShowActiveLine = False
            ActiveLineSettings.ShowActiveLineIndicator = False
            AutoCompletion.Font.Charset = DEFAULT_CHARSET
            AutoCompletion.Font.Color = clWindowText
            AutoCompletion.Font.Height = -11
            AutoCompletion.Font.Name = 'Tahoma'
            AutoCompletion.Font.Style = []
            AutoCompletion.StartToken = '(.'
            AutoCorrect.Active = True
            AutoHintParameterPosition = hpBelowCode
            BookmarkGlyph.Data = {
              36050000424D3605000000000000360400002800000010000000100000000100
              0800000000000001000000000000000000000001000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
              A6000020400000206000002080000020A0000020C0000020E000004000000040
              20000040400000406000004080000040A0000040C0000040E000006000000060
              20000060400000606000006080000060A0000060C0000060E000008000000080
              20000080400000806000008080000080A0000080C0000080E00000A0000000A0
              200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
              200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
              200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
              20004000400040006000400080004000A0004000C0004000E000402000004020
              20004020400040206000402080004020A0004020C0004020E000404000004040
              20004040400040406000404080004040A0004040C0004040E000406000004060
              20004060400040606000406080004060A0004060C0004060E000408000004080
              20004080400040806000408080004080A0004080C0004080E00040A0000040A0
              200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
              200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
              200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
              20008000400080006000800080008000A0008000C0008000E000802000008020
              20008020400080206000802080008020A0008020C0008020E000804000008040
              20008040400080406000804080008040A0008040C0008040E000806000008060
              20008060400080606000806080008060A0008060C0008060E000808000008080
              20008080400080806000808080008080A0008080C0008080E00080A0000080A0
              200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
              200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
              200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
              2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
              2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
              2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
              2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
              2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
              2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
              2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFD25252525
              2525252525252525FDFDFD2E25FFFFFFFFFFFFFFFFFFFF25FDFDFD2525252525
              2525252525252525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25B7B7B7B7
              B7B7B7B7B7B72525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25BFB7BFBF
              B7B7B7B7B7B72525FDFD9A9ABFBFBFB7BFBFB7B7B7B72525FDFDFD25BFBFBFBF
              BFB7BFBFB7B72525FDFD9A9ABFBFBFB7BFBFBFB7BFB72525FDFDFD25BFBFBFBF
              BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFB7BFBFB7B72525FDFDFD25BFBFBFBF
              BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFBFBFBFBFB725FDFDFDFD2525252525
              25252525252525FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD}
            BorderStyle = bsSingle
            ClipboardFormats = [cfText]
            CodeFolding.Enabled = False
            CodeFolding.LineColor = clGray
            Ctl3D = False
            DelErase = True
            EnhancedHomeKey = False
            Gutter.Font.Charset = DEFAULT_CHARSET
            Gutter.Font.Color = clWindowText
            Gutter.Font.Height = -13
            Gutter.Font.Name = 'Courier New'
            Gutter.Font.Style = []
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'COURIER NEW'
            Font.Style = []
            HiddenCaret = False
            Lines.Strings = (
              '')
            MarkerList.UseDefaultMarkerImageIndex = False
            MarkerList.DefaultMarkerImageIndex = -1
            MarkerList.ImageTransparentColor = 33554432
            OleDropTarget = []
            PrintOptions.MarginLeft = 0
            PrintOptions.MarginRight = 0
            PrintOptions.MarginTop = 0
            PrintOptions.MarginBottom = 0
            PrintOptions.PageNr = False
            PrintOptions.PrintLineNumbers = False
            ReadOnly = True
            RightMarginColor = 14869218
            ScrollHint = False
            SelColor = clWhite
            SelBkColor = clNavy
            ShowRightMargin = False
            SmartTabs = False
            TabOrder = 0
            TabStop = True
            TrimTrailingSpaces = False
            UILanguage.ScrollHint = 'Row'
            UILanguage.Undo = 'Undo'
            UILanguage.Redo = 'Redo'
            UILanguage.Copy = 'Copy'
            UILanguage.Cut = 'Cut'
            UILanguage.Paste = 'Paste'
            UILanguage.Delete = 'Delete'
            UILanguage.SelectAll = 'Select All'
            UndoLimit = 10
            UrlStyle.TextColor = clBlue
            UrlStyle.BkColor = clWhite
            UrlStyle.Style = [fsUnderline]
            UseStyler = True
            Version = '3.4.1.0'
            WordWrap = wwNone
          end
          object btn_Test: TAdvSmoothButton
            Left = 754
            Top = 25
            Width = 120
            Height = 35
            Cursor = crHandPoint
            Hint = 'TEST'
            Appearance.GlowPercentage = 35
            Appearance.Font.Charset = DEFAULT_CHARSET
            Appearance.Font.Color = clAqua
            Appearance.Font.Height = -15
            Appearance.Font.Name = 'Tahoma'
            Appearance.Font.Style = [fsBold]
            Appearance.Rounding = 12
            Status.Caption = '0'
            Status.Appearance.Fill.Color = clRed
            Status.Appearance.Fill.ColorMirror = clNone
            Status.Appearance.Fill.ColorMirrorTo = clNone
            Status.Appearance.Fill.GradientType = gtSolid
            Status.Appearance.Fill.GradientMirrorType = gtSolid
            Status.Appearance.Fill.BorderColor = clGray
            Status.Appearance.Fill.Rounding = 8
            Status.Appearance.Fill.ShadowOffset = 0
            Status.Appearance.Fill.Glow = gmNone
            Status.Appearance.Font.Charset = DEFAULT_CHARSET
            Status.Appearance.Font.Color = clWhite
            Status.Appearance.Font.Height = -11
            Status.Appearance.Font.Name = 'Tahoma'
            Status.Appearance.Font.Style = []
            Bevel = False
            BevelColor = clLime
            Caption = 'TEST'
            Color = clNavy
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            Visible = False
            ShowFocus = False
            Version = '2.1.0.0'
            OnClick = btn_TestClick
            TMSStyle = 0
          end
          object btn_Setup: TAdvSmoothButton
            Left = 754
            Top = 66
            Width = 120
            Height = 35
            Cursor = crHandPoint
            Hint = 'TEST'
            Appearance.GlowPercentage = 35
            Appearance.Font.Charset = DEFAULT_CHARSET
            Appearance.Font.Color = clAqua
            Appearance.Font.Height = -15
            Appearance.Font.Name = 'Tahoma'
            Appearance.Font.Style = [fsBold]
            Appearance.Rounding = 12
            Status.Caption = '0'
            Status.Appearance.Fill.Color = clRed
            Status.Appearance.Fill.ColorMirror = clNone
            Status.Appearance.Fill.ColorMirrorTo = clNone
            Status.Appearance.Fill.GradientType = gtSolid
            Status.Appearance.Fill.GradientMirrorType = gtSolid
            Status.Appearance.Fill.BorderColor = clGray
            Status.Appearance.Fill.Rounding = 8
            Status.Appearance.Fill.ShadowOffset = 0
            Status.Appearance.Fill.Glow = gmNone
            Status.Appearance.Font.Charset = DEFAULT_CHARSET
            Status.Appearance.Font.Color = clWhite
            Status.Appearance.Font.Height = -11
            Status.Appearance.Font.Name = 'Tahoma'
            Status.Appearance.Font.Style = []
            Bevel = False
            BevelColor = clLime
            Caption = 'SET UP'
            Color = clNavy
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            Visible = False
            ShowFocus = False
            Version = '2.1.0.0'
            OnClick = btn_SetupClick
            TMSStyle = 0
          end
          object btn_Stop: TAdvSmoothButton
            Left = 754
            Top = 107
            Width = 120
            Height = 35
            Cursor = crHandPoint
            Hint = 'TEST'
            Appearance.GlowPercentage = 35
            Appearance.Font.Charset = DEFAULT_CHARSET
            Appearance.Font.Color = clAqua
            Appearance.Font.Height = -15
            Appearance.Font.Name = 'Tahoma'
            Appearance.Font.Style = [fsBold]
            Appearance.Rounding = 12
            Status.Caption = '0'
            Status.Appearance.Fill.Color = clRed
            Status.Appearance.Fill.ColorMirror = clNone
            Status.Appearance.Fill.ColorMirrorTo = clNone
            Status.Appearance.Fill.GradientType = gtSolid
            Status.Appearance.Fill.GradientMirrorType = gtSolid
            Status.Appearance.Fill.BorderColor = clGray
            Status.Appearance.Fill.Rounding = 8
            Status.Appearance.Fill.ShadowOffset = 0
            Status.Appearance.Fill.Glow = gmNone
            Status.Appearance.Font.Charset = DEFAULT_CHARSET
            Status.Appearance.Font.Color = clWhite
            Status.Appearance.Font.Height = -11
            Status.Appearance.Font.Name = 'Tahoma'
            Status.Appearance.Font.Style = []
            Bevel = False
            BevelColor = clLime
            Caption = 'STOP'
            Color = clNavy
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            Visible = False
            ShowFocus = False
            Version = '2.1.0.0'
            OnClick = btn_StopClick
            TMSStyle = 0
          end
        end
      end
    end
  end
  object dxBarMgr: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 608
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarMgrBar1: TdxBar
      Caption = 'View'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1216
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'MenuBtn_Status'
        end
        item
          Visible = True
          ItemName = 'MenuBtn_Setting'
        end
        item
          Visible = True
          ItemName = 'MenuBtn_Log'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarMgrBar2: TdxBar
      Caption = 'Command'
      CaptionButtons = <>
      DockedLeft = 190
      DockedTop = 0
      FloatLeft = 822
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'MenuBtn_Update'
        end
        item
          Visible = True
          ItemName = 'MenuBtn_Version'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object MenuBtn_Update: TdxBarLargeButton
      Caption = 'Update'
      Category = 0
      Hint = 'Update'
      Visible = ivAlways
      OnClick = MenuBtn_UpdateClick
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000010000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        0002000000040000000500000006000000060000000600000006000000060000
        0006000000060000000600000004000000020000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000020000
        00060000000E0000001400000017000000170000001800000018000000180000
        001800000017000000150000000F000000070000000200000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000030000
        000E784729BFA76339FFA66339FFA76339FFA66339FFA66339FFA66238FFA662
        38FFA66238FFA66238FF774628C00000000F0000000400000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000050000
        0012AB6A40FFE3C49BFFDEBA8AFFDEB989FFDEB989FFDDB987FFDDB788FFDDB7
        86FFDCB686FFDCB684FFA66238FF000000140000000500000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000050000
        0013AB6C42FFE5C79DFFD5A972FFD5AA72FFD5A972FFD5A972FFD5A971FFD5A8
        71FFD5A870FFDDB888FFA76339FF000000150000000500000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000050000
        0013AD6E45FFE6C9A1FFD6AB74FFD7AB74FFD6AB74FFD6AA74FFD6AA73FFD6AA
        73FFD6A972FFDEBA8AFFA7643AFF000000150000000500000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000040000
        0012AF7148FFE7CAA3FFD7AD77FFD8AD77FFD7AD77FFD7AD76FFD6AC75FFD6AB
        74FFD7AB74FFDFBC8DFFA8663CFF000000140000000500000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000050000
        0012B1744AFFE8CDA7FFD8AF79FFD8AF79FFD9AF78FFD8AE78FFD7AD77FFD8AD
        77FFD8AC76FFE0BE91FFA9683EFF000000130000000500000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000030000000400000004000000080000
        0013B3764EFFE8CFAAFFD9B17CFFD9B17BFFD9B17BFFD9B07AFFD8AF7AFFD8AF
        79FFD8AE79FFE2C194FFAB6B41FF000000150000000900000005000000040000
        0003000000010000000000000000000000000000000000000000000000000000
        00000000000000000001000000040000000A0000000D0000000F000000120000
        001AB47A52FFE9D1ADFFDAB27EFFDAB27DFFDAB27DFFDAB27DFFDAB17CFFD9B0
        7BFFD9B07AFFE3C398FFAD6E45FF0000001D0000001400000011000000100000
        000B000000050000000100000000000000000000000000000000000000000000
        0000000000000000000200000008B88059FFB88058FFB87F57FFB77E56FFB67D
        56FFB67C54FFE6CBA3FFDBB581FFDBB581FFDBB480FFDBB47FFFDAB47EFFDAB3
        7EFFD9B27DFFE4C59BFFAF7249FFAF7148FFAE6F47FFAE6F46FFAD6E45FFAD6E
        44FF0000000A0000000300000000000000000000000000000000000000000000
        00000000000000000002000000087F5A3FB4E2C8ADFFECD6B5FFE8CEA8FFE8CE
        A8FFE8CEA7FFE8CEA7FFDDB683FFDCB783FFDCB682FFDCB682FFDBB581FFDBB5
        80FFDAB380FFE5C89EFFE5C79DFFE4C69BFFE3C499FFE4C49AFFDAB899FF744A
        2EB80000000A0000000200000000000000000000000000000000000000000000
        0000000000000000000100000005140E0A28B98A68F5EEDCC2FFE1BF90FFDDB9
        86FFDDB986FFDDB987FFDDB986FFDDB985FFDDB985FFDDB884FFDCB783FFDCB6
        83FFDBB582FFDBB581FFDAB37FFFDAB27EFFDAB27DFFE8CEABFFAA7552F5120C
        072A000000060000000100000000000000000000000000000000000000000000
        000000000000000000000000000200000008513A2A76D5B394FFEBD5B3FFDFBD
        8BFFDEBB88FFDFBC89FFDEBB89FFDEBB88FFDEBB88FFDEBA87FFDEB986FFDDB9
        85FFDCB784FFDCB683FFDCB581FFDBB480FFE4C59AFFCAA281FF4A31207B0000
        0009000000030000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000030202010D9A7252D1EAD6BEFFE5C9
        A0FFE0BF8DFFE4C595FFE6CB9BFFE7CB9CFFE7CC9EFFE7CC9EFFE6C99BFFE4C6
        96FFE3C493FFE0BE8CFFDDB885FFDEBA8AFFE4CBAEFF8F6041D5020101100000
        0004000000010000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000100000005241B133BC89F7DFDF4E8
        D2FFECD8AEFFEBD4A7FFEBD3A7FFEAD2A5FFEAD2A4FFE9D1A3FFE9CFA2FFE8CE
        A0FFE7CD9EFFE7CB9CFFE6C99BFFEEDCBDFFBD8C68FD21160F3C000000060000
        0002000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000002000000076C503B94E2C8
        B0FFF4E6C7FFEED9AEFFEED8ACFFEDD7ABFFECD6AAFFECD5A9FFEBD4A7FFEAD3
        A5FFEAD1A4FFE9CFA3FFECD8B1FFDABBA2FF6646309800000009000000030000
        0001000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000010000000309070515B28A
        68E7F4E9D7FFF2E1BDFFEFDCB1FFEFDBB0FFEEDAAFFFEED9AEFFEDD8ADFFECD7
        ABFFECD5A9FFEDD6AAFFEFE0C8FFA77857E70906041600000004000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000043A2C
        2153D5B395FFF8EFDAFFF3E2B9FFF1DFB5FFF1DFB4FFF0DEB3FFEFDCB1FFEFDB
        B0FFEEDAAFFFF4E6CAFFCCA586FF38281C570000000500000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000020000
        000687684EB2EBD9C6FFF6ECCDFFF3E3BBFFF3E2B9FFF2E1B8FFF2E0B6FFF1DF
        B5FFF3E2BDFFE7D2BCFF815D43B5000000070000000200000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        000315110D21C69F7DF5FAF3E2FFF6E9C5FFF4E6BDFFF4E5BCFFF3E4BBFFF3E3
        BAFFF6ECD7FFBB8F6EF5140F0B22000000030000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00010000000456433371DFC5ABFFFAF3DBFFF6EAC3FFF6E8C0FFF5E7BFFFF7EE
        D1FFD9BCA1FF533E2D7500000004000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000202020108A58364CFF3E7D7FFF9EFD0FFF7EBC3FFF8ECC7FFF1E5
        D1FF9E7959D20202010900000002000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000100000002261F1835D3B292FDFBF6E7FFF8EECAFFFAF5E1FFCCA7
        85FD251C15350000000300000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000100000003725B4790E8D5BFFFFBF5DBFFE5CFB8FF6F56
        4093000000030000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000010A08060FBC9879E6F8F3E7FFB48F6EE60907
        0510000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000013D31264DD0A883FF3B2E234D0000
        0002000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000001000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Width = 60
    end
    object MenuBtn_Version: TdxBarLargeButton
      Caption = 'Version'
      Category = 0
      Hint = 'Version'
      Visible = ivAlways
      OnClick = MenuBtn_VersionClick
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0001000000010000000200000004000000050000000700000007000000070000
        0007000000050000000400000002000000020000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000010000
        0003000000070000000C0000001100000016000000190000001B0000001B0000
        001900000016000000120000000C000000070000000400000001000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000100000003000000070000
        000E000000181B12104D442D289668463DD16C483FD985594EFF84584EFF6C48
        3EDA66453CD1432C27971A120F500000001A0000001000000008000000040000
        0001000000010000000000000000000000000000000000000000000000000000
        000000000000000000000000000100000001000000040000000B000000162D1E
        1B6B764F44E2966E64FFB19187FFC9AFA6FFCEB5ADFFDECAC2FFDECAC2FFCEB5
        ACFFC8AEA5FFB08F86FF936A60FF724C43E22C1D196E000000190000000D0000
        0005000000010000000100000000000000000000000000000000000000000000
        0000000000000000000100000001000000050000000E100B0A376C4A40D0A37E
        75FFCCB4ACFFDFCCC4FFDFCCC5FFDFCCC5FFDFCBC4FFDFCCC4FFDFCBC4FFDECB
        C3FFDFCBC3FFDFCBC3FFDECBC3FFCBB1A9FF9C766CFF68463DD1100B093A0000
        0011000000060000000100000001000000000000000000000000000000000000
        00000000000000000001000000050000000F23181556875E53F0C5ACA3FFE1CE
        C6FFE0CDC6FFDDC6BCFFC99F8BFFB98063FFB47555FFA9623CFFAA613CFFB475
        55FFB97F63FFC89E8AFFDCC4BAFFE0CCC4FFDFCCC5FFBEA197FF81594EF12217
        145A000000120000000600000001000000000000000000000000000000000000
        000000000001000000040000000D23191554946D61FAD2BDB5FFE2D0C9FFE0CB
        C4FFC69A85FFAE6A45FFAC643EFFAD663EFFAD663FFFAD653FFFAD653FFFAC64
        3FFFAD643DFFAB633DFFAD6843FFC69983FFDECAC1FFE0CEC6FFCBB2AAFF8D64
        5AFA221714590000001000000005000000010000000000000000000000000000
        00000000000200000009150F0D398A655AEEDBC9C4FFE3D2CBFFDCC5BAFFB77A
        5AFFAE653FFFAF6641FFAF6741FFAF6841FFAF6842FFB06842FFB06842FFAF67
        41FFAE673FFFAE663FFFAD653FFFAC643EFFB6785AFFDAC2B7FFE1CFC8FFCFB7
        B0FF855D53EF140D0C3E0000000C000000030000000100000000000000000000
        00010000000500000011725147CBD2BEB8FFE4D4CDFFDEC8BEFFB3714DFFAF67
        40FFB06942FFB16943FFB06A42FFAE673FFFAB633CFFAA623BFFA9613BFFAA64
        3CFFAE663FFFAF6941FFAF6841FFAF6740FFAD653EFFB16E4BFFDDC5BAFFE3D1
        C9FFC0A59CFF6D4B43D000000016000000070000000100000000000000000000
        00020000000A32242065AD8A80FFECE0DCFFE4D3CCFFB87C5BFFB16942FFB26A
        44FFB36C45FFB26C45FFB06842FFD0AA96FFF2E8E4FFFFFFFFFFFFFFFFFFF0E5
        DFFFCFA894FFAE6640FFB06A43FFB16A43FFAF6741FFAE6640FFB67959FFE2CF
        C7FFE4D2CCFFA17C72FF2F211D6A0000000D0000000300000001000000010000
        00050000000F835E54DDE3D6D2FFE7D8D3FFCCA28CFFB26942FFB36C44FFB46E
        46FFB46E46FFB56E46FFB06941FFE4D0C2FFF7F0E9FFF7F0E9FFF8F3ECFFFBF8
        F5FFF6EFEBFFAF673FFFB36B45FFB16B44FFB26A43FFB06841FFAE663FFFCA9E
        89FFE4D4CEFFD0B9B2FF7B574CDF000000150000000600000001000000020000
        0007271D194FB08D83FFF4ECE9FFE5D3CCFFB4704AFFB46C46FFB56F46FFB770
        48FFB77047FFB67048FFB56E46FFB57856FFF7F1EAFFF8F1EAFFF7F1EBFFF8F2
        EDFFBE896DFFB26A43FFB56E46FFB46E46FFB36C45FFB26B43FFB16843FFB16D
        47FFE2CFC7FFE6D6D0FFA78177FF261B18570000000A00000002000000020000
        0009553E3892D2BDB7FFEFE5E2FFD4B1A0FFB46C44FFB77048FFB87149FFB871
        49FFB97249FFBB774DFFBF7C52FFB6754AFFEFE2D9FFF8F2EBFFF7F2ECFFFDFB
        FAFFB7764FFFBA774CFFB9734AFFB66F48FFB56E47FFB46E46FFB36B44FFAF68
        41FFCFA896FFE7D8D2FFC4AAA2FF503933970000000D00000003000000020000
        000B7B5B52C6E7DDD9FFEEE2DEFFC38D70FFB66F47FFB9724AFFB9734AFFBF7C
        52FFC5895CFFC88C5FFFC88C5FFFBC7F52FFECDFD5FFF8F2EDFFF9F3ECFFFFFE
        FEFFB8774DFFC28359FFC18358FFBE7E53FFBA764CFFB56F47FFB56E46FFB26B
        44FFC0896DFFE9DAD4FFD5C1BBFF74544BC90000001000000004000000030000
        000C997367ECF6F1F0FFEDE2DDFFBD7F5CFFB87249FFBD784FFFC78A5EFFCA91
        63FFCA9164FFCA9164FFCB9263FFBF8156FFEDE0D6FFF8F4EEFFF9F3EEFFFFFF
        FFFFBB7B51FFC6895CFFC4875BFFC28559FFC18257FFBD7C53FFB87149FFB46D
        46FFB97B57FFEADCD7FFE2D2CCFF8F695DED0000001200000004000000030000
        000CA57D71FAFDFCFCFFEDE4DFFFB97650FFBE7B51FFCB9266FFCD9668FFCE96
        68FFCE9668FFCE9768FFCC9466FFBC7F53FFF5EDE6FFF9F4EEFFFAF4EFFFFFFF
        FFFFBD7F54FFC88D61FFC88B5FFFC6895CFFC4865BFFC38459FFC07F54FFB871
        4AFFB5704AFFEBDED9FFE9DDD7FF9B7467FA0000001200000005000000030000
        000BA88075FAFDFCFCFFF1E8E3FFBE7F57FFCC9568FFCF996CFFD19A6CFFD09B
        6DFFD19B6EFFD09B6CFFC99164FFDBBEAAFFFAF5EFFFFAF5F0FFFAF5EFFFFFFF
        FFFFBF8258FFCB9265FFCA8F63FFC88D61FFC78A5FFFC5885CFFC38558FFBF7F
        54FFB67149FFECE0DCFFECE1DCFF9E776AFA0000001100000005000000020000
        0009A17D71ECF7F2F1FFF5EDEBFFCF9F7DFFCF9A6DFFD29D70FFD3A072FFD4A0
        72FFD3A072FFD49F72FFCA9467FFEBDACFFFFAF6F1FFFAF6F1FFFAF5F1FFFFFF
        FFFFC1865BFFCE9669FFCD9467FFCA9165FFC98F62FFC78B60FFC5885DFFC282
        59FFC18560FFEEE4DEFFEADEDAFF977266ED0000000F00000004000000020000
        000887695FC4EBE1DEFFFAF7F6FFD9B59AFFCF9C6FFFD4A175FFD5A377FFD6A5
        77FFD6A677FFD6A578FFD3A173FFC9956AFFD2AC92FFE6D4C7FFFBF6F1FFFDFB
        FAFFC88E61FFD09B6DFFCF986BFFCD9569FFCC9267FFC88E63FFC78C60FFC284
        5AFFCEA084FFF1E7E4FFE3D4CEFF7E6057C70000000D00000003000000010000
        0005604C448EDBC9C2FFFEFDFDFFEADACDFFD09D70FFD6A678FFD8A97CFFD9AA
        7CFFDAAA7DFFD9AA7DFFD6A679FFCD996DFFBF885CFFBB8057FFBD8259FFCA98
        71FFCF9A6FFFD49E71FFD29C70FFD19A6DFFCE966BFFCC9367FFC88E63FFC385
        5BFFDEC2B0FFF3EAE7FFD5C1BBFF5A453E920000000900000002000000010000
        00042D242147C5A79BFFFFFFFFFFF9F5F2FFD3A47DFFD6A77BFFDAAC81FFDCAD
        81FFDCAF82FFDCAF82FFD4A376FFD8B8A1FFFAF6F3FFEBDCD4FFD7B9A6FFC08A
        61FFD19E73FFD6A277FFD4A074FFD29D72FFD1996EFFCD966AFFC98F64FFC68D
        67FFF2E7E3FFF7F1EFFFBD9E93FF2B221E4D0000000600000001000000000000
        0002000000079F7F73DAEDE4E0FFFEFDFDFFEAD5C5FFD5A67CFFDAAF84FFDEB2
        86FFDDB386FFDFB487FFD4A67BFFF5ECE6FFFDF9F7FFFDFBFAFFFFFFFFFFEADA
        D0FFD09C70FFD8A77BFFD6A479FFD49F75FFD29D73FFCE976EFFC98F64FFDFC3
        B0FFF5EFECFFEADFDBFF97746ADC0000000C0000000400000001000000000000
        0001000000043E322E5ACAADA2FFFFFFFFFFFCFAF9FFDDBB9DFFDBAE84FFDFB4
        8AFFE0B88CFFE0B78CFFDDB387FFEDDBCBFFFCF9F6FFFBF9F5FFFDFBF8FFFCF9
        F7FFD4A379FFDAAB7FFFD8A77DFFD5A47AFFD39E73FFCE976CFFD2A686FFF6EF
        EDFFFAF7F5FFC5A59BFF3C2F2A5F000000070000000200000000000000000000
        0000000000020000000593786DC6E6D7D2FFFFFFFFFFFAF6F4FFDCB593FFDCB2
        89FFE0B98EFFE2BB90FFE2BB90FFE1B78EFFE9D2B9FFF6EEE5FFF9F3EEFFEBD5
        C1FFDCAF84FFDDAF83FFDAAA80FFD6A57AFFD29D74FFD1A07DFFF3EBE6FFF9F6
        F4FFE3D4CFFF8C7066C70000000A000000030000000100000000000000000000
        0000000000010000000219151326B5968AECF2EAE8FFFFFFFFFFFBF8F6FFE1C1
        A5FFDCB38AFFE1BA91FFE3BC94FFE3BD94FFE3BD93FFE3BB91FFE1B98FFFE0B6
        8DFFDFB389FFDCAF85FFD8A980FFD3A076FFD8B091FFF5EEEAFFFAF7F6FFF1E8
        E5FFB08F83ED1813122B00000005000000010000000000000000000000000000
        000000000000000000010000000331282544C4A598F9F0E8E5FFFFFFFFFFFDFC
        FBFFEFDFD2FFDDB792FFDFB68FFFE1B991FFE2BA92FFE1BA92FFE0B88FFFDFB3
        8BFFDBAF87FFD8A980FFD5A883FFE9D4C3FFF9F4F3FFFCFAF9FFEFE6E3FFBF9D
        91F92F2623480000000500000002000000000000000000000000000000000000
        00000000000000000000000000010000000331292544BA9B8EEEE7D8D3FFFFFF
        FFFFFFFEFEFFFCFAF9FFF2E4DAFFE7CEB7FFE3C4A8FFDAB18AFFD9B087FFE1C0
        A2FFE4C7AEFFEEDDD1FFFAF4F2FFFCFAFAFFFEFEFEFFE6D6D0FFB49589EE3027
        2447000000050000000200000000000000000000000000000000000000000000
        00000000000000000000000000000000000100000002181412229C8177C8D6BC
        B2FFF2E9E6FFFFFFFFFFFFFFFFFFFEFEFEFFFEFDFCFFFDFCFBFFFDFBFAFFFDFC
        FBFFFEFCFBFFFEFDFDFFFFFFFFFFF1E9E6FFD3BAB0FF997D73C9171311250000
        0004000000020000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000001000000034136
        3154AC9083D9D1B4A8FFE3D1CBFFF2E9E5FFF4EEEBFFFEFEFEFFFEFEFEFFF4EE
        EBFFF1E8E5FFE2D0C9FFCFB2A5FFA88D81DA4236325900000005000000030000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        000200000003241E1C3065544D819C8378C5A3887DCDCAA89BFCC9A99AFCA289
        7DCE9B8277C564544D82231E1B32000000040000000300000001000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000010000000100000002000000020000000300000003000000030000
        0003000000030000000200000002000000010000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000001000000010000
        0001000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Width = 60
    end
    object MenuBtn_Setting: TdxBarLargeButton
      Caption = 'Setting'
      Category = 0
      Hint = 'Setting'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = MenuBtn_SettingClick
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000001000000030000000A0000001100000016000000170000
        00120000000B0000000400000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000010000000200000008120E0C425F4842FF5F4841FF5E4840FF5E47
        40FF0E0A09440000000900000002000000010000000000000001000000010000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000200000003000000020000
        000100000001000000040000000E34282497A5958EFFCBBCB1FFC5B4A9FF8D7B
        71FF291D1A990000001100000005000000010000000100000003000000040000
        0003000000020000000100000000000000000000000000000000000000000000
        0000000000000000000000000002000000060000000A0000000B000000080000
        0006000000060000000A00000018523F39DACABEB6FFC0AEA1FFBFACA1FFB3A1
        96FF44322DDB0000001C0000000D00000008000000080000000C000000100000
        000F000000090000000300000001000000000000000000000000000000000000
        00000000000000000002000000060202021542322DB843332EBF140F0D480000
        0013000000130B08083132272390745E56FFCFBFB6FFC0ADA1FFBFAC9FFFC7B7
        ABFF624E47FF281F1B930806053700000018000000190F0B0A50322520C22F22
        1EBD0201011E0000000B00000003000000010000000000000000000000000000
        000000000001000000050302021451413CBBBBADA6FFB9A9A1FF79655DFF4534
        30C13F302CB8735D55FD97847CFFC0AFA5FFC5B3A7FFC2AFA3FFC1AEA1FFC2AE
        A2FFB8A79DFF89766DFF5D4942FD372924BC382925C567534CFFA18D84FF9C8A
        7FFF332522C10201011E00000009000000020000000000000000000000000000
        0000000000020000000850403ABAC6BBB6FFD9CDC4FFD1C3BAFFD6C9BFFFB4A4
        9CFFA99890FFCFC2B8FFCDBEB4FFC7B7ACFFC4B3A7FFC4B1A5FFC2B0A4FFC0AE
        A2FFC1AFA2FFC5B4A8FFC4B3A9FF9C8A80FFA39288FFC4B1A6FFBDA99CFFBBA8
        9CFF9D8B80FF31241FBD0000000F000000030000000100000000000000000000
        0000000000020000000852423DBACABFBAFFE4DBD5FFCFC1B7FFCEBFB5FFD1C3
        B8FFD0C1B9FFCABBB0FFC9B8ADFFC8B7ABFFC7B5A9FFC5B4A8FFC4B2A6FFC2B1
        A4FFC2AFA3FFC0ADA1FFBFADA0FFC2B0A5FFC1AEA1FFBBA79BFFBBA79AFFBDA9
        9EFFA18E85FF342622C000000010000000040000000100000000000000000000
        0000000000010000000619141344907C75FFEDE7E2FFD8CCC4FFD0C2B8FFCEC0
        B6FFCDBDB4FFCCBCB2FFCBBBB0FFCAB9AEFFC8B7ACFFC7B5AAFFC5B4A8FFC4B2
        A7FFC3B1A5FFC1AFA3FFC0AEA1FFBFACA0FFBEAA9EFFBDA99CFFBCA99CFFC6B3
        A8FF6B5750FF100C0B500000000C000000030000000000000000000000000000
        000000000001000000040000000D55453FBDCAC0BAFFDED4CEFFD1C4BAFFD0C2
        B8FFCFC0B6FFCEBEB4FFCCBDB3FFCBBBB0FFC9B9AEFFC8B8ACFFC7B6ABFFC6B5
        A9FFC4B3A7FFC3B1A6FFC2B0A4FFC1AEA2FFC0ADA1FFBEAB9EFFC1AFA3FFA896
        8CFF3D2E29C50000001900000008000000010000000000000000000000000000
        000000000001000000040000000D51423CB0C2B6B1FFE0D7D0FFD9CDC5FFD5C8
        BFFFD2C3B9FFCFC1B7FFCEBFB4FFD0C1B8FFD9CEC6FFE3DBD5FFE7E0DAFFE5DC
        D6FFDBD0C8FFCBBCB2FFC4B2A6FFC2B0A4FFC1AEA3FFC0ADA1FFC5B2A8FF9F8D
        83FF3B2D28BA0000001800000008000000010000000100000000000000000000
        00010000000200000006100D0C2F87736BFCEDE7E3FFE0D5CEFFDED3CBFFDCD0
        C8FFDACEC5FFD6C9C0FFD8CCC4FFCEC1BAFFA7958EFF927E75FF937F76FFA997
        8FFFD3C8C1FFE5DCD6FFD3C3BAFFC4B2A7FFC3B0A5FFC1AFA3FFC0AEA1FFC9B9
        AFFF68534BFD0C09083C0000000D000000050000000200000001000000020000
        0004000000080000000D372B2793A69793FFEAE3DDFFE2D8D2FFE0D5CFFFDED3
        CCFFDCD1C8FFDFD5CEFFB6A7A0FF745F57E82B2420660C0A092D0C0A0A2D2C25
        216879645DE8BCAEA7FFE5DCD6FFCBBCB1FFC5B3A7FFC3B1A6FFC1AFA4FFC9B8
        ACFF97837BFF3227239D0000001C00000011000000090000000400000004120E
        0D2F3A2E2A875E4B45D3826D66FFDED5D2FFE7DED8FFE4DBD5FFE2D8D2FFE1D6
        CFFFE1D7D0FFCCC0B9FF67554DDA090707260000000C00000008000000080000
        000D090807286E5B54DCD2C7C1FFDDD3CBFFC6B5A9FFC5B3A7FFC4B2A6FFC5B3
        A7FFC1B1A7FF715B53FF4F3D36D82F2420910E0B093B0000000B00000007826C
        63FFBCB1ABFFDDD6D1FFF1ECE8FFEAE2DEFFE7E0DAFFE6DDD8FFE4DCD5FFE3D9
        D2FFE8E1DCFF8E7B74FF251E1B610000000B0000000400000002000000020000
        00040000000D28201E6599867EFFE8E0DBFFC7B7ABFFC6B5AAFFC5B4A8FFC4B2
        A6FFC4B3A8FFD0C1B7FFBEAEA5FF9E8C82FF6F5850FF00000012000000088C77
        6DFFFAF8F7FFEFEAE5FFEDE5E1FFEBE4DFFFE9E2DDFFE8E0DBFFE6DED8FFE4DC
        D6FFEBE5E0FF755E57FF07050520000000060000000200000000000000000000
        000200000007060504227D675FFFEBE3DFFFC9B9AEFFC8B8ACFFC6B6ABFFC6B4
        A8FFC5B2A6FFC3B1A5FFC5B3A7FFD1C3B9FF715A52FF00000017000000088F79
        6FFFFAF8F7FFF5F0EEFFF0EBE6FFEDE6E1FFECE4E0FFE9E2DDFFE8E0DBFFE6DE
        D9FFEEE7E4FF705A53FF0605041F000000060000000100000000000000000000
        0002000000070504042179635CFFE8E1DBFFCBBBB1FFCAB9AFFFC8B8ADFFC7B7
        ABFFC6B4A9FFC5B3A7FFC7B6AAFFD7C9C2FF745C55FF0000001600000006917B
        72FFC4B8B2FFE4DDDAFFF9F8F7FFF7F3F1FFEFE8E4FFECE4E0FFEAE2DEFFE8E0
        DBFFEEE7E4FF84716BFF211917620000000A0000000400000001000000020000
        00040000000C221B18638C7B73FFDED4CDFFCDBDB3FFCBBCB1FFCABAAFFFC9B8
        ADFFC9BAAFFFD7CBC3FFD1C6C0FFAE9F98FF765F57FF00000011000000031512
        102B473C388273635ACD9D887FFFEBE7E5FFF4EFEDFFEEE7E2FFECE5E1FFEBE3
        DFFFECE4DFFFCCC3BFFF53403ADC070505230000000A00000006000000070000
        000B0706052657453EDBCBC1BBFFD5C8C0FFCFBFB5FFCEBEB4FFCCBCB2FFCDBD
        B2FFCCBFB7FF867169FF62504AD53A302B8C110E0D3600000009000000010000
        000300000005000000094E423D8EC0B2ADFFF8F6F5FFEEEAE5FFEEE7E3FFECE6
        E1FFEBE4DFFFEEE7E3FFAB9E98FF533F38E7201816650A08072B0A08072C2119
        176756423BE7AA9B96FFDFD4CDFFD6C9C0FFD0C1B8FFCFC0B6FFCEBEB4FFD5C9
        C0FFAC9A91FF43363298000000170000000E0000000800000003000000000000
        00010000000200000004120F0E289E897FFCF7F4F3FFF3EFECFFEFE9E5FFEEE8
        E3FFEDE6E1FFEBE3DFFFEEE7E3FFCCC2BFFF887771FF6C5650FF6B5650FF8976
        71FFC8BEB7FFE3D9D4FFDBCEC6FFD9CDC4FFD4C7BFFFD1C3B9FFD0C1B7FFDBD1
        C8FF89756DFD0F0D0B340000000A000000040000000200000001000000000000
        000000000000000000020000000764554FADD3C9C4FFF6F3EFFFF0EAE7FFEFE9
        E6FFEEE8E3FFEDE6E1FFEBE4DFFFECE5E0FFEEE9E5FFEFEAE6FFEEE7E3FFEBE4
        DFFFE4DBD4FFDFD5CDFFDDD2CAFFDCCFC7FFD9CCC4FFD3C5BDFFD8CCC3FFAE9F
        98FF40302CB50000001300000006000000010000000100000000000000000000
        00000000000000000002000000076B5B54B6DBD4CFFFF4F0EEFFF1ECE9FFF0EB
        E8FFEFEAE5FFEEE8E4FFEDE6E2FFEBE5DFFFE9E3DDFFE9E0DBFFE7DED9FFE5DC
        D6FFE3DAD3FFE1D7D1FFE0D5CDFFDDD2CBFFDCCFC7FFD7CAC2FFD8CCC3FFBBAF
        A8FF453531BF0000001300000006000000010000000000000000000000000000
        000000000000000000031C181634AC9A91FDF8F6F5FFF3EFECFFF3EEEAFFF2EC
        E9FFF1EBE8FFF0EAE6FFEFE8E4FFEDE7E2FFEBE5E0FFEAE3DEFFE8E1DBFFE7DE
        D9FFE6DCD5FFE4DAD4FFE1D7D1FFE0D6CEFFDED2CCFFDBCFC7FFD5C8BFFFE0D6
        D1FF806C66FF15100F4800000008000000020000000000000000000000000000
        000000000001000000046D5E57B1DED6D3FFF8F5F4FFF5F0EDFFF4EFECFFF5F1
        EEFFF6F3F0FFF4F0ECFFF0EBE7FFEFE9E4FFEDE7E2FFEBE5E0FFEBE3DEFFE9E1
        DCFFE7DFD9FFE6DDD6FFE4DCD5FFE8DFD9FFE9E1DCFFE3DAD3FFD8CAC3FFDBCE
        C6FFC1B3AEFF483833BC0000000B000000030000000000000000000000000000
        000000000001000000036F6159B4E1D9D5FFFBF9F8FFF8F5F3FFFAF7F6FFDDD5
        D1FFD6CDC8FFF8F5F4FFF9F7F6FFF4F1EEFFF0EAE7FFEEE7E2FFECE5E0FFEBE4
        DFFFEBE4DEFFEFE8E4FFF1ECE9FFD0C6C1FFD9CFCBFFF4F1EEFFECE5E0FFE0D7
        CFFFC4B9B2FF493A35B80000000A000000020000000000000000000000000000
        000000000000000000020403030B73655DB6E0D9D5FFE2DCD8FFB2A198FF6E5E
        58B5685953ADA69187FCC7BAB4FFEDE8E6FFF8F4F3FFEFE9E5FFEEE7E3FFEEE7
        E2FFE0D9D5FFAC9E99FF9F8A81FC64554FB36B5B53BEA9988EFFDAD1CDFFD6CC
        C7FF695A53BB0303031500000006000000010000000000000000000000000000
        00000000000000000001000000020403030B71625AB475655DBA201C1A3A0000
        000800000007110F0D254E443F85AA968CFFFBF9F8FFF2EDE9FFEFE9E5FFF5F1
        EFFF847069FF362B2788100E0D290000000D0000000D201B19446B5C54BD6758
        51B7040303140000000600000002000000000000000000000000000000000000
        0000000000000000000000000001000000020000000300000004000000030000
        000200000002000000040000000A837268D5ECE6E3FFF6F2EFFFF2EDE9FFE6E0
        DDFF614E48D60000000D00000006000000040000000400000006000000080000
        0008000000050000000200000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000001000000010000
        0000000000000000000200000005564A448DD2C6C1FFFCFAF9FFFCFAF9FFD0C5
        C0FF3F332F8F0000000800000002000000010000000100000001000000020000
        0002000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000001000000031F1B1936A48D83FFA28D82FFA28C82FFA18C
        80FF171211380000000400000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000030000000600000008000000080000
        0007000000040000000200000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Width = 60
    end
    object MenuBtn_Status: TdxBarLargeButton
      Caption = 'Status'
      Category = 0
      Hint = 'Status'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      Down = True
      OnClick = MenuBtn_StatusClick
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        0002000000020000000400000006000000070000000800000009000000090000
        0008000000070000000600000004000000030000000200000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000002000000040000
        00080000000D00000012000000170000001B0000001E00000020000000200000
        001F0000001D00000019000000140000000E0000000900000004000000020000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000010000000400000009000000110000
        001A160E0C43482E268E664136B87D5041D8985F4EF89D6251FF9C6250FF975D
        4CF87D4D3FD9643E32B9472B2490170F0C490000001D000000130000000A0000
        0005000000020000000100000000000000000000000000000000000000000000
        0000000000000000000100000002000000060000000F0201011E402A237F8657
        48DEA87566FFBB9488FFC7A99EFFD0B8B0FFDCCAC4FFDECEC8FFDFCFC8FFDCCA
        C4FFD1B8B0FFC6A79DFFBA9285FFA57060FF815041DF3E261F82020101230000
        0012000000080000000300000001000000000000000000000000000000000000
        000000000001000000020000000800000013281B17598E5E50E4B99285FFD5BF
        B7FFE1D2CCFFE1D3CEFFD0BEB6FFA0867AFF806151FF6E4C39FF6F4C39FF7E5E
        4DFF9A7F73FFCAB8AFFFE1D3CFFFE1D3CCFFD5BEB6FFB68C7FFF885444E62617
        135F000000180000000B00000003000000010000000000000000000000000000
        000100000002000000080000001453383093B28678FFDAC6BEFFE3D6D1FFE5D8
        D2FFE6D7D2FFA58C80FF724F3DFF8B6651FF9D7864FFAD8972FFA9866FFFA17C
        67FF8C6855FF724E3CFF997E71FFE2D5D0FFE6D8D3FFE4D6D2FFD9C5BDFFAC7B
        6CFF4F3027990000001A0000000A000000020000000100000000000000010000
        00010000000500000011563B3295C3A298FFE5D7D2FFE6DAD6FFE8DDD7FFE8DD
        D8FF937769FF7C5745FFA27C68FFB18D79FFB99782FFBD9E8BFFBA9886FFBD9D
        8BFFB99683FFA8836FFF7D5946FF896C5CFFE6DAD5FFE9DED9FFE7DBD6FFE5D8
        D3FFBF9B8FFF5031289B00000017000000080000000200000001000000000000
        00030000000C3928226ABA9488FFE4D9D6FFE9DEDAFFEBE1DDFFEDE3DFFFAB94
        89FF805C48FFA37C67FFB28F7AFFC0A38FFFCBB1A2FFD2B9ACFFCFB7AAFFD1B9
        AAFFC8AC9BFFBA9886FFB2917BFF815E4AFF9E8578FFEDE4E0FFECE2DEFFE9E0
        DBFFE8DCD7FFB5887BFF35201A71000000110000000400000001000000010000
        00060C0907249D7364ECDDCFCDFFE9DFDDFFEDE4E1FFEFE7E4FFE1D5D0FF7857
        44FFA17C64FFB18C78FFBE9F8CFFC2AA9BFF786258FF563F36FF543D34FF7660
        57FFC4AEA2FFCFB5A6FFBFA08CFFAD8975FF75513FFFD6C9C3FFF0E8E5FFEDE5
        E2FFECE2DEFFE3D5CEFF966151F00B07052C0000000A00000002000000020000
        000A523B3389C3A59EFFE5DDDFFFEDE5E3FFF0EAE7FFF2ECEAFFB09B90FF8A64
        50FFAB846FFFBC9C88FFC0A798FF573F35FF4B322AFF4B322AFF4B332AFF4A33
        2AFF543B33FFC2AEA1FFCBB19FFFBA9985FF8E6A57FFA1897DFFF3EDEBFFF2EB
        E9FFEFE8E5FFECE3E0FFBE998DFF452B22890000000F00000003000000030000
        000C8A6456DBCABCBEFFE4DDDFFFEEE8E8FFF4EEECFFF6F1EFFF927667FF9A72
        5DFFAF8D76FFC4A997FF7C6559FF52392EFF513A2FFF523A2FFF52392FFF523A
        2EFF51392FFF7D685BFFD4BEAEFFBFA28FFFA4826BFF836353FFF6F2F0FFF5EF
        EDFFF2ECE9FFEAE3E0FFCFBEB9FF7A4D3DD90000001200000004000000030000
        000B42699AD98E8F99EFD8D3D5FFEDE7E8FFF5F1F0FFF8F4F3FF846656FF9D74
        5FFFAF8D75FFC5AB98FF634B3FFF594136FF594135FF5A4135FF5A4136FF5941
        36FF5A4136FF60483DFFD4BEAEFFBFA28EFFAC8A74FF775443FFF8F5F3FFF6F2
        F1FFF0EBEAFFE0DAD7FF85858BE8032662D10000001200000004000000020000
        0008304B6E9E5D7392F8B4B1B4FFE3DFE0FFF4F0EFFFF9F5F4FF866757FFA57E
        68FFB5947EFFCAB19FFF938270FFE8E3C8FFEFEBD0FF978674FF61493DFF6149
        3CFF62493DFF695145FFD7C2B3FFC5A995FFB3927DFF74523FFFF9F6F5FFF4F1
        EFFFE4E1E0FFB9B5B4FF405377F8021945970000000E00000003000000010000
        0005131E2C47688AB4FF677890FFBAB8B9FFE6E4E3FFF4F2F2FF977D6FFF9F7B
        65FFB4957EFFC8AF9BFFDDD5BCFFE8E4C9FFEFEBD0FFECE7CCFF6B5143FF6850
        41FF684F41FF8F796AFFD4BFAEFFC2A993FFA78873FF87695AFFF4F2F1FFE4E2
        E2FFB9B7B6FF525F7BFF4B6899FF010B1D4C0000000900000002000000000000
        0002000000084F74A4DE738EADFF66748BFFAEADADFFDAD9D9FFB3A49CFF8E6B
        58FFB4947CFFBFA48FFFE5DDC3FFE2DCC2FFE9E4C9FFE9E4C9FF705848FF6D54
        45FF755D4DFFCBB9A6FFCBB6A2FFBFA48EFF93735FFFA38E83FFD8D7D7FFAAA9
        AAFF515D76FF677DA0FF244681E3000000100000000500000001000000000000
        0001000000041723324D6A99CFFF7991AEFF657083FF818790FFB2AEADFF6F54
        44FFA38470FFB1957FFFCAB8A2FFE1D8C0FFD4CBB3FF9A8876FF7A6353FF9580
        6FFFCABBA7FFCAB6A2FFBEA891FFAC927DFF6C4E3EFFA7A19EFF767B85FF555D
        73FF7288A4FF4A74B1FF06112659000000090000000200000000000000000000
        00000000000200000005416084AF79A8D7FF87A8C8FF707782FF5D6778FF5E5D
        64FF594236FF7F6A5BFF927F6EFFA1917EFFB0A08FFFB8A998FFB3A593FFB1A3
        92FFA59683FF968574FF806E5EFF594337FF4E4C55FF4C5467FF6B6E78FF829F
        C1FF5D87BFFF163366BB0000000B000000030000000100000000000000000000
        00000000000000000002010202095982AFD97EAFDDFF95C2E7FF89A4BBFF6E73
        7BFF59585FFF484D5BFF454753FF4A484CFF544D4AFF5E544AFF5B5145FF524C
        49FF464349FF3C3E4BFF3D3F4FFF504C54FF6C6C71FF8BA0B4FF8EB5DDFF5986
        BFFF214584E00001020F00000005000000010000000000000000000000000000
        00000000000000000001000000020203050B4E6F95B97EB1DEFF92C4EAFFA1CF
        F0FF9EC4DFFF859AA9FF737D85FF615F62FF514846FF453530FF41302AFF4E42
        40FF5F5B5CFF757A80FF8A9AA6FFA6C3DBFF9DC4E6FF77A3D2FF4470B0FF1636
        6EC5000205140000000500000002000000000000000000000000000000000000
        000000000000000000000000000100000002000000042D405772719FD0F988BB
        E5FF97CAF0FF9FD1F4FFA6D6F6FFACD9F7FFB1DDF8FFB7E0FAFFBBE2FAFFB8E0
        F8FFB4DBF6FFA8D2F0FF97C2E8FF77A6D4FF4E7CB9FF29539AFD0A2044840001
        020C000000040000000100000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000001000000020A0E131C3D59
        799C6692C5F579A9D9FF82B4E0FF8CBFE8FF94C8EEFF99CDF2FF96CAF0FF88BA
        E5FF75A6D7FF5E8DC4FF4774B2FF305B9DFC183460A404091226000000060000
        0003000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        000205070A102434475D3E5A7CA24E72A0D15C89C2FF5885BFFF5380BBFF4F7B
        B8FF3C6195D42A4770A61728406503060A160000000500000003000000010000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000010000000100000002000000030000000300000003000000040000
        0004000000040000000300000002000000020000000100000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000001000000010000
        0001000000010000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Width = 60
    end
    object MenuBtn_Log: TdxBarLargeButton
      Caption = 'Log'
      Category = 0
      Hint = 'Log'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = MenuBtn_LogClick
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000D0D0D40333333FF333333FF0D0D
        0D40000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
        33FF333333FF333333FF333333FF333333FF333333FF0D0D0D400D0D0D403333
        33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
        33FF333333FF333333FF333333FF333333FF0000000000000000000000000000
        0000333333FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000333333FF0000000000000000000000000000
        0000333333FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000333333FF0000000000000000000000000000
        0000333333FF0000000000000000141414661414146614141466141414661414
        1466141414661414146614141466141414661414146600000000000000001414
        1466141414661414146614141466141414661414146614141466141414661414
        1466141414660000000000000000333333FF0000000000000000000000000000
        0000333333FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000333333FF0000000000000000000000000000
        0000333333FF0000000000000000141414661414146614141466141414661414
        1466141414661414146614141466141414661414146600000000000000001414
        1466141414661414146614141466141414661414146614141466141414661414
        1466141414660000000000000000333333FF0000000000000000000000000000
        0000333333FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000333333FF0000000000000000000000000000
        0000333333FF0000000000000000141414661414146614141466141414661414
        1466141414661414146614141466141414661414146600000000000000001414
        1466141414661414146614141466141414661414146614141466141414661414
        1466141414660000000000000000333333FF0000000000000000000000000000
        0000333333FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000333333FF0000000000000000000000000000
        0000333333FF0000000000000000141414661414146614141466141414661414
        1466141414661414146614141466141414661414146600000000000000001414
        1466141414661414146614141466141414661414146614141466141414661414
        1466141414660000000000000000333333FF0000000000000000000000000000
        0000333333FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000333333FF0000000000000000000000000000
        0000333333FF0000000000000000141414661414146614141466141414661414
        1466141414661414146614141466141414661414146600000000000000001414
        1466141414661414146614141466141414661414146614141466141414661414
        1466141414660000000000000000333333FF0000000000000000000000000000
        0000333333FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000333333FF0000000000000000000000000000
        0000333333FF0000000000000000141414661414146614141466141414661414
        1466141414661414146614141466141414661414146600000000000000001414
        1466141414661414146614141466141414661414146614141466141414661414
        1466141414660000000000000000333333FF0000000000000000000000000000
        0000333333FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000333333FF0000000000000000000000000000
        0000333333FF0000000000000000141414661414146614141466141414661414
        1466141414661414146614141466141414661414146600000000000000001414
        1466141414661414146614141466141414661414146614141466141414661414
        1466141414660000000000000000333333FF0000000000000000000000000000
        0000333333FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000333333FF0000000000000000000000000000
        0000333333FF0000000000000000141414661414146614141466141414661414
        1466141414661414146614141466141414661414146600000000000000001414
        1466141414661414146614141466141414661414146614141466141414661414
        1466141414660000000000000000333333FF0000000000000000000000000000
        0000333333FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000333333FF0000000000000000000000000000
        0000333333FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000D0D0D40333333FF333333FF0D0D
        0D40000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000333333FF0000000000000000000000000000
        0000333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
        33FF333333FF333333FF333333FF333333FF333333FF0D0D0D400D0D0D403333
        33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
        33FF333333FF333333FF333333FF333333FF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Width = 60
    end
  end
  object tm_Info: TTimer
    Enabled = False
    Interval = 250
    OnTimer = tm_InfoTimer
    Left = 579
  end
  object tm_Polling: TTimer
    Enabled = False
    OnTimer = tm_PollingTimer
    Left = 550
  end
  object tm_UpdateDelay: TTimer
    Enabled = False
    OnTimer = tm_UpdateDelayTimer
    Left = 521
  end
  object OpenDialog: TOpenDialog
    Left = 712
    Top = 8
  end
end
