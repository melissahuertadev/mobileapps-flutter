# todoeys

Todo list app

## State

State: values of all the variables that together make a User Interface.
- Local Stage: info useful that we don't need to save its value (pagination, checklist, etc).
- Global Stage: keeping the values of some of the variables and are used in different parts of the app.


How to change a state?
```
    var isChedked = false;
    isChecked = true;
```


M.V.C

- Model: manages de data ~ sends back data to the controller
- View: manages what goes into the screen ~ sends input events to the controller
- Controller: mediator between Model & View ~ makes request to the Model. ~ modifies the view.

Stateful Widgets: needs to have a memory, to remember which the state is and change it.
Stateless Widgets: get created, destroyed and rebuild.

## Provider
- Widget that serves 'data' to all the children widgets.
```
    Provider<TypeOfData>(
        builder: (context) {
            return data;
        }
    )
```
To use it 
```
    return Text(Provider.of<TypeOfData>(context));
```

- To provide an object
```
    ChangeNotifier<NameOfObject>(
        builder: (context) {
            return NameOfObject();
        }
    )

    Class NameOfObject extends ChangeNotifier {
        String nameOfProperty = "..";
    }
```
To use it 
```
    return Text(Provider.of<NameOfObject>(context).nameOfProperty);

```

This updates all the widgets that gets the info from Provider by  ```notifyListeners();```
If we don't need the widget to update, we must use it this way: ```Text(Provider.of<NameOfObject>(context, listen: false).nameOfProperty);```
