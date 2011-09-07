object MainForm: TMainForm
  Left = 192
  Top = 114
  Width = 1142
  Height = 656
  Caption = 'MainForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object spl2: TSplitter
    Left = 553
    Top = 0
    Width = 4
    Height = 622
    Cursor = crHSplit
  end
  object grp1: TGroupBox
    Left = 0
    Top = 0
    Width = 553
    Height = 622
    Align = alLeft
    Caption = ' Stream source '
    TabOrder = 0
    object spl1: TSplitter
      Left = 221
      Top = 42
      Width = 4
      Height = 505
      Cursor = crHSplit
    end
    object pnl2: TPanel
      Left = 2
      Top = 547
      Width = 549
      Height = 73
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object lblFileType: TLabel
        Left = 68
        Top = 28
        Width = 50
        Height = 13
        Caption = 'lblFileType'
        OnClick = lblFileTypeClick
      end
      object btnFree: TButton
        Left = 4
        Top = 28
        Width = 50
        Height = 21
        Action = actClose
        TabOrder = 0
      end
      object btnText: TButton
        Left = 4
        Top = 4
        Width = 50
        Height = 21
        Caption = 'Open'
        TabOrder = 1
        OnClick = btnTextClick
      end
      object rb1: TRadioButton
        Left = 68
        Top = 8
        Width = 113
        Height = 17
        Caption = #1050#1072#1082' '#1092#1072#1081#1083
        TabOrder = 2
      end
      object rbAsStream: TRadioButton
        Left = 160
        Top = 8
        Width = 113
        Height = 17
        Caption = #1050#1072#1082' '#1087#1086#1090#1086#1082
        Checked = True
        TabOrder = 3
        TabStop = True
      end
    end
    object ShellTreeView1: TShellTreeView
      Left = 2
      Top = 42
      Width = 219
      Height = 505
      ObjectTypes = [otFolders]
      Root = 'rfDesktop'
      ShellComboBox = ShellComboBox1
      ShellListView = ShellListView1
      UseShellImages = True
      Align = alLeft
      AutoRefresh = False
      Indent = 19
      ParentColor = False
      RightClickSelect = True
      ShowRoot = False
      TabOrder = 1
    end
    object ShellListView1: TShellListView
      Left = 225
      Top = 42
      Width = 326
      Height = 505
      ObjectTypes = [otFolders, otNonFolders]
      Root = 'rfDesktop'
      ShellTreeView = ShellTreeView1
      ShellComboBox = ShellComboBox1
      Sorted = True
      Align = alClient
      ReadOnly = False
      HideSelection = False
      OnChange = ShellListView1Change
      TabOrder = 2
      ViewStyle = vsReport
    end
    object pnl1: TPanel
      Left = 2
      Top = 15
      Width = 549
      Height = 27
      Align = alTop
      BevelOuter = bvNone
      Caption = 'pnl1'
      TabOrder = 3
      DesignSize = (
        549
        27)
      object ShellComboBox1: TShellComboBox
        Left = 3
        Top = 3
        Width = 546
        Height = 22
        Root = 'rfDesktop'
        ShellTreeView = ShellTreeView1
        ShellListView = ShellListView1
        UseShellImages = True
        Anchors = [akLeft, akTop, akRight]
        DropDownCount = 8
        TabOrder = 0
      end
    end
  end
  object pnlViewer: TPanel
    Left = 557
    Top = 0
    Width = 577
    Height = 622
    Align = alClient
    BevelInner = bvLowered
    BorderWidth = 4
    Color = clSkyBlue
    TabOrder = 1
  end
  object ActionList: TActionList
    Left = 144
    Top = 576
    object actClose: TAction
      Caption = 'Close'
      OnExecute = actCloseClick
      OnUpdate = actCloseUpdate
    end
  end
end
