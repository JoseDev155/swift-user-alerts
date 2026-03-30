# EJEMPLO 2 - SWIFTUI
Segunda app de iOS hecha en la Práctica 5.

## Funcionamiento
Mismo caso que el **EJEMPLO 1**.

En el `ContentView.swift`, pueden ejecutarse las alertas una a una:

```swift
struct ContentView: View {
    var body: some View {
        AlertInformative()
        //AlertDestructive()
        //AlertInput()
    }
}
```

Al final, también se usó un `NavigationView` para mayor practicidad y mostrar todas las alertas.
