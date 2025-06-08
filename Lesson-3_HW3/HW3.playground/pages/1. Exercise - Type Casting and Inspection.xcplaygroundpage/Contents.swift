/*:
 ## Упражнение - приведение типов и их контроль
 
 Создайте коллекцию типа [Any], включающую несколько вещественных чисел, целых, строк и булевых значений.  Распечатайте содержимое коллекции.
 */
let collection: [Any] = [1, 5, 0.2, "Name", true, ]
for item in collection {
    print(item)
}
/*:
 Пройдите по всем элементам коллекции.  Для каждого целого, напечайте "Целое число " и его значение.  Повторите то же самое для вещественных чисел, строк и булевых значений.
 */
for item in collection {
    if item is Int {
        print("Целое число \(item)")
    } else if item is Double {
        print("Вещественное число \(item)")
    } else if item is String {
        print("Строка = \(item)")
    } else if item is Bool {
        print("Булево значение \(item)")
    }
}

//or
for item in collection {
    switch item {
    case is Int: print("\(item) is Integer")
    case is String: print("\(item) is String")
    case is Bool: print("\(item) is Bool")
    case is Double: print("\(item) is Double")
    default: print("Unowed value: \(item)")
    }
}
/*:
 Создайте словарь [String : Any], где все значения — это смесь вещественных и целых чисел, строк и булевых значений.  Выведите пары ключ/значения для всех элементов коллекции.
 */
let slovar: [String: Any] = [
    "Name": "Katrin",
    "Old": 25,
    "Height": 165.5,
    "Bool false": false,
    "Bool true": true]

for item in slovar {
    print(item.key, item.value)
}

    //or
for (key, value) in slovar {
    print("Key: \(key), Value: \(value)")
}
/*:
 Создайте переменную `total` типа `Double`, равную 0.  Переберите все значения словаря, и добавьте значение каждого целого и вещественного числа к значению вашей переменной.  Для каждой строки добавьте 1.  Для каждого булева значения, добавьте 2, в случае, если значение равно `true`, либо вычтите 3, если оно `false`.  Напечатайте значение `total`.
 */

var total: Double = 0.0

for (_, value) in slovar {
    
    if let value = value as? Int {
        total += Double(value)
    } else if let value = value as? Double {
        total += value
    } else if value is String {
        total += 1
    } else if let value = value as? Bool {
        total += value ? 2 : -3
    }
}
print(total)
/*:
 Обнулите переменную total и снова пройдите по всей коллекции, прибавляя к ней все целые и вещественные числа.  Для каждой строки, встретившейся на пути, попробуйте сконвертировать её в число, и добавьте это значение к общему.  Игнорируйте булевы значения.  Распечатайте итог.
 */
total = 0
for value in slovar {
    if let value = value as? Int {
        total += Double(value)
    } else if let value = value as? Double {
        total += value
    } else if let value = value as? String {
        total += Double(value) ?? 0
    }
}
print(total)
//: страница 1 из 2  |  [Далее: упражнение для приложения - типы тренировок](@next)
