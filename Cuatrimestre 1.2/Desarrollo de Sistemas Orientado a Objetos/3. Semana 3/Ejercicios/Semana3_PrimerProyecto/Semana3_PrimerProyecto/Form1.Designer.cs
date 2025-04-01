namespace Semana3_PrimerProyecto
{
    partial class frmPrincipal
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
            lblNombre = new Label();
            lblApellido = new Label();
            lblDocumento = new Label();
            txtNombre = new TextBox();
            txtApellido = new TextBox();
            txtDocumento = new TextBox();
            btnIngresar = new Button();
            btnLimpiar = new Button();
            boxTipo = new ComboBox();
            lvlTipo = new Label();
            SuspendLayout();
            // 
            // lblNombre
            // 
            lblNombre.AutoSize = true;
            lblNombre.Location = new Point(67, 91);
            lblNombre.Name = "lblNombre";
            lblNombre.Size = new Size(51, 15);
            lblNombre.TabIndex = 0;
            lblNombre.Text = "Nombre";
            lblNombre.Click += label1_Click;
            // 
            // lblApellido
            // 
            lblApellido.AutoSize = true;
            lblApellido.Location = new Point(67, 149);
            lblApellido.Name = "lblApellido";
            lblApellido.Size = new Size(51, 15);
            lblApellido.TabIndex = 1;
            lblApellido.Text = "Apellido";
            // 
            // lblDocumento
            // 
            lblDocumento.AutoSize = true;
            lblDocumento.Location = new Point(186, 225);
            lblDocumento.Name = "lblDocumento";
            lblDocumento.Size = new Size(70, 15);
            lblDocumento.TabIndex = 2;
            lblDocumento.Text = "Documento";
            lblDocumento.Click += label1_Click_1;
            // 
            // txtNombre
            // 
            txtNombre.Location = new Point(160, 88);
            txtNombre.Name = "txtNombre";
            txtNombre.Size = new Size(100, 23);
            txtNombre.TabIndex = 3;
            txtNombre.TextChanged += txtNombre_TextChanged;
            // 
            // txtApellido
            // 
            txtApellido.Location = new Point(160, 146);
            txtApellido.Name = "txtApellido";
            txtApellido.Size = new Size(100, 23);
            txtApellido.TabIndex = 4;
            txtApellido.TextChanged += txtApellido_TextChanged;
            // 
            // txtDocumento
            // 
            txtDocumento.Location = new Point(262, 222);
            txtDocumento.Name = "txtDocumento";
            txtDocumento.Size = new Size(132, 23);
            txtDocumento.TabIndex = 5;
            txtDocumento.TextChanged += txtDocumento_TextChanged;
            // 
            // btnIngresar
            // 
            btnIngresar.Location = new Point(294, 80);
            btnIngresar.Name = "btnIngresar";
            btnIngresar.Size = new Size(100, 37);
            btnIngresar.TabIndex = 6;
            btnIngresar.Text = "INGRESAR";
            btnIngresar.UseVisualStyleBackColor = true;
            btnIngresar.Click += btnIngresar_Click;
            // 
            // btnLimpiar
            // 
            btnLimpiar.Location = new Point(294, 138);
            btnLimpiar.Name = "btnLimpiar";
            btnLimpiar.Size = new Size(100, 37);
            btnLimpiar.TabIndex = 7;
            btnLimpiar.TabStop = false;
            btnLimpiar.Text = "LIMPIAR";
            btnLimpiar.UseVisualStyleBackColor = true;
            btnLimpiar.Click += btnLimpiar_Click;
            // 
            // boxTipo
            // 
            boxTipo.FormattingEnabled = true;
            boxTipo.Items.AddRange(new object[] { "DNI", "Pasaporte", "Extranjero" });
            boxTipo.Location = new Point(82, 222);
            boxTipo.Name = "boxTipo";
            boxTipo.Size = new Size(87, 23);
            boxTipo.TabIndex = 8;
            boxTipo.SelectedIndexChanged += comboBox1_SelectedIndexChanged;
            // 
            // lvlTipo
            // 
            lvlTipo.AutoSize = true;
            lvlTipo.Location = new Point(46, 225);
            lvlTipo.Name = "lvlTipo";
            lvlTipo.Size = new Size(30, 15);
            lvlTipo.TabIndex = 9;
            lvlTipo.Text = "Tipo";
            lvlTipo.Click += label1_Click_2;
            // 
            // frmPrincipal
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.FromArgb(192, 255, 192);
            ClientSize = new Size(450, 358);
            Controls.Add(lvlTipo);
            Controls.Add(boxTipo);
            Controls.Add(btnLimpiar);
            Controls.Add(btnIngresar);
            Controls.Add(txtDocumento);
            Controls.Add(txtApellido);
            Controls.Add(txtNombre);
            Controls.Add(lblDocumento);
            Controls.Add(lblApellido);
            Controls.Add(lblNombre);
            Name = "frmPrincipal";
            StartPosition = FormStartPosition.CenterScreen;
            Text = "PRIMER PROYECTO";
            Load += Form1_Load;
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Label lblNombre;
        private Label lblApellido;
        private Label lblDocumento;
        private TextBox txtNombre;
        private TextBox txtApellido;
        private TextBox txtDocumento;
        private Button btnIngresar;
        private Button btnLimpiar;
        private ComboBox boxTipo;
        private Label lvlTipo;
    }
}
