# EJEMPLO 1 - SWIFTUI
Primera app de iOS hecha en la Práctica 4.

## Funcionamiento
En el `ContentView.swift`, pueden ejecutarse las alertas una a una:

```swift
struct ContentView: View {
    var body: some View {
        BasicAlertView()
        //ErrorAlertView()
        //ConfirmationAlertView()
        //MultiButtonAlertView()
        //TextFieldAlertView()
        //ActionSheetView()
    }
}
```

Pero al final, se usó un `NavigationView` para mayor practicidad y mostrar todas las alertas.
