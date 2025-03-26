namespace Semana2_Ej3
{
    public partial class Form1 : Form
    {
        int num1;
        int num2;
        public Form1()
        {
            InitializeComponent();
        }
        private void label1_Click(object sender, EventArgs e)
        {

        }
        private void label2_Click(object sender, EventArgs e)
        {

        }
        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            string input = ((TextBox)sender).Text;
            if (string.IsNullOrWhiteSpace(input))
            {
                return;
            }
            num1 = Convert.ToInt32(((TextBox)sender).Text);
        }
        private void textBox2_TextChanged(object sender, EventArgs e)
        {
            string input = ((TextBox)sender).Text;
            if (string.IsNullOrWhiteSpace(input))
            {
                return;
            }
            num2 = Convert.ToInt32(((TextBox)sender).Text);
        }
        private void button1_Click(object sender, EventArgs e)
        {
            textDato1.Text = "";
            textDato2.Text = "";
        }
        private void button2_Click(object sender, EventArgs e)
        {
            if (num1 > num2)
            {
                MessageBox.Show($"El número mayor es: {num1}", "Resultado");
            }
            else if (num2 > num1)
            {
                MessageBox.Show($"El número mayor es: {num2}", "Resultado");
            }
            else
            {
                MessageBox.Show("Ambos números son iguales.", "Resultado");
            }
        }
    }
}
