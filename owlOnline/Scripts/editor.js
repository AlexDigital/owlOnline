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