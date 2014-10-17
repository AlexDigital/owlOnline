using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;
using owl;

namespace owlOnline
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            TextBox2.Value = "";

            Lexer lexer = new Lexer(TextBox1.Value);
            lexer.Prepare();
            Lexer.ErrorCode error = lexer.Scan();

            if ((int)error > 0)
            {
                TextBox2.Value += "The compilation didn't finish.";
                Log.Error("The compilation didn't finish. Error: {0}", Enum.GetName(typeof(Lexer.ErrorCode), error));
                return;
            }

            CodeGen generator = new CodeGen(lexer.GetTokens());
            generator.Build();

            TextBox2.Value = generator.getOutput();
            IFrame.Attributes["srcdoc"] = generator.getOutput();
            result.Style.Add("display", "inline");
        }
    }
}