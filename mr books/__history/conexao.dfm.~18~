object dmMrBooks: TdmMrBooks
  OldCreateOrder = False
  Height = 350
  Width = 600
  object conexao: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=mrboo' +
      'ks'
    LoginPrompt = False
    Left = 336
    Top = 264
  end
  object queryCliente: TADOQuery
    Active = True
    Connection = conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from cadastro_cliente')
    Left = 72
    Top = 32
  end
  object dsCliente: TDataSource
    AutoEdit = False
    DataSet = queryCliente
    Left = 168
    Top = 32
  end
  object queryFuncionario: TADOQuery
    Active = True
    Connection = conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from cadastro_funcionario'
      '')
    Left = 72
    Top = 96
  end
  object dsFuncionario: TDataSource
    DataSet = queryFuncionario
    Left = 168
    Top = 96
  end
  object queryProduto: TADOQuery
    Active = True
    Connection = conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from cadastro_produto')
    Left = 72
    Top = 168
  end
  object dsProduto: TDataSource
    DataSet = queryProduto
    Left = 168
    Top = 176
  end
  object queryLogin: TADOQuery
    Active = True
    Connection = conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from cadastro_funcionario')
    Left = 88
    Top = 256
  end
  object dsLogin: TDataSource
    DataSet = queryLogin
    Left = 184
    Top = 264
  end
  object queryClienteConsulta: TADOQuery
    Active = True
    Connection = conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from cadastro_cliente')
    Left = 344
    Top = 32
  end
  object dsClienteConsulta: TDataSource
    DataSet = queryClienteConsulta
    Left = 464
    Top = 32
  end
  object queryProdutoConsulta: TADOQuery
    Active = True
    Connection = conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from cadastro_produto')
    Left = 344
    Top = 96
  end
  object dsProdutoConsulta: TDataSource
    DataSet = queryProdutoConsulta
    Left = 464
    Top = 96
  end
  object queryFuncionarioConsulta: TADOQuery
    Active = True
    Connection = conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from cadastro_funcionario')
    Left = 344
    Top = 168
  end
  object dsFuncionarioConsulta: TDataSource
    DataSet = queryFuncionarioConsulta
    Left = 464
    Top = 168
  end
end
