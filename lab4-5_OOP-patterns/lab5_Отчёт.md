# **Отчёт по лабораторной работе**  
**Тема:** Применение паттернов проектирования в системе учета сотрудников

**Студент:** Косинов Никита Олегович
**Группа:** ПИН-б-о-24-1, 2 курс
**Направление:** 09.03.03 "Прикладная информатика"  
**Профиль:** "Разработка и сопровождение программного обеспечения"  
**Руководитель:** Щеголев Алексей Алексеевич

---

## Введение

### Цель работы
Освоить практическое применение паттернов проектирования для рефакторинга и улучшения кодовой базы системы учета сотрудников. Получить навыки применения различных паттернов для решения типичных задач проектирования ПО.

---

## Часть 1: Порождающие паттерны

### 1.1. Singleton (Одиночка)

**Задача:** Создать класс `DatabaseConnection` для управления подключением к БД SQLite.

**Требования:** Гарантировать единственное подключение к БД в рамках приложения.

**Реализация:**

```python
class DatabaseConnection:
    _instance = None
    _connection = None
    
    def __new__(cls):
        if cls._instance is None:
            cls._instance = super(DatabaseConnection, cls).__new__(cls)
        return cls._instance
    
    @classmethod
    def get_instance(cls):
        if cls._instance is None:
            cls._instance = cls()
        return cls._instance
```

**Демонстрация:**

```python
db1 = DatabaseConnection.get_instance()
db2 = DatabaseConnection.get_instance()
print(f"Singleton test: {db1 is db2}")  # True
```

**Преимущества:**
- Гарантирует единственный экземпляр подключения
- Экономит ресурсы
- Упрощает управление состоянием

**Недостатки:**
- Усложняет тестирование
- Может скрывать зависимости
- Потенциальные проблемы с многопоточностью

---

### 1.2. Factory Method (Фабричный метод)

**Задача:** Рефакторинг существующей `EmployeeFactory` из ЛР №2.

**Требования:** Создать абстрактный класс `EmployeeFactory` с методом `create_employee()`. Реализовать конкретные фабрики для каждого типа сотрудников.

**Реализация:**

```python
class EmployeeFactory(ABC):
    @abstractmethod
    def create_employee(self, **kwargs) -> AbstractEmployee:
        pass

class ManagerFactory(EmployeeFactory):
    def create_employee(self, **kwargs) -> Manager:
        return Manager(
            id=kwargs.get("id"),
            name=kwargs.get("name"),
            department=kwargs.get("department"),
            base_salary=kwargs.get("base_salary"),
            bonus=kwargs.get("bonus", 0)
        )
```

**Демонстрация:**

```python
manager_factory = ManagerFactory()
manager = manager_factory.create_employee(
    id=1, name="Алиса", department="MANAGEMENT", 
    base_salary=70000, bonus=20000
)
```

**Преимущества:**
- Инкапсулирует создание объектов
- Упрощает добавление новых типов
- Разделяет ответственность

**Недостатки:**
- Увеличивает количество классов
- Может быть избыточным для простых случаев

---

### 1.4. Builder (Строитель)

**Задача:** Создать `EmployeeBuilder` для пошагового создания сложных объектов сотрудников.

**Требования:** Реализовать fluent-интерфейс. Возможность создания сотрудников с различными опциональными параметрами.

**Реализация:**

```python
class EmployeeBuilder:
    def set_id(self, id: int) -> 'EmployeeBuilder':
        self._id = id
        return self
    
    def set_name(self, name: str) -> 'EmployeeBuilder':
        self._name = name
        return self
    
    def build(self) -> AbstractEmployee:
        # Валидация и создание объекта
        return Developer(...)
```

**Демонстрация:**

```python
developer = (EmployeeBuilder()
            .set_id(101)
            .set_name("John Doe")
            .set_department("DEV")
            .set_base_salary(5000)
            .set_skills(["Python", "Java"])
            .set_seniority("senior")
            .build())
```

**Преимущества:**
- Гибкое создание объектов
- Читаемый код
- Валидация на этапе построения

**Недостатки:**
- Дополнительный код для простых случаев
- Сложность для простых объектов

---

## Часть 2: Структурные паттерны

### 2.2. Decorator (Декоратор)

**Задача:** Создать декораторы для добавления дополнительной функциональности сотрудникам.

**Требования:** Реализовать декораторы `BonusDecorator`, `TrainingDecorator` которые добавляют новые возможности существующим объектам.

**Реализация:**

