object Dm: TDm
  OldCreateOrder = False
  Height = 365
  Width = 557
  object conCon: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=localhost'
      'Port=3050'
      'CharacterSet=utF8'
      
        'Database=C:\Users\Luccas\Desktop\Crud_POO_Rest\BancoDeDados\DADO' +
        'S.FDB'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 216
    Top = 136
  end
end
