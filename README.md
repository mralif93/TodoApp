
# To-Do List (Flutter App)

➤ The app’s state management and navigation in local storage.


## Screenshots
![New Microsoft PowerPoint Presentation](https://raw.githubusercontent.com/mralif93/TodoApp/main/screenshots/ToDoListApp-1.png)

## Demo

- [View Demo on Flutter Web](https://shorturl.at/nrMR4)

## Key Features

 - Create, Edit, Delete To-Do
 - Marking To-Do as Completed 

Simple validations:
- Title must not be empty
- Start date must be smaller than or equal to end date
- End Date must be larger than or equal to start date
 


## Project Architecture
- Project Structure:
```bash
├── lib
│   ├── local_storage
│   ├── models
│   ├── bindings
│   ├── controllers
│   ├── views
│   ├── routes
│   └── utils
│   └── widgets
└── test
```
## Unit Test

- Simple unit tests are created
- To execute all the unit tests, run
```bash
flutter test   
```

## Setup Project
- Clone repository
```bash
git clone https://github.com/mralif93/TodoApp.git  
```

- To run the app, simply write
```bash
flutter pub get  
```
```bash
flutter run 
```
