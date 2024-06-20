# datad

A UI for eSIM card management.

## UI
- [Dribbble design](https://github.com/busingepius/eSIM/blob/master/assets/images/ui.png)

## Getting Started

This project is built on dart and flutter. To run this project, you need to have flutter installed on your machine. If you don't have flutter installed, you can follow the instructions [here](https://flutter.dev/docs/get-started/install).
However, bellow is an apk version for android users.
- [Download APK](https://drive.google.com/file/d/1qf8QtFM-jm2Lf788KMWKkY0IUHbsGWw2/view?usp=sharing)

## Features(Can be extended to more features)
- Add eSIM card
- Delete eSIM card
- Update eSIM card
- View eSIM card details
- View all eSIM cards
- Search eSIM card by ICCID
- Search eSIM card by IMSI
- Search eSIM card by MSISDN
- Search eSIM card by EID
- Search eSIM card by Status

## Screenshots
![Screenshot 1](https://github.com/busingepius/eSIM/blob/master/assets/images/Screenshot_a1.jpg)
![Screenshot 2](https://github.com/busingepius/eSIM/blob/master/assets/images/Screenshot_a2.jpg)
![Screenshot 3](https://github.com/busingepius/eSIM/blob/master/assets/images/Screenshot_a3.jpg)
![Screenshot 4](https://github.com/busingepius/eSIM/blob/master/assets/images/Screenshot_a4.png)

## Video
[Watch Video](https://github.com/busingepius/eSIM/blob/master/assets/videos/video_1.mp4)

## APK
[Download APK](https://drive.google.com/file/d/1e0iwRIbCTjI4ML2-s46T0s-l9EDKAXT4/view?usp=sharing)

## Architecture(in order to complete the project, use the BLoC pattern for state management.
This project uses the BLoC pattern for state management. The BLoC pattern is a state management pattern that helps to manage the state of the application in a clear and efficient way. It makes use of streams and sinks to handle the flow of data in the application. The BLoC pattern is made up of the following components:
- **Bloc**: This is a component that takes in events and transforms them into states. It is the core of the BLoC pattern.
- **Event**: This is a component that represents an action that is dispatched to the BLoC. It is used to trigger state changes in the BLoC.
- **State**: This is a component that represents the state of the application at a given point in time. It is used to render the UI based on the current state of the application.
- **Repository**: This is a component that is responsible for fetching data from an external source. It is used to decouple the BLoC from the data source.
- **Data Source**: This is a component that represents the source of data for the application. It can be a database, a network call, or any other source of data.
- **UI**: This is a component that represents the user interface of the application. It is used to render the UI based on the current state of the application.
- **BlocProvider**: This is a component that is used to provide the BLoC to the UI. It is used to inject the BLoC into the UI so that the UI can interact with the BLoC.
- **BlocBuilder**: This is a component that is used to build the UI based on the current state of the application. It is used to render the UI based on the current state of the application.
- **BlocListener**: This is a component that is used to listen to state changes in the BLoC. It is used to update the UI based on the current state of the application.
- **BlocConsumer**: This is a component that is used to consume the state of the BLoC. It is used to render the UI based on the current state of the application.
- **MultiBlocProvider**: This is a component that is used to provide multiple BLoCs to the UI. It is used to inject multiple BLoCs into the UI so that the UI can interact with multiple BLoCs.
- **MultiBlocListener**: This is a component that is used to listen to state changes in multiple BLoCs. It is used to update the UI based on the current state of multiple BLoCs.
- **MultiBlocConsumer**: This is a component that is used to consume the state of multiple BLoCs. It is used to render the UI based on the current state of multiple BLoCs.
- **BlocBuilderCondition**: This is a component that is used to build the UI based on a condition. It is used to render the UI based on a condition.


## Dependencies
- [flutter_bloc](https://pub.dev/packages/flutter_bloc)

## Running the project
- Clone the project
- Open the project in your favorite IDE
- Run the project using the command `flutter run`
- If you are using an emulator, make sure it is running before running the project
- If you are using a physical device, make sure it is connected to your machine before running the project

## Author
- [businge pius](https://www.qixem.com)
- [Email](mailto:busingepius@gmail.com)
- [Twitter](https://twitter.com/busingepius)
- [LinkedIn](https://www.linkedin.com/in/piusbusinge/)
- [Github](https://github.com/busingepius)

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.