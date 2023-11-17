object CadastroPai: TCadastroPai
  Left = 0
  Top = 0
  Align = alClient
  Caption = 'CadastroPai'
  ClientHeight = 674
  ClientWidth = 1030
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl13: TLabel
    Left = 23
    Top = 47
    Width = 75
    Height = 13
    Caption = 'RAZAO SOCIAL'
    FocusControl = dbedtRAZAO_SOCIAL
  end
  object Label3: TLabel
    Left = 23
    Top = 87
    Width = 50
    Height = 13
    Caption = 'FANTASIA'
    FocusControl = dbedtFANTASIA
  end
  object Label4: TLabel
    Left = 23
    Top = 127
    Width = 48
    Height = 13
    Caption = 'CPF/CNPJ'
    FocusControl = dbedtCPF_CNPJ
  end
  object Label5: TLabel
    Left = 23
    Top = 167
    Width = 115
    Height = 13
    Caption = 'TIPO FISICO/JURIDICO'
    FocusControl = dbedtTIPO_FJ
  end
  object Label6: TLabel
    Left = 579
    Top = 47
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = dbedtNOME
  end
  object Label7: TLabel
    Left = 579
    Top = 87
    Width = 30
    Height = 13
    Caption = 'EMAIL'
    FocusControl = dbedtEMAIL
  end
  object Label8: TLabel
    Left = 579
    Top = 127
    Width = 22
    Height = 13
    Caption = 'SITE'
    FocusControl = dbedtSITE
  end
  object Label9: TLabel
    Left = 579
    Top = 167
    Width = 54
    Height = 13
    Caption = 'ENDERECO'
    FocusControl = dbedtENDERECO
  end
  object Label10: TLabel
    Left = 579
    Top = 207
    Width = 75
    Height = 13
    Caption = 'COMPLEMENTO'
    FocusControl = dbedtCOMPLEMENTO
  end
  object Label11: TLabel
    Left = 23
    Top = 213
    Width = 43
    Height = 13
    Caption = 'NUMERO'
    FocusControl = dbedtNUMERO
  end
  object Label12: TLabel
    Left = 23
    Top = 253
    Width = 10
    Height = 13
    Caption = 'IE'
    FocusControl = dbedtIE
  end
  object Label14: TLabel
    Left = 579
    Top = 253
    Width = 39
    Height = 13
    Caption = 'BAIRRO'
    FocusControl = dbedtBAIRRO
  end
  object pnlCabecalho: TPanel
    Left = 0
    Top = 0
    Width = 1030
    Height = 41
    Align = alTop
    TabOrder = 0
    object btnNovo: TBitBtn
      Left = 0
      Top = 0
      Width = 81
      Height = 41
      Caption = 'Novo'
      TabOrder = 0
      OnClick = btnNovoClick
    end
    object btnGravar: TBitBtn
      Left = 87
      Top = 0
      Width = 81
      Height = 41
      Caption = 'Gravar'
      TabOrder = 1
      OnClick = btnGravarClick
    end
    object btnCancelar: TBitBtn
      Left = 174
      Top = 0
      Width = 81
      Height = 41
      Caption = 'Cancelar'
      TabOrder = 2
      OnClick = btnCancelarClick
    end
    object btnExcluir: TBitBtn
      Left = 261
      Top = 0
      Width = 81
      Height = 41
      Caption = 'Excluir'
      TabOrder = 3
      OnClick = btnExcluirClick
    end
    object btnSair: TBitBtn
      Left = 948
      Top = 1
      Width = 81
      Height = 39
      Align = alRight
      Caption = 'Sair'
      TabOrder = 4
      OnClick = btnSairClick
    end
    object btnInsClass: TButton
      Left = 616
      Top = 1
      Width = 161
      Height = 40
      Caption = 'Insere por Classe'
      TabOrder = 5
      OnClick = btnInsClassClick
    end
  end
  object dbedtRAZAO_SOCIAL: TDBEdit
    Left = 23
    Top = 66
    Width = 400
    Height = 21
    DataField = 'RAZAO_SOCIAL'
    DataSource = DataSource
    TabOrder = 1
  end
  object dbedtFANTASIA: TDBEdit
    Left = 23
    Top = 103
    Width = 400
    Height = 21
    DataField = 'FANTASIA'
    DataSource = DataSource
    TabOrder = 2
  end
  object dbedtCPF_CNPJ: TDBEdit
    Left = 23
    Top = 143
    Width = 400
    Height = 21
    DataField = 'CPF_CNPJ'
    DataSource = DataSource
    TabOrder = 3
  end
  object dbedtTIPO_FJ: TDBEdit
    Left = 23
    Top = 186
    Width = 73
    Height = 21
    DataField = 'TIPO_FJ'
    DataSource = DataSource
    TabOrder = 4
  end
  object dbedtNOME: TDBEdit
    Left = 579
    Top = 63
    Width = 400
    Height = 21
    DataField = 'NOME'
    DataSource = DataSource
    TabOrder = 7
  end
  object dbedtEMAIL: TDBEdit
    Left = 579
    Top = 103
    Width = 400
    Height = 21
    DataField = 'EMAIL'
    DataSource = DataSource
    TabOrder = 8
  end
  object dbedtSITE: TDBEdit
    Left = 579
    Top = 143
    Width = 400
    Height = 21
    DataField = 'SITE'
    DataSource = DataSource
    TabOrder = 9
  end
  object dbedtENDERECO: TDBEdit
    Left = 579
    Top = 183
    Width = 400
    Height = 21
    DataField = 'ENDERECO'
    DataSource = DataSource
    TabOrder = 10
  end
  object dbedtCOMPLEMENTO: TDBEdit
    Left = 579
    Top = 223
    Width = 400
    Height = 21
    DataField = 'COMPLEMENTO'
    DataSource = DataSource
    TabOrder = 11
  end
  object dbedtNUMERO: TDBEdit
    Left = 23
    Top = 229
    Width = 400
    Height = 21
    DataField = 'NUMERO'
    DataSource = DataSource
    TabOrder = 5
  end
  object dbedtIE: TDBEdit
    Left = 23
    Top = 272
    Width = 400
    Height = 21
    DataField = 'IE'
    DataSource = DataSource
    TabOrder = 6
  end
  object dbedtBAIRRO: TDBEdit
    Left = 579
    Top = 269
    Width = 400
    Height = 21
    DataField = 'BAIRRO'
    DataSource = DataSource
    TabOrder = 12
  end
  object dbgrd1: TDBGrid
    Left = 0
    Top = 400
    Width = 1030
    Height = 274
    Align = alBottom
    DataSource = DataSource
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_CLIENTE'
        Title.Alignment = taCenter
        Title.Caption = 'ID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'RAZAO_SOCIAL'
        Title.Alignment = taCenter
        Title.Caption = 'RAZAO SOCIAL'
        Width = 275
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FANTASIA'
        Title.Alignment = taCenter
        Width = 252
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF_CNPJ'
        Title.Alignment = taCenter
        Title.Caption = 'CPF/CNPJ'
        Width = 237
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO_FJ'
        Title.Alignment = taCenter
        Title.Caption = 'TIPO FISICO/JURIDICO'
        Width = 113
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Alignment = taCenter
        Width = 400
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
        Width = 400
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO'
        Title.Alignment = taCenter
        Width = 180
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IE'
        Title.Alignment = taCenter
        Width = 400
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
  object FDQry: TFDQuery
    FieldOptions.PositionMode = poFirst
    Connection = Dm.conCon
    UpdateOptions.AutoIncFields = 'ID_CLIENTE'
    SQL.Strings = (
      'select * from cliente where dt_excluido is null')
    Left = 480
    Top = 144
    object FDQryID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQryRAZAO_SOCIAL: TWideStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Size = 80
    end
    object FDQryFANTASIA: TWideStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 80
    end
    object FDQryCPF_CNPJ: TWideStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
    end
    object FDQryTIPO_FJ: TWideStringField
      FieldName = 'TIPO_FJ'
      Origin = 'TIPO_FJ'
      Size = 1
    end
    object FDQryNOME: TWideStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 80
    end
    object FDQryEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 255
    end
    object FDQrySITE: TWideStringField
      FieldName = 'SITE'
      Origin = 'SITE'
      Size = 255
    end
    object FDQryENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 255
    end
    object FDQryCOMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 40
    end
    object FDQryNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object FDQryIE: TWideStringField
      FieldName = 'IE'
      Origin = 'IE'
      Size = 30
    end
    object FDQryDT_EXCLUIDO: TDateField
      FieldName = 'DT_EXCLUIDO'
      Origin = 'DT_EXCLUIDO'
    end
    object FDQryBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
  end
  object FDTrans: TFDTransaction
    Connection = Dm.conCon
    Left = 480
    Top = 256
  end
  object DataSource: TDataSource
    AutoEdit = False
    DataSet = FDQry
    Left = 483
    Top = 199
  end
end
