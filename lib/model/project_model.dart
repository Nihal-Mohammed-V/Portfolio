class Project {
  final String name;
  final String description;
  final String image;
  final String link;
  Project(this.name, this.description, this.image, this.link);
}

List<Project> projectList = [
  Project(
    'Dekozy-Ecommerce Furniture application',
    'This Flutter-based e-commerce furniture application uses GetX for efficient state management and offers a seamless shopping experience with features like AI chatbot integration using the Rasa framework, AR-based furniture preview, secure Stripe payment gateway, and robust cart and order management. It leverages Firebase for authentication and backend services, while Cloudinary handles image and asset storage efficiently, making the app fast, interactive, and scalable for modern users.',
    'assets/images/coffee.png',
    '',
  ),
  Project(
    'Dekozy-Admin Panel',
    "The admin panel for the e-commerce furniture application is built using Flutter Web with GetX for state management and mirrors the main app's tech stack, enabling seamless backend control. It provides comprehensive management features, allowing admins to handle banners, product categories, inventory, brands, media assets, customer details, sales analytics, and orders. Integrated with Firebase for authentication and database operations, and Cloudinary for optimized media storage, the panel ensures efficient, real-time control over the platform’s content and operations through a clean, responsive web interface.",
    'assets/images/car.png',
    '',
  ),
  Project(
      'Dedo-ToDo/Task Manager',
      'This task manager application is a fully offline productivity tool built with Flutter and Bloc for robust state management. It features a beautifully designed UI that supports task categorization with color labels, local notifications for reminders, and a weekly graph to visualize task activity. Users can easily search, sort, and organize tasks, making it an efficient and user-friendly solution for managing daily to-do lists without requiring an internet connection.',
      'assets/images/dedo.jpg',
      ''),
  Project(
      'YouTube Clone',
      'This YouTube clone is a visually accurate replica of the official YouTube app, built using Flutter and managed with Bloc for structured state control. It integrates the YouTube Data API to fetch and display real-time video content, enabling users to search for videos, browse trending content, and watch seamlessly within the app. The application offers a smooth, responsive UI that closely mirrors the YouTube experience while showcasing clean architecture and efficient API handling.',
      'assets/images/youtube.png',
      ''),
  Project(
      'Rental Management Application',
      'This rental management application is built with Flutter and uses Provider for state management, designed to operate efficiently within a local network. It connects to a local server via IP to fetch and manage rental and product data in JSON format. The app allows users to add items by scanning barcodes, automatically checks availability based on selected dates, and generates QR codes containing the scanned product data at checkout. Additionally, it uses Hive as a lightweight local database to store rental records and user actions, ensuring fast access and data persistence even when temporarily disconnected from the local server.',
      'assets/images/player.png',
      ''),
  Project(
      'EduSync-School Management System',
      'EduSync is a full-stack school management system built with Flutter for the frontend and Node.js, Express.js, and MongoDB for the backend, using Provider for state management. Designed with modular roles—Admin, Teacher, and Parent—EduSync provides tailored functionalities for each user type. The Admin module manages student records, timetables, announcements, and overall system data. Teachers can create and manage assignments, communicate with parents, and update class schedules. Parents can view their child’s timetable, assignments, and announcements, and engage in real-time chat with teachers. The system offers a seamless, scalable, and interactive experience for all stakeholders involved in student management.',
      'assets/images/loading.jpg',
      ''),
  Project(
      'FinLog-A Simple Money Tracking Application',
      'Finlog is a simple yet elegant money tracking application built with Flutter, designed to help users manage their expenses and income effortlessly. With a beautiful and intuitive UI, the app allows users to categorize transactions, view summaries, and maintain a clear financial overview. Fully offline and privacy-focused, Finlog stores all data locally, ensuring users can track their finances anytime without needing internet access.',
      'assets/images/task.png',
      ''),
  Project(
      'Devops as a service platform',
      'DevOps as a Service Platform is an ongoing full-stack project designed to simplify and automate the development workflow, similar to platforms like GitHub Actions. Built using Flutter for the frontend and Node.js, Express.js, and MongoDB for the backend, the platform enables users to register and connect their GitHub repositories, create custom build and deployment pipelines, and monitor deployment status with real-time logs. Users receive notifications on build or deployment success/failure, and can track the health and performance of deployed applications. The platform aims to offer a developer-friendly, scalable solution for continuous integration and delivery—all from a single unified interface.',
      'assets/images/loading.jpg',
      ''),
];