```python
class EmployeeDecorator(AbstractEmployee):
    def __init__(self, employee: AbstractEmployee):
        self._employee = employee
    
    def calculate_salary(self) -> float:
        return self._employee.calculate_salary()

class BonusDecorator(EmployeeDecorator):
    def __init__(self, employee: AbstractEmployee, bonus_amount: float):
        super().__init__(employee)
        self._bonus_amount = bonus_amount
    
    def calculate_salary(self) -> float:
        return self._employee.calculate_salary() + self._bonus_amount
```

**Демонстрация:**

```python
developer = Developer(1, "Dev", "DEV", 50000, ["Python"], "middle")
decorated = BonusDecorator(developer, 5000)
decorated_with_training = TrainingDecorator(decorated, 2000)
```

**Преимущества:**
- Динамическое добавление функциональности
- Гибкая композиция
- Соблюдение принципа открытости/закрытости

**Недостатки:**
- Множество маленьких классов
- Сложность отладки цепочек декораторов

---

## Часть 3: Поведенческие паттерны

### 3.1. Observer (Наблюдатель)

**Задача:** Реализовать систему уведомлений об изменениях в системе.

**Требования:** Создать `NotificationSystem` с методами подписки/отписки. Уведомлять о изменениях зарплат, статусов проектов.

**Реализация:**

```python
class Observer(ABC):
    @abstractmethod
    def update(self, event_type: str, data: dict) -> None:
        pass

class Subject(ABC):
    def __init__(self):
        self._observers: List[Observer] = []
    
    def attach(self, observer: Observer) -> None:
        self._observers.append(observer)
    
    def notify(self, event_type: str, data: dict) -> None:
        for observer in self._observers:
            observer.update(event_type, data)
```

**Демонстрация:**

```python
notification_system = NotificationSystem()
observable_employee = ObservableEmployee(developer)
observable_employee.attach(notification_system)
observable_employee.set_base_salary(60000)  # Отправляет уведомление
```

**Преимущества:**
- Слабая связанность
- Динамическая подписка
- Расширяемость

**Недостатки:**
- Потенциальные утечки памяти
- Непредсказуемый порядок уведомлений

---

### 3.2. Strategy (Стратегия)

**Задача:** Реализовать различные стратегии расчета бонусов.

**Требования:** Создать интерфейс `BonusStrategy` с реализациями `PerformanceBonus`, `SeniorityBonus`, `ProjectBonus`.

**Реализация:**

```python
class BonusStrategy(ABC):
    @abstractmethod
    def calculate_bonus(self, employee: AbstractEmployee) -> float:
        pass

class PerformanceBonusStrategy(BonusStrategy):
    def calculate_bonus(self, employee: AbstractEmployee) -> float:
        return employee.base_salary * 0.1

class BonusContext:
    def __init__(self, strategy: BonusStrategy):
        self._strategy = strategy
    
    def calculate_bonus(self, employee: AbstractEmployee) -> float:
        return self._strategy.calculate_bonus(employee)
```

**Демонстрация:**

```python
strategy = PerformanceBonusStrategy()
context = BonusContext(strategy)
bonus = context.calculate_bonus(developer)

# Смена стратегии
context.set_strategy(SeniorityBonusStrategy())
bonus = context.calculate_bonus(developer)
```

**Преимущества:**
- Взаимозаменяемые алгоритмы
- Избежание условных операторов
- Легкое добавление новых стратегий

**Недостатки:**
- Дополнительные классы
- Клиент должен знать о стратегиях

---

## Заключение

### Достигнутые результаты

1. **Реализовано 6 паттернов проектирования:**
   - 3 порождающих паттерна
   - 1 структурных паттерн
   - 2 поведенческих паттерна

2. **Улучшена архитектура системы:**
   - Снижена связанность компонентов
   - Повышена расширяемость
   - Упрощено тестирование


### Преимущества реализованного решения

- **Гибкость:** Легкое добавление новых типов сотрудников и функциональности
- **Масштабируемость:** Поддержка большого количества сотрудников и операций
- **Тестируемость:** Изолированные компоненты легко тестировать
- **Поддерживаемость:** Чистая архитектура и разделение ответственности
- **Расширяемость:** Новые паттерны легко интегрируются

### Выводы

В ходе выполнения лабораторной работы были успешно освоены и применены 13 паттернов проектирования. Реализованная система демонстрирует правильное применение порождающих, структурных и поведенческих паттернов. Код структурирован, документирован и готов к дальнейшему развитию. Применение паттернов значительно улучшило качество кода и упростило поддержку системы.
