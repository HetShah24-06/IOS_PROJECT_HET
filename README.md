# MovieExplorer 🎥

MovieExplorer is an iOS application that allows users to browse, search, and view detailed information about movies and their trailers. This app leverages The Movie Database (TMDb) API to provide real-time data and ensures a seamless and interactive experience for users.

## Features ✨
- 🌟 **Movie Browsing:** Explore a curated list of movies, including trending, top-rated, and upcoming movies.
- 🔍 **Search Functionality:** Quickly search for any movie by title or keyword.
- 📰 **Detailed Info:** View detailed movie information, including title, release date, overview, and user ratings.
- 🎥 **Trailer Viewing Support:** Easily watch movie trailers within the app (on supported videos).
- 🗂 **Local Caching:** Enjoy faster load times and offline access with Core Data for persistent local storage.
- 🚀 **Intuitive UI:** A clean and modern user interface for effortless browsing, built with UIKit.

---

## Screenshots 📷
![Movie List](link_to_screenshot1)  
*Home screen showing the list of trending movies.*

![Movie Details](https://github.com/HetShah24-06/IOS_PROJECT_HET/blob/main/Simulator%20Screenshot%20-%20iPhone%2015%20Pro%20-%202025-04-22%20at%2016.30.11.png)  
*Movie details page displaying detailed information about the selected movie.*

![Search Movies]((https://github.com/HetShah24-06/IOS_PROJECT_HET/blob/main/Simulator%20Screenshot%20-%20iPhone%2015%20Pro%20-%202025-04-22%20at%2016.30.07.png))  
*Movie search functionality using dynamic search.*

---

## Tech Stack 🛠️
- **Language:** Swift  
- **IDE:** Xcode  
- **Architecture:** MVC (Model-View-Controller)  
- **Persistence:** Core Data  
- **API Integration:** RESTful API calls using The Movie Database (TMDb) API  
- **UI Framework:** UIKit  
- **Data Parsing:** JSON Parsing  

---

## Installation 🔧

Follow these steps to set up the project locally:
1. **Clone the Repository:**
   ```bash
   git clone https://github.com/HetShah24-06/IOS_PROJECT_HET.git
   ```
2. **Navigate to the Project Directory:**
   ```bash
   cd IOS_PROJECT_HET/final_project_hetshah/MovieExplorer
   ```
3. **Open the Project in Xcode:**
   - Double-click the `.xcodeproj` file to open the project in Xcode.

4. **Install Dependencies:**
   - Ensure the required frameworks (e.g., UIKit) are set up in your Xcode project.

5. **Obtain an API Key from The Movie Database (TMDb):**
   - Go to [TMDb](https://www.themoviedb.org/) and create an account to get a free API key.
   - Set the API key as an environment variable or directly in the code for development.

6. **Run the App:**
   - Select a simulator or a connected iOS device and press the "Run" button in Xcode.

---

## Usage 🚀

1. **Home Screen:** View trending movies directly.  
2. **Search:** Use the search bar to find a specific movie.  
3. **Details Page:** Click on any movie title to view detailed information about the movie.  
4. **Watch Trailers:** If available, watch movie trailers directly from the app.

---

## Key Contributions 👨‍💻

Here are the features and areas where I contributed to the project:

1. **API Integration:**
   - Integrated TMDb API for movie data, including trending, search, and individual movie details.
2. **UI/UX Development:**
   - Designed an intuitive user interface using **UIKit**.
   - Added feature-rich animations and polished interactions for smoother transitions.
3. **Search Implementation:**
   - Developed the search functionality allowing users to find movies based on keywords.
4. **Core Data Integration:**
   - Implemented local caching and persistent storage to minimize repeated API calls.
   - Designed storage for frequently viewed movies to enhance offline functionality.
5. **Performance Optimization:**
   - Reduced API call latency by fixing bugs in response parsing.
   - Optimized memory usage and ensured high performance under various conditions.
6. **Testing and Debugging:**
   - Resolved crashes in low network scenarios with better error handling for API calls.

---

## Challenges Overcome 🚧
- **API Rate Limiting:** Implemented efficient API call mechanisms to avoid exceeding usage limits.
- **Memory Optimization:** Managed large amounts of data from API responses while maintaining smooth UI responsiveness.
- **Error Handling:** Built fallback mechanisms for network failures to show cached content or fallback screens.

---

## Future Enhancements 🌟
- 🎨 **Dark Mode Support:** Add compatibility for iOS’s system-wide dark mode.
- 🛠 **Unit Tests:** Implement greater test coverage for app reliability.
- 🔤 **Internationalization:** Add support for multiple languages.
- 📲 **Push Notifications:** Notify users about upcoming movies or trailers.

---

## Acknowledgments 🙌
A special thanks to:
- [The Movie Database (TMDb)](https://www.themoviedb.org/) for providing the API for movie data.
- Apple for providing an amazing development environment with Xcode.

---

## License 📜
This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.

---

## Contact Me 📩
If you have any questions, feel free to reach out:
- **GitHub:** [HetShah24-06](https://github.com/HetShah24-06)
- **Email:** [hetshah1324@gmail.com](mailto:hetshah1324@gmail.com)
