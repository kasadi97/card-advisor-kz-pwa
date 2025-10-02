# 🔧 Исправление APK - Решение проблемы с 404 ошибкой

## Проблема была в manifest.json ❌
APK открывал неправильные URL из-за относительных путей в манифесте:
- `start_url: "/"` → открывал `kasadi97.github.io` 
- `scope: "/"` → неправильная область действия

## Что исправлено ✅
- ✅ `start_url` → `https://kasadi97.github.io/card-advisor-kz-pwa/`
- ✅ `scope` → `https://kasadi97.github.io/card-advisor-kz-pwa/`
- ✅ `shortcuts` → абсолютные URL
- ✅ `share_target` → абсолютный URL
- ✅ `file_handlers` → абсолютный URL

## 🚀 Создайте новый APK:

### Шаг 1: PWABuilder
1. Откройте: https://www.pwabuilder.com/
2. Введите URL: `https://kasadi97.github.io/card-advisor-kz-pwa/`
3. Дождитесь анализа (должны быть зеленые галочки)
4. Перейдите в раздел "Android"
5. Нажмите "Generate Package"
6. Скачайте новый APK

### Шаг 2: Подпишите APK
Используйте любой из способов:

**Онлайн (быстро):**
- https://www.apktool.com/
- https://apksigner.com/

**Локально:**
```powershell
python sign_apk.py your-new-apk.apk
```

### Шаг 3: Установите исправленный APK
1. Удалите старое приложение (если установлено)
2. Установите новый подписанный APK
3. Запустите приложение

## ✅ Результат:
APK теперь будет открывать правильную страницу Card Advisor KZ вместо 404 ошибки!

## 🔍 Проверка:
После установки приложение должно:
- ✅ Открываться на главной странице Card Advisor KZ
- ✅ Показывать категории банковских карт
- ✅ Работать переключение языков
- ✅ Функционировать офлайн

## 📝 Техническая информация:
Изменения в `manifest.json`:
```json
{
  "start_url": "https://kasadi97.github.io/card-advisor-kz-pwa/",
  "scope": "https://kasadi97.github.io/card-advisor-kz-pwa/",
  "shortcuts": [
    {
      "url": "https://kasadi97.github.io/card-advisor-kz-pwa/?screen=cards"
    }
  ]
}
```

Теперь APK будет работать корректно! 🎉