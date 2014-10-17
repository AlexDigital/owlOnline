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

    <style type="text/css">
        .content 
        {
            margin-right: 10px;
            margin-left: 10px;
        }
        #Textarea1, #Textarea2
        {
            height: 300px;
            width: 100%;
        }
        .ui-resizable-helper {
            border: 1px dotted gray;
        }
        .iframe {
            display: block;
            width: 100%;
            height: 600px;
            padding: 30px;
            border: 2px solid gray;
            overflow: hidden;
            position: relative;
        }
        iframe {
            width: 100%;
            height: 100%;
        }
        #result 
        {
            display: none;
    </style>

    <link rel="stylesheet" href="lib/codemirror.css"/>
    <link rel="stylesheet" href="css/bootstrap.min.css"/>

    <script src="lib/codemirror.js" type = "text/javascript"></script>
    <script src="mode/xml/xml.js"></script>

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
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

    <script>
        var editor = CodeMirror.fromTextArea(document.getElementById("TextBox1"), {
            mode: "text/plain",
            lineNumbers: true,
            tabMode: "indent",
            gutter: true,
            matchBrackets: true
        });

        var editor = CodeMirror.fromTextArea(document.getElementById("TextBox2"), {
            mode: "text/xml",
            lineNumbers: true,
            tabMode: "indent",
            gutter: true,
            matchBrackets: true
        });

        $(function () {
            $(".resizable").resizable({
                animate: true,
                animateEasing: 'swing',
                imateDuration: 500
            });
        });
    </script>    

</body>
</html>