using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
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
using static StackoverflowQuestions.Question;

namespace StackoverflowQuestions
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            DisplayQuestions();
            this.WindowState = WindowState.Maximized;
        }

        // Display the 50 questions on the window
        private void DisplayQuestions()
        {
            string html = string.Empty;
            string url = @"https://api.stackexchange.com/2.2/questions?pagesize=50&order=desc&sort=creation&site=stackoverflow";
            string json = Get(url);
            //parse the JSON results
            Wrapper w = JsonConvert.DeserializeObject<Wrapper>(json);
            //dispaly the result in Datagrid
            dgQuestions.ItemsSource = w.items;

        }

        // HTTP GET request
        public string Get(string uri)
        {
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(uri);
            request.AutomaticDecompression = DecompressionMethods.GZip | DecompressionMethods.Deflate;

            using (HttpWebResponse response = (HttpWebResponse)request.GetResponse())
            using (Stream stream = response.GetResponseStream())
            using (StreamReader reader = new StreamReader(stream))
            {
                string rt = reader.ReadToEnd();
                return rt;
            }
        }

        private void btnRefresh_Click(object sender, RoutedEventArgs e)
        {
            DisplayQuestions();
        }

        //Display Question's Details in QuestionDetails Window
        private void dgQuestions_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            Item item = dgQuestions.SelectedItem as Item;               
            QuestionDetails questionDetails = new QuestionDetails();
            // Title
            questionDetails.TitleText.Text = item.title;
            // Link
            questionDetails.LinkText.Text = item.link;
            questionDetails.LinkHyper.NavigateUri = new Uri(item.link);
            // Owner
            questionDetails.OwnerText.Text = item.owner.display_name;
            // Creation Date
            questionDetails.CreationDateText.Text = UnixTimeStampToDateTime(item.creation_date).ToString();
            // Last Activity Date
            questionDetails.LastActivityDateText.Text = UnixTimeStampToDateTime(item.last_activity_date).ToString();
            // Tags
            string combindedString = string.Join(", ", item.tags.ToArray());
            questionDetails.TagsText.Text = combindedString;
            // View Count
            questionDetails.ViewCountText.Text = Convert.ToString(item.view_count);
            // Answer Count
            questionDetails.AnswerCountText.Text = Convert.ToString(item.answer_count);
            // Score
            questionDetails.ScoreText.Text = Convert.ToString(item.score);
            // Is Answered
            if (item.is_answered == true)
            { questionDetails.IsAnsweredCheckBox.IsChecked = true; }
            else { questionDetails.IsAnsweredCheckBox.IsChecked = false; }

            questionDetails.Show();    
        }

        // Convert UnixTimeStamp To DateTime
        public static DateTime UnixTimeStampToDateTime(double unixTimeStamp)
        {
            // Unix timestamp is seconds past epoch
            System.DateTime dtDateTime = new DateTime(1970, 1, 1, 0, 0, 0, 0, System.DateTimeKind.Utc);
            dtDateTime = dtDateTime.AddSeconds(unixTimeStamp).ToLocalTime();
            return dtDateTime;
        }

    }
}
