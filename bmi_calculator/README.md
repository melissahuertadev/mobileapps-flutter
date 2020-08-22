# bmi_calculator

## resources:
https://dribbble.com

## notes
- instance variable = field = property
- inmmutability = unchangable, stageless widgets
    When Stateless widgets have a change while coding, they actually are replaced by a new updated widget,
    all of its properties also can only be set once and then "it's kind of set in stone".
    The reason why they need "final" keyword is because a property can be set by a second time and that's not allowed
    in a Stateless widget.

- enum: allows to have more values/options as the boolean type but with more!
   ```
      enum EnumName {typeA, typeB, typeC}
      EnumName.typeA
    ```

- Dart Ternary Operator
    Condition ? DoThisIfIsTrue : DoThisIfIsFalse

- First Order Objects: It takes a function as an argument and/or returns a function as a result.
   (read more) https://buildflutter.com/functional-programming-with-flutter/

- Maps: collections of key and values
    ```
    Map<KeyType, Valuetype> mapName{
        Key: Value
    }
    mapName[key]

    ```