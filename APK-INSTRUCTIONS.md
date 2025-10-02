# Инструкция по созданию APK с помощью PWABuilder

## Готовность PWA для PWABuilder ✅

Ваше PWA теперь полностью соответствует требованиям PWABuilder:

✅ **PNG иконки**: icon-192x192.png и icon-512x512.png созданы
✅ **Основной манифест**: все обязательные поля заполнены
✅ **Расширенные возможности**: scope_extensions, launch_handler, share_target
✅ **Скриншоты**: narrow и wide формат добавлены
✅ **Service Worker**: обновлен для кэширования новых файлов
✅ **GitHub Pages**: все изменения загружены

## Шаги для создания APK:

### 1. Откройте PWABuilder
Перейдите на: https://www.pwabuilder.com/

### 2. Введите URL вашего PWA
```
https://kasadi97.github.io/card-advisor-kz-pwa/
```

### 3. Проверка
PWABuilder должен показать зеленые галочки для всех требований:
- ✅ Secure context (HTTPS)
- ✅ Web App Manifest  
- ✅ Service Worker
- ✅ Icons (192x192 и 512x512 PNG)
- ✅ Installable
- ✅ Screenshots

### 4. Настройки APK
В разделе Android выберите:
- **App name**: Card Advisor KZ
- **Package name**: kz.cardadvisor.pwa  
- **App version**: 1.0.0
- **Signing key**: Generate для первого релиза

### 5. Дополнительные настройки (опционально)
- **Display mode**: standalone (уже настроено)
- **Orientation**: portrait (уже настроено)  
- **Theme color**: #3B82F6 (уже настроено)
- **Background color**: #FFFFFF (уже настроено)

### 6. Создание APK
1. Нажмите "Generate Package"
2. Дождитесь создания APK (несколько минут)
3. Скачайте полученный файл

## Альтернативные варианты если возникнут проблемы:

### Вариант 1: Capacitor (локальная генерация)
```powershell
npx @capacitor/cli create card-advisor-kz kz.cardadvisor.pwa
cd card-advisor-kz
npx cap add android
npx cap copy
npx cap open android
```

### Вариант 2: Bubblewrap (CLI инструмент от Google)
```powershell
npm install -g @bubblewrap/cli
bubblewrap init --manifest https://kasadi97.github.io/card-advisor-kz-pwa/manifest.json
bubblewrap build
```

## Проверка APK перед публикацией:
1. Установите APK на Android устройство
2. Проверьте все функции офлайн
3. Убедитесь в корректности уведомлений
4. Протестируйте переключение языков

## Финальные файлы в проекте:
- ✅ icons/icon-192x192.png  
- ✅ icons/icon-512x512.png
- ✅ icons/screenshot-narrow.svg
- ✅ icons/screenshot-wide.svg
- ✅ manifest.json (обновлен)
- ✅ sw.js (обновлен)

Все готово для создания APK! 🚀