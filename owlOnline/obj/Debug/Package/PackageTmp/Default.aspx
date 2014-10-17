<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="owlOnline._Default" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>owlOnline</title>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="lib/codemirror.css" />
    <link rel="stylesheet" href="css/bootstrap.min.css" />

    <script src="lib/codemirror.js" type = "text/javascript"></script>
    <script src="mode/xml/xml.js"></script>
</head>

<body style="background-color:#eee;">
    <div class="content">
    <nav class="navbar navbar-default" role="navigation">
        <div class="container-fluid">
            <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">owlOnline</a>
            </div>
        </div>
    </nav>

    <form id="form1" runat="server">
        <h2>owl-Code eingeben:</h2>
        <div class = "well">
            <textarea id="TextBox1" runat="server"></textarea>
        </div>
        <asp:Button ID="ButtonSubmit" runat="server" onclick="ButtonSubmit_Click" Text="Absenden" 
         />

    </form>

    <div id = "result" runat="server">
    <h2>Generierter Code:</h2>
    <div class = "well">
        <textarea id="TextBox2" runat="server"></textarea>
    </div>

    <h2>Generierte Seite:</h2>
    <div class="well iframe">
        <iframe id="IFrame" runat="server" frameBorder="0">
        </iframe>
    </div>
    </div>
    </div>

    <script src="Scripts/editor.js"></script>

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>

</body>
</html>