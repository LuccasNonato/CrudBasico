inherited CadastroClientes: TCadastroClientes
  Caption = 'CadastroClientes'
  ClientHeight = 599
  ClientWidth = 923
  ExplicitWidth = 939
  ExplicitHeight = 638
  PixelsPerInch = 96
  TextHeight = 13
  object lbl3: TLabel [0]
    Left = 16
    Top = 90
    Width = 50
    Height = 13
    Caption = 'FANTASIA'
    FocusControl = dbedtFANTASIA
  end
  object lbl4: TLabel [1]
    Left = 16
    Top = 133
    Width = 50
    Height = 13
    Caption = 'CPF_CNPJ'
    FocusControl = dbedtCPF_CNPJ
  end
  object lbl5: TLabel [2]
    Left = 425
    Top = 90
    Width = 41
    Height = 13
    Caption = 'TIPO_FJ'
    FocusControl = dbedtTIPO_FJ
  end
  object lbl6: TLabel [3]
    Left = 16
    Top = 184
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = dbedtNOME
  end
  object lbl7: TLabel [4]
    Left = 425
    Top = 47
    Width = 30
    Height = 13
    Caption = 'EMAIL'
    FocusControl = dbedtEMAIL
  end
  object lbl8: TLabel [5]
    Left = 425
    Top = 136
    Width = 22
    Height = 13
    Caption = 'SITE'
    FocusControl = dbedtSITE
  end
  object lbl9: TLabel [6]
    Left = 425
    Top = 184
    Width = 54
    Height = 13
    Caption = 'ENDERECO'
    FocusControl = dbedtENDERECO
  end
  object lbl10: TLabel [7]
    Left = 425
    Top = 227
    Width = 75
    Height = 13
    Caption = 'COMPLEMENTO'
    FocusControl = dbedtCOMPLEMENTO
  end
  object lbl11: TLabel [8]
    Left = 16
    Top = 227
    Width = 43
    Height = 13
    Caption = 'NUMERO'
    FocusControl = dbedtNUMERO
  end
  object lbl12: TLabel [9]
    Left = 16
    Top = 270
    Width = 10
    Height = 13
    Caption = 'IE'
  end
  object lbl14: TLabel [10]
    Left = 192
    Top = 608
    Width = 39
    Height = 13
    Caption = 'BAIRRO'
    FocusControl = dbedtBAIRRO
  end
  inherited lbl1: TLabel
    Left = 8
    ExplicitLeft = 8
  end
  inherited lbl13: TLabel
    Left = 8
    ExplicitLeft = 8
  end
  inherited Label3: TLabel
    Left = 8
    ExplicitLeft = 8
  end
  inherited Label4: TLabel
    Left = 8
    ExplicitLeft = 8
  end
  inherited Label5: TLabel
    Left = 8
    ExplicitLeft = 8
  end
  inherited Label6: TLabel
    Left = 572
    ExplicitLeft = 572
  end
  inherited Label7: TLabel
    Left = 572
    ExplicitLeft = 572
  end
  inherited Label8: TLabel
    Left = 572
    ExplicitLeft = 572
  end
  inherited Label9: TLabel
    Left = 572
    ExplicitLeft = 572
  end
  inherited Label10: TLabel
    Left = 572
    ExplicitLeft = 572
  end
  inherited Label11: TLabel
    Left = 8
    ExplicitLeft = 8
  end
  inherited Label12: TLabel
    Left = 8
    ExplicitLeft = 8
  end
  inherited Label13: TLabel
    Left = 572
    ExplicitLeft = 572
  end
  inherited Label14: TLabel
    Left = 572
    ExplicitLeft = 572
  end
  object dbedtBAIRRO: TDBEdit [25]
    Left = 192
    Top = 624
    Width = 654
    Height = 21
    DataField = 'BAIRRO'
    DataSource = ds1
    TabOrder = 25
  end
  object dbedtNUMERO: TDBEdit [26]
    Left = 16
    Top = 246
    Width = 264
    Height = 21
    DataField = 'NUMERO'
    DataSource = ds1
    Enabled = False
    TabOrder = 24
  end
  object dbedtCOMPLEMENTO: TDBEdit [27]
    Left = 425
    Top = 243
    Width = 400
    Height = 21
    DataField = 'COMPLEMENTO'
    DataSource = ds1
    Enabled = False
    TabOrder = 23
  end
  object dbedtENDERECO: TDBEdit [28]
    Left = 425
    Top = 200
    Width = 400
    Height = 21
    DataField = 'ENDERECO'
    DataSource = ds1
    Enabled = False
    TabOrder = 22
  end
  object dbedtSITE: TDBEdit [29]
    Left = 425
    Top = 152
    Width = 400
    Height = 21
    DataField = 'SITE'
    DataSource = ds1
    Enabled = False
    TabOrder = 21
  end
  object dbedtEMAIL: TDBEdit [30]
    Left = 425
    Top = 63
    Width = 400
    Height = 21
    DataField = 'EMAIL'
    DataSource = ds1
    Enabled = False
    TabOrder = 20
  end
  object dbedtNOME: TDBEdit [31]
    Left = 16
    Top = 200
    Width = 394
    Height = 21
    DataField = 'NOME'
    DataSource = ds1
    Enabled = False
    TabOrder = 19
  end
  object dbedtTIPO_FJ: TDBEdit [32]
    Left = 425
    Top = 109
    Width = 175
    Height = 21
    DataField = 'TIPO_FJ'
    DataSource = ds1
    Enabled = False
    TabOrder = 18
  end
  object dbedtCPF_CNPJ: TDBEdit [33]
    Left = 16
    Top = 149
    Width = 264
    Height = 21
    DataField = 'CPF_CNPJ'
    DataSource = ds1
    Enabled = False
    TabOrder = 17
  end
  object dbedtFANTASIA: TDBEdit [34]
    Left = 16
    Top = 106
    Width = 300
    Height = 21
    DataField = 'FANTASIA'
    DataSource = ds1
    Enabled = False
    TabOrder = 16
  end
  inherited pnlCabecalho: TPanel
    Width = 923
    ExplicitLeft = 0
    ExplicitWidth = 923
    inherited btnNovo: TBitBtn
      OnClick = btnNovoClick
    end
    inherited btnSair: TBitBtn
      Left = 841
      ExplicitLeft = 841
      ExplicitTop = 1
      ExplicitHeight = 39
    end
  end
  inherited dbedtID_CLIENTE: TDBEdit
    Left = 144
    Top = 122
    ExplicitLeft = 144
    ExplicitTop = 122
  end
  inherited DBEdit2: TDBEdit
    Left = 8
    ExplicitLeft = 8
  end
  inherited DBEdit3: TDBEdit
    Left = 8
    ExplicitLeft = 8
  end
  inherited DBEdit4: TDBEdit
    Left = 8
    ExplicitLeft = 8
  end
  inherited DBEdit5: TDBEdit
    Left = 8
    ExplicitLeft = 8
  end
  inherited DBEdit6: TDBEdit
    Left = 572
    ExplicitLeft = 572
  end
  inherited DBEdit7: TDBEdit
    Left = 572
    ExplicitLeft = 572
  end
  inherited DBEdit8: TDBEdit
    Left = 572
    ExplicitLeft = 572
  end
  inherited DBEdit9: TDBEdit
    Left = 572
    ExplicitLeft = 572
  end
  inherited DBEdit10: TDBEdit
    Left = 572
    ExplicitLeft = 572
  end
  inherited DBEdit11: TDBEdit
    Left = 8
    ExplicitLeft = 8
  end
  inherited DBEdit12: TDBEdit
    Left = 8
    TabOrder = 15
    ExplicitLeft = 8
  end
  inherited DBEdit13: TDBEdit
    Left = 572
    ExplicitLeft = 572
  end
  inherited DBEdit14: TDBEdit
    Left = 572
    ExplicitLeft = 572
  end
  inherited dbgrd1: TDBGrid
    Top = 360
    Width = 923
    Height = 239
    DataSource = ds1
    TabOrder = 12
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID_CLIENTE'
        Title.Alignment = taCenter
        Title.Caption = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RAZAO_SOCIAL'
        Title.Alignment = taCenter
        Title.Caption = 'RAZAO SOCIAL'
        Width = 226
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FANTASIA'
        Title.Alignment = taCenter
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF_CNPJ'
        Title.Alignment = taCenter
        Title.Caption = 'CPF/CNPJ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO_FJ'
        Title.Alignment = taCenter
        Title.Caption = 'TIPO F/J'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Alignment = taCenter
        Width = 189
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMAIL'
        Title.Alignment = taCenter
        Width = 400
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SITE'
        Title.Alignment = taCenter
        Width = 400
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDERECO'
        Title.Alignment = taCenter
        Width = 400
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMPLEMENTO'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO'
        Title.Alignment = taCenter
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IE'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DT_EXCLUIDO'
        Title.Alignment = taCenter
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAIRRO'
        Title.Alignment = taCenter
        Width = 400
        Visible = True
      end>
  end
  inherited FDQry: TFDQuery
    Left = 553
    Top = 288
  end
  inherited FDTrans: TFDTransaction
    Left = 609
    Top = 288
  end
  inherited DataSource: TDataSource
    Left = 476
  end
  object ds1: TDataSource
    DataSet = FDQry
    Left = 449
    Top = 304
  end
end
