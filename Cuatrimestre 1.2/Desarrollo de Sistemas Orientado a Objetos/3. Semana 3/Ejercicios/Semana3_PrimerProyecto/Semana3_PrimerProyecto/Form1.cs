namespace Semana3_PrimerProyecto
{
    public partial class frmPrincipal : Form
    {
        public frmPrincipal()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label1_Click_1(object sender, EventArgs e)
        {

        }

        private void txtDocumento_TextChanged(object sender, EventArgs e)
        {

        }

        private void label1_Click_2(object sender, EventArgs e)
        {

        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void btnLimpiar_Click(object sender, EventArgs e)
        {
            txtNombre.Text = "";
            txtApellido.Text = "";
            txtDocumento.Text = "";
            boxTipo.Text = "";
        }

        private void btnIngresar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtNombre.Text) ||
                string.IsNullOrWhiteSpace(txtApellido.Text) ||
                string.IsNullOrWhiteSpace(boxTipo.Text) ||
                string.IsNullOrWhiteSpace(txtDocumento.Text))
            {
                MessageBox.Show("Todos los campos son obligatorios.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            else
            {
                Postulante postulante = new Postulante(txtNombre.Text, txtApellido.Text, boxTipo.Text, txtDocumento.Text);
                MessageBox.Show($"Nombre: {postulante.Nombre} \nApellido: {postulante.Apellido} \nTipo: {postulante.Tipo} \nDocumento: {postulante.Documento}",
                                "Información", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        private void txtNombre_TextChanged(object sender, EventArgs e)
        {

        }

        private void txtApellido_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
