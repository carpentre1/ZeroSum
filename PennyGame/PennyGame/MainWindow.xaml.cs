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

namespace PennyGame //by Justin Carpenter
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        int A_Pennies = 10;//A is the player
        int B_Pennies = 10;//B is the AI opponent

        int A_PenniesGained = 0;
        int B_PenniesGained = 0;

        int A_IsHeads = 1;//1 = heads, 0 = tails. using an integer instead of bool since i couldn't find how to randomize a bool for choosing what side of the coin the AI picks
        int B_IsHeads = 1;
        public MainWindow()
        {
            InitializeComponent();
            LabelPlayerAResult.Content = "";//keep these texts blank until the player starts playing
            LabelPlayerBResult.Content = "";
            LabelTotalResult.Content = "You are Player A. Click \"Reveal coins\" to start gambling!";
            LabelPlayerAGained.Foreground = new SolidColorBrush(Colors.Purple);//adds color to the "change" values so the player will pay attention to them as they update
            LabelPlayerBGained.Foreground = new SolidColorBrush(Colors.DarkOrange);

            AwardA.Foreground = new SolidColorBrush(Colors.Purple);//adds the same color to the "change" values in the "Test Knowledge" box so the player knows what these are from
            AwardB.Foreground = new SolidColorBrush(Colors.DarkOrange);

            Rules3.Foreground = new SolidColorBrush(Colors.Green);//adds color to the rules to make it clear which result is good and which is bad
            Rules4.Foreground = new SolidColorBrush(Colors.Red);
        }

        private void ButtonHeads_Click(object sender, RoutedEventArgs e)//sets the next penny the player reveals to be heads
        {
            A_IsHeads = 1;
            LabelTotalResult.Foreground = new SolidColorBrush(Colors.Black);
            LabelTotalResult.Content = "You have set your next penny to be heads.";
        }

        private void ButtonTails_Click(object sender, RoutedEventArgs e)//sets the next penny the player reveals to be tails
        {
            A_IsHeads = 0;
            LabelTotalResult.Foreground = new SolidColorBrush(Colors.Black);
            LabelTotalResult.Content = "You have set your next penny to be tails.";
        }

        private void ButtonReveal_Click(object sender, RoutedEventArgs e)//reveals both participants' pennies and calls the update label function
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

                UpdateLabels(true);
            }
            if(A_IsHeads != B_IsHeads)
            {
                A_Pennies -= 2; A_PenniesGained -= 2;
                B_Pennies += 2; B_PenniesGained += 2;
                UpdateLabels(true);
            }
        }
        private void UpdateLabels(bool isPlaying)//updates all the numbers shown in game, such as the amount of pennies each player has
        {
            //the "isPlaying" bool is set false if the player clicks the award button, since then we just want to update the values, not update the results of playing a session
            LabelPlayerAAmount.Content = "Pennies: " + A_Pennies.ToString();
            LabelPlayerBAmount.Content = "Pennies: " + B_Pennies.ToString();

            LabelPlayerAGained.Content = "Change: " + A_PenniesGained.ToString();
            AwardA.Text = A_PenniesGained.ToString();

            LabelPlayerBGained.Content = "Change: " + B_PenniesGained.ToString();
            AwardB.Text = B_PenniesGained.ToString();

            AwardTotal.Text = (A_PenniesGained + B_PenniesGained).ToString();//for "Test Knowledge"; add the two values together to show whether the game is currently still zero-sum

            if (isPlaying && A_IsHeads != B_IsHeads)//the player loses
            {
                LabelTotalResult.Foreground = new SolidColorBrush(Colors.Red);
                LabelTotalResult.Content = "The pennies were different sides up, you lost 2 pennies!";
            }
            if (isPlaying && A_IsHeads == B_IsHeads)//the player wins
            {
                LabelTotalResult.Foreground = new SolidColorBrush(Colors.Green);
                LabelTotalResult.Content = "The pennies were the same, you won 2 pennies!";
            }

            if (A_IsHeads == 1) { LabelPlayerAResult.Content = "Coin was: heads"; }
            if (A_IsHeads == 0) { LabelPlayerAResult.Content = "Coin was: tails"; }

            if (B_IsHeads == 1) { LabelPlayerBResult.Content = "Coin was: heads"; }
            if (B_IsHeads == 0) { LabelPlayerBResult.Content = "Coin was: tails"; }
        }

        private void ButtonAward_Click(object sender, RoutedEventArgs e)//from the Test Knowledge tab; gives both players a penny to show how it would stop being zero-sum
        {
            A_Pennies += 1;
            A_PenniesGained += 1;
            B_Pennies += 1;
            B_PenniesGained += 1;
            UpdateLabels(false);
        }

        private void Hider1_Click(object sender, RoutedEventArgs e)//these buttons hide answers for Test Knowledge. clicking the button hides it so that the player can see the answer
        {
            Hider1.Visibility = Visibility.Collapsed;
        }

        private void Hider2_Click(object sender, RoutedEventArgs e)
        {
            Hider2.Visibility = Visibility.Collapsed;
        }
    }
}
