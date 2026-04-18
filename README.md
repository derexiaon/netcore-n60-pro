# 🚀 Netis NX62 (Netcore N60 Pro) — Чистая сборка ImmortalWrt

[](https://www.google.com/search?q=https://github.com/derexiaon/netcore-n60-pro)
[](https://www.google.com/search?q=https://github.com/derexiaon/netcore-n60-pro)
[](https://www.google.com/search?q=https://github.com/derexiaon/netcore-n60-pro/blob/main/LICENSE)

Это оптимизированная, локализованная сборка **ImmortalWrt 25.12** для роутера **Netis NX62 (Netcore N60 Pro)**. Проект ориентирован на максимальную производительность железа без лишнего «мусора».

-----

## 🔥 Ключевые особенности этой сборки

  * **Ядро Linux 6.12:** Использование самой современной и производительной ветки ядра.
  * **Драйверы MTK SDK:** Проприетарные драйверы Wi-Fi от производителя для лучшего покрытия и стабильности.
  * **Hardware NAT (HNAT):** Аппаратное ускорение через TurboACC — гигабитные скорости при минимальной нагрузке на CPU.
  * **Полная русификация:** Интерфейс LuCI и все установленные плагины переведены на русский язык.
  * **Имя устройства:** После прошивки роутер корректно определяется в сети как `Netis-NX62`.
  * **Ничего лишнего:** Полностью вырезаны китайские прокси-сервисы (SSR+, Passwall и др.), AdGuardHome и терминал TTYD для экономии памяти.

### 🛠 Установленные компоненты

  * **LuCI:** Графический интерфейс с темой **Argon**.
  * **UPnP:** Автоматический проброс портов для консолей и игр.
  * **WrtBwMon:** Детальный мониторинг трафика клиентов в реальном времени.
  * **TurboACC:** Настройки аппаратного оффлоадинга и BBR.

-----

## ⚡️ Как собрать прошивку

1.  Зайдите на вкладку **Actions** в этом репозитории.
2.  В левом меню выберите **padavanonly-immortalwrt-mt798x-6.6-builder**.
3.  Нажмите кнопку **Run workflow** справа.
4.  Дождитесь завершения сборки (1.5–3 часа). Готовый файл `sysupgrade.bin` появится в разделе **Artifacts**.

-----

## 💾 Установка

  * Используйте загрузчик **U-Boot (Layout 112m)** для прошивки.

-----

## 🤝 Благодарности

Проект стал возможен благодаря трудам сообщества:

  * [immortalwrt](https://github.com/immortalwrt/immortalwrt) — за основу ОС.
  * [padavanonly](https://github.com/padavanonly/immortalwrt-mt798x-6.6) — за драйверы и оптимизацию MTK SDK.
  * [chasey-dev](https://github.com/chasey-dev/immortalwrt-mt798x-rebase) — за портирование на ядро 6.12.
  * [P3TERX](https://github.com/P3TERX/Actions-OpenWrt) — за шаблон GitHub Actions.

-----

*Лицензия: [MIT](https://github.com/P3TERX/Actions-OpenWrt/blob/main/LICENSE) © derexiaon*
