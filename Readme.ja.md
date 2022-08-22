# Launch DaVinci Resolve with Python

## DaVinci Resolve で Python 3 Not Foundエラーに遭遇した方々へ

恐らく、DaVinci ResolveはPython実行ファイルを探すときに、%PATH%内から（virtualenvではないデフォルトの）pythonファイル/フォルダ構成をもつフォルダを探し、そのpythonを実行します。
ところで、Windowsでは、pythonをインストールしていない状態でも、PowerShellやコマンドプロンプトで`python`と入力すると、デフォルトで`%USERPROFILE%\AppData\Local\Microsoft\WindowsApps\python.exe`(0KB)
が参照されます。この`python.exe`(0KB)は、Microsoft StoreからPythonをインストールしていない場合はMicrosoft Storeを開き、Microsoft StoreからPythonをインストールした後は、本物の`python.exe`(not 0KB)を呼び出すもので、DaVinci Resolveが期待するものとは異なります。従って、PowerShellやコマンドプロンプトで`python`を呼び出せても、本物の`python.exe`は`%PATH%`にはないので、`Python 3 Not Found`エラーが発生します。
