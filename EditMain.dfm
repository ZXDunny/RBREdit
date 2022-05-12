object Form1: TForm1
  Left = 66
  Top = 67
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Edit, Andy... Edit!'
  ClientHeight = 450
  ClientWidth = 675
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 88
    Top = 60
    Width = 88
    Height = 13
    Caption = 'Current map layout'
  end
  object Label2: TLabel
    Left = 536
    Top = 60
    Width = 61
    Height = 13
    Caption = 'Wall Graphic'
  end
  object Label3: TLabel
    Left = 12
    Top = 16
    Width = 82
    Height = 13
    Caption = 'Currently Editing: '
  end
  object Bevel1: TBevel
    Left = 12
    Top = 44
    Width = 653
    Height = 2
  end
  object Label6: TLabel
    Left = 536
    Top = 220
    Width = 26
    Height = 13
    Caption = 'Walls'
  end
  object Label7: TLabel
    Left = 608
    Top = 220
    Width = 26
    Height = 13
    Caption = 'Road'
  end
  object FastIMG1: TFastIMG
    Left = 12
    Top = 84
    Width = 512
    Height = 352
    Transparent = False
    Picture = '(None)'
    AutoSize = False
    SizeMode = smGDI
    DrawStyle = dsDraw
    OnMouseDown = FastIMG1MouseDown
    OnMouseMove = FastIMG1MouseMove
    OnMouseUp = FastIMG1MouseUp
  end
  object FastIMG2: TFastIMG
    Left = 536
    Top = 84
    Width = 128
    Height = 128
    Transparent = False
    Picture = '(None)'
    AutoSize = False
    SizeMode = smGDI
    DrawStyle = dsDraw
    OnMouseDown = FastIMG2MouseDown
    OnMouseMove = FastIMG2MouseMove
    OnMouseUp = FastIMG2MouseUp
  end
  object ComboBox1: TComboBox
    Left = 100
    Top = 12
    Width = 153
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 2
    OnChange = ComboBox1Change
    Items.Strings = (
      'Screen 1'
      'Screen 2'
      'Screen 3'
      'Screen 4'
      'Screen 5')
  end
  object Button1: TButton
    Left = 512
    Top = 12
    Width = 69
    Height = 21
    Caption = 'Load...'
    PopupMenu = PopupMenu1
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button3: TButton
    Left = 588
    Top = 12
    Width = 75
    Height = 21
    Caption = 'Save As...'
    TabOrder = 4
    OnClick = Button3Click
  end
  object FastIMG3: TFastIMG
    Left = 56
    Top = 92
    Width = 256
    Height = 16
    Transparent = False
    Picture = '(None)'
    AutoSize = False
    SizeMode = smGDI
    DrawStyle = dsDraw
    OnMouseDown = FastIMG3MouseDown
    OnMouseMove = FastIMG3MouseMove
    OnMouseUp = FastIMG3MouseUp
  end
  object Edit1: TEdit
    Left = 260
    Top = 12
    Width = 245
    Height = 21
    TabOrder = 6
    Text = 'Edit1'
    OnChange = Edit1Change
  end
  object FastIMG4: TFastIMG
    Left = 536
    Top = 242
    Width = 56
    Height = 195
    Transparent = False
    Picture = '(None)'
    AutoSize = False
    SizeMode = smGDI
    DrawStyle = dsDraw
    OnMouseDown = FastIMG4MouseDown
  end
  object FastIMG5: TFastIMG
    Left = 608
    Top = 242
    Width = 56
    Height = 195
    Transparent = False
    Picture = '(None)'
    AutoSize = False
    SizeMode = smGDI
    DrawStyle = dsDraw
    OnMouseDown = FastIMG5MouseDown
  end
  object Button2: TButton
    Left = 12
    Top = 56
    Width = 69
    Height = 21
    Caption = 'Clear Map'
    PopupMenu = PopupMenu1
    TabOrder = 9
    OnClick = Button2Click
  end
  object CheckBox1: TCheckBox
    Left = 434
    Top = 60
    Width = 89
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Editing Grids'
    TabOrder = 10
    OnClick = CheckBox1Click
  end
  object PopupMenu1: TPopupMenu
    Left = 20
    Top = 92
    object Restore1: TMenuItem
      Caption = 'From Default'
      OnClick = Restore1Click
    end
    object FromOriginal1: TMenuItem
      Caption = 'From Snap...'
      OnClick = FromOriginal1Click
    end
  end
end
