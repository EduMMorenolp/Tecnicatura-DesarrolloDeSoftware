namespace Semana2_Ej3
{
    partial class Form1
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            textDato1 = new TextBox();
            textDato2 = new TextBox();
            label1 = new Label();
            button1 = new Button();
            btnCalculo = new Button();
            label2 = new Label();
            SuspendLayout();
            // 
            // textDato1
            // 
            textDato1.Location = new Point(130, 46);
            textDato1.Name = "textDato1";
            textDato1.Size = new Size(100, 23);
            textDato1.TabIndex = 0;
            textDato1.TextChanged += textBox1_TextChanged;
            // 
            // textDato2
            // 
            textDato2.Location = new Point(130, 98);
            textDato2.Name = "textDato2";
            textDato2.Size = new Size(100, 23);
            textDato2.TabIndex = 1;
            textDato2.TextChanged += textBox2_TextChanged;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(79, 49);
            label1.Name = "label1";
            label1.Size = new Size(45, 15);
            label1.TabIndex = 2;
            label1.Text = "DATO 1";
            label1.Click += label1_Click;
            // 
            // button1
            // 
            button1.Location = new Point(141, 140);
            button1.Name = "button1";
            button1.Size = new Size(75, 23);
            button1.TabIndex = 4;
            button1.Text = "LIMPIAR";
            button1.UseVisualStyleBackColor = true;
            button1.Click += button1_Click;
            // 
            // btnCalculo
            // 
            btnCalculo.Location = new Point(130, 178);
            btnCalculo.Name = "btnCalculo";
            btnCalculo.Size = new Size(100, 37);
            btnCalculo.TabIndex = 5;
            btnCalculo.Text = "CALCULO";
            btnCalculo.UseVisualStyleBackColor = true;
            btnCalculo.Click += button2_Click;
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(79, 101);
            label2.Name = "label2";
            label2.Size = new Size(45, 15);
            label2.TabIndex = 6;
            label2.Text = "DATO 2";
            label2.Click += label2_Click;
            // 
            // Form1
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(333, 283);
            Controls.Add(label2);
            Controls.Add(btnCalculo);
            Controls.Add(button1);
            Controls.Add(label1);
            Controls.Add(textDato2);
            Controls.Add(textDato1);
            Name = "Form1";
            StartPosition = FormStartPosition.CenterScreen;
            Text = "INGRESO Y MUESTRA DE DATOS";
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private TextBox textDato1;
        private TextBox textDato2;
        private Label label1;
        private Button button1;
        private Button btnCalculo;
        private Label label2;
    }
}
