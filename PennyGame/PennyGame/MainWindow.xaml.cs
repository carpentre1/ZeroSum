using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace PennyGame
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        int A_Pennies = 10;
        int B_Pennies = 10;

        int A_PenniesGained = 0;
        int B_PenniesGained = 0;

        int A_IsHeads = 1;//1 = heads, 0 = tails
        int B_IsHeads = 1;
        public MainWindow()
        {
            InitializeComponent();
            LabelPlayerAResult.Content = "";
            LabelPlayerBResult.Content = "";
            LabelTotalResult.Content = "You are Player A. Click \"Reveal coins\" to start gambling!";
        }

        private void ButtonHeads_Click(object sender, RoutedEventArgs e)
        {
            A_IsHeads = 1;
            LabelTotalResult.Foreground = new SolidColorBrush(Colors.Black);
            LabelTotalResult.Content = "You have set your next penny to be heads.";
        }

        private void ButtonTails_Click(object sender, RoutedEventArgs e)
        {
            A_IsHeads = 0;
            LabelTotalResult.Foreground = new SolidColorBrush(Colors.Black);
            LabelTotalResult.Content = "You have set your next penny to be tails.";
        }

        private void ButtonReveal_Click(object sender, RoutedEventArgs e)
        {
            if(A_Pennies <= 0)
            {
                LabelTotalResult.Foreground = new SolidColorBrush(Colors.Black);
                LabelTotalResult.Content = "You have no pennies left to gamble!";
                return;
            }
            if(B_Pennies <= 0)
            {
                LabelTotalResult.Foreground = new SolidColorBrush(Colors.Black);
                LabelTotalResult.Content = "Player B has no pennies left to gamble!";
                return;
            }
            Random rand = new Random();
            B_IsHeads = rand.Next(0, 2);
            if(A_IsHeads == B_IsHeads)
            {
                A_Pennies += 2; A_PenniesGained += 2;
                B_Pennies -= 2; B_PenniesGained -= 2;

                UpdateLabels();
            }
            if(A_IsHeads != B_IsHeads)
            {
                A_Pennies -= 2; A_PenniesGained -= 2;
                B_Pennies += 2; B_PenniesGained += 2;
                UpdateLabels();
            }
        }
        private void UpdateLabels()
        {
            LabelPlayerAAmount.Content = "Pennies: " + A_Pennies.ToString();
            LabelPlayerBAmount.Content = "Pennies: " + B_Pennies.ToString();

            LabelPlayerAGained.Content = "Change: " + A_PenniesGained.ToString();
            LabelPlayerBGained.Content = "Change: " + B_PenniesGained.ToString();

            if (A_IsHeads != B_IsHeads)
            {
                LabelTotalResult.Foreground = new SolidColorBrush(Colors.Red);
                LabelTotalResult.Content = "The pennies were different sides up, you lost 2 pennies!";
            }
            if (A_IsHeads == B_IsHeads)
            {
                LabelTotalResult.Foreground = new SolidColorBrush(Colors.Green);
                LabelTotalResult.Content = "The pennies were the same, you won 2 pennies!";
            }

            if (A_IsHeads == 1) { LabelPlayerAResult.Content = "Coin was: heads"; }
            if (A_IsHeads == 0) { LabelPlayerAResult.Content = "Coin was: tails"; }

            if (B_IsHeads == 1) { LabelPlayerBResult.Content = "Coin was: heads"; }
            if (B_IsHeads == 0) { LabelPlayerBResult.Content = "Coin was: tails"; }
        }
    }
}
