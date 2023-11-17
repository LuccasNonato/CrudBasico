inherited uFormCadastroPaiPrincipal: TuFormCadastroPaiPrincipal
  Caption = 'uFormCadastroPaiPrincipal'
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel [12]
    Left = 579
    Top = 296
    Width = 64
    Height = 13
    Caption = 'Consulta Cep'
  end
  inherited dbedtNUMERO: TDBEdit
    Top = 226
    ExplicitTop = 226
  end
  inherited dbgrd1: TDBGrid
    Top = 464
    Height = 210
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
        FieldName = 'DT_EXCLUIDO'
        Title.Alignment = taCenter
        Title.Caption = 'DATA EXCLUS'#195'O'
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
  object edtConsCep: TEdit [27]
    Left = 579
    Top = 315
    Width = 121
    Height = 21
    TabOrder = 14
    Text = 'edtConsCep'
    OnExit = edtConsCepExit
  end
  object cxMemo: TcxMemo [28]
    Left = 742
    Top = 300
    Lines.Strings = (
      'cxMemo')
    Properties.AutoSelect = True
    Properties.ScrollBars = ssVertical
    TabOrder = 15
    Height = 158
    Width = 237
  end
  inherited FDQry: TFDQuery
    Active = True
    inherited FDQryID_CLIENTE: TIntegerField
      AutoGenerateValue = arAutoInc
      Required = False
    end
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'http://viacep.com.br/ws'
    Params = <>
    RaiseExceptionOn500 = False
    SynchronizedEvents = False
    Left = 184
    Top = 352
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Resource = '37900546/json/'
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 256
    Top = 352
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json'
    Left = 336
    Top = 352
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Active = True
    Dataset = MemTable
    FieldDefs = <>
    Response = RESTResponse1
    Left = 480
    Top = 320
  end
  object MemTable: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'cep'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'logradouro'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'complemento'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'bairro'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'localidade'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'uf'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'ibge'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'gia'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'ddd'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'siafi'
        DataType = ftWideString
        Size = 255
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 408
    Top = 352
  end
end
