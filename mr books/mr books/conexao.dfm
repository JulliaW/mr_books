object dmMrBooks: TdmMrBooks
  OldCreateOrder = False
  Height = 386
  Width = 651
  object conexao: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=mrBoo' +
      'ks'
    LoginPrompt = False
    Left = 496
    Top = 112
  end
  object queryCliente: TADOQuery
    Active = True
    Connection = conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from cadastro_cliente')
    Left = 128
    Top = 24
  end
  object dsCliente: TDataSource
    DataSet = queryCliente
    Left = 336
    Top = 16
  end
  object queryFuncionario: TADOQuery
    Active = True
    Connection = conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from cadastro_funcionario'
      '')
    Left = 128
    Top = 88
  end
  object dsFuncionario: TDataSource
    DataSet = queryFuncionario
    Left = 336
    Top = 80
  end
  object queryProduto: TADOQuery
    Active = True
    Connection = conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from cadastro_funcionario')
    Left = 128
    Top = 160
  end
  object dsProduto: TDataSource
    DataSet = queryProduto
    Left = 336
    Top = 160
  end
  object queryComunicado: TADOQuery
    Active = True
    Connection = conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from comunicado')
    Left = 128
    Top = 232
  end
  object dsComunicado: TDataSource
    DataSet = queryComunicado
    Left = 336
    Top = 232
  end
  object queryVenda: TADOQuery
    Active = True
    Connection = conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from venda')
    Left = 128
    Top = 312
  end
  object dsVenda: TDataSource
    DataSet = queryVenda
    Left = 336
    Top = 312
  end
end
