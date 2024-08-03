<h3 align="center"> 1.1 Switch Light Theme To Dark Theme. </h3>

###

<h1 align="left"></h1>

###

<div align="center">
<img src = "https://github.com/MrSajidShaikh/advance_flutter_ch1/assets/149478269/221bb9a2-a6be-4fae-ba55-235a25f52dfa" width = 22% height = 35%>
<img src = "https://github.com/MrSajidShaikh/advance_flutter_ch1/assets/149478269/ceba1486-9662-44a3-9c06-45d9af889703" width = 22% height = 35%>

###

<h3 align="center"> 1.2 Create Registration Page using Stepper Widget. </h3>

###

<h1 align="left"></h1>

###
<div align="center">
<img src = "https://github.com/MrSajidShaikh/advance_flutter_ch1/assets/149478269/79d29120-9dbe-42bc-8a55-d04aeef37c18" width = 22% height = 35%>
<img src = "https://github.com/MrSajidShaikh/advance_flutter_ch1/assets/149478269/20c3c1ae-f8ed-48a9-8a31-cae9c5d64b4d" width = 22% height = 35%>


###

# 1.3 Provider Tree

## 1) What is State?

Information that can be read synchronously when the widget is built and might change during the lifetime of the widget.

## 2) What is State Management?

State management in Dart and Flutter is all about managing the data that the app will render and how it will respond to user input. It's about tracking changes to the state and updating the UI to reflect these changes.

The state management categorizes into two conceptual types, which are given below:
### (i) `Ephemeral State` :- This state is also known as UI State or local state. It is a type of state which is related to the specific widget, or you can say that it is a state that contains in a single widget. In this kind of state, you do not need to use state management techniques.

## Example
```bash
class MyHomepage extends StatefulWidget {  
  @override  
  MyHomepageState createState() => MyHomepageState();  
}  
  
class MyHomepageState extends State<MyHomepage> {  
  String _name = "Sahil";  
  
  @override  
  Widget build(BuildContext context) {  
    return RaisedButton(  
        child: Text(_name),  
        onPressed: () {  
           setState(() {  
              _name = _name == "Sahil" ? "Vishal" : "Mayank";  
           });  
         },  
      );  
  }  
}  
```



### (ii) `App State` :- It is a type of state that we want to share across various parts of our app and want to keep between user sessions. Thus, this type of state can be used globally.

The simplest example of app state management can be learned by using the provider package. The state management with the provider is easy to understand and requires less coding. A provider is a third-party library. Here, we need to understand three main concepts to use this library.

Package for Provider

```bash
dependencies:
  flutter:
    sdk: flutter
  provider: ^6.0.0  # Check for the latest version
```

-------------------------------------------------------------------------------------------------------------------------

- `ChangeNotifier` :- ChangeNotifier is a simple class, which provides change notification to its listeners. It is easy to understand, implement, and optimized for a small number of listeners. It is used for the listener to observe a model for changes. In this, we only use the notifyListener() method to inform the listeners.

## Example of ChangeNotifier

```bash
class Counter with ChangeNotifier {  
  int _counter;  
  
  Counter(this._counter);  
  
  getCounter() => _counter;  
  setCounter(int counter) => _counter = counter;  
  
  void increment() {  
    _counter++;  
    notifyListeners();  
  }  
  
  void decrement() {  
    _counter--;  
    notifyListeners();  
  }  
}  
```

-------------------------------------------------------------------------------------------------------------------------

- `ChangeNotifierProvider` :- ChangeNotifierProvider is the widget that provides an instance of a ChangeNotifier to its descendants. It comes from the provider package.

## Example of ChangeNotifierProvider

```bash
class MyApp extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      theme: ThemeData(  
        primarySwatch: Colors.indigo,  
      ),  
      home: ChangeNotifierProvider<CounterModel>(  
        builder: (_) => CounterModel(),  
        child: CounterView(),  
      ),  
    );  
  }  
}  
```

-------------------------------------------------------------------------------------------------------------------------

- `Consumer` :- It just calls the provider in a new widget and delegates its build implementation to the builder.

## Example of Consumer

```bash
return Consumer<Counter>(  
  builder: (context, count, child) {  
    return Text("Total price: ${count.total}");  
  },  
);  
```

## Provider Tree

<img src="https://github.com/sanjuafre123/adv_flutter_ch1/assets/148860124/5dd9c104-239c-49ae-9af2-7b0753d3dbeb" height=65%>



###

<h3 align="center"> 1.6 Contact Us Page </h3>

###

<h1 align="left"></h1>

###
<div align="center">
<img src = "https://github.com/user-attachments/assets/7b31e50b-8556-4077-bc4b-87802cf54197" width = 22% height = 35%>
<video src = "https://github.com/user-attachments/assets/3afcf13a-7ace-4922-ad3c-2b6194a7ee90">

###
<div align="center">
<a href="https://github.com/MrSajidShaikh/advance_flutter_ch1/tree/master/lib/Screens/Contact%20Us%20Provider">-> 📂 Go To Dart File 📂 <-</a>
</div>

###
