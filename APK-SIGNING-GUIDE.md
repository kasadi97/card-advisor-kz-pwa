# 🔐 Способы подписи APK для Card Advisor KZ

## Способ 1: Локальная подпись (Рекомендуется)

### Используйте наш скрипт:
```powershell
# Если у вас есть Java
python sign_apk.py your-apk-file.apk

# Или используйте bat файл
sign-apk.bat your-apk-file.apk
```

## Способ 2: Онлайн подпись APK

### APK Signer Online сервисы:
1. **APKTool Online**: https://www.apktool.com/
2. **APK Signer**: https://apksigner.com/
3. **Online APK Signer**: https://www.apkonline.net/apk-signer/

### Инструкция для онлайн подписи:
1. Откройте любой из сервисов выше
2. Загрузите ваш неподписанный APK
3. Выберите "Debug" или "Test" подпись
4. Скачайте подписанный APK

## Способ 3: Android Studio

Если у вас установлен Android Studio:
```bash
# Создаем debug keystore
keytool -genkey -v -keystore debug.keystore -alias androiddebugkey -keyalg RSA -keysize 2048 -validity 10000

# Подписываем APK
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore debug.keystore your-app.apk androiddebugkey

# Выравниваем APK
zipalign -v 4 your-app.apk your-app-signed.apk
```

## Способ 4: Простая подпись через APK Signer Tool

### Скачайте инструменты:
1. **Uber APK Signer**: https://github.com/patrickfav/uber-apk-signer/releases
2. Скачайте `uber-apk-signer-1.3.0.jar`
3. Запустите: `java -jar uber-apk-signer-1.3.0.jar --apks your-app.apk`

## 📱 После подписи APK:

### Установка на Android:
1. **Разрешите неизвестные источники**:
   - Настройки → Безопасность → Неизвестные источники ✅
   - Или для каждого приложения отдельно

2. **Перенесите APK на устройство**:
   - Через USB кабель
   - Через облачное хранилище
   - Через мессенджер

3. **Установите приложение**:
   - Откройте файловый менеджер
   - Найдите APK файл
   - Нажмите на него и выберите "Установить"

### Проверка работы:
- ✅ Приложение запускается
- ✅ Все функции работают офлайн
- ✅ Переключение языков работает
- ✅ Данные сохраняются
- ✅ Уведомления приходят

## 🚨 Важные замечания:

1. **Debug подпись** - только для тестирования
2. **Release подпись** - для публикации в Google Play
3. **Не делитесь production ключами**
4. **Сохраните keystore файл** для будущих обновлений

## 🔄 Если нужна помощь:
- Укажите какой APK файл у вас есть
- Какие инструменты доступны на компьютере
- Планируете ли публикацию в Google Play