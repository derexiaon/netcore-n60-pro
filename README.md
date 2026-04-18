**English** | [Русский](https://p3terx.com/archives/build-openwrt-with-github-actions.html)

# Actions-OpenWrt

[](https://github.com/P3TERX/Actions-OpenWrt/blob/master/LICENSE)

Шаблон для сборки OpenWrt с помощью GitHub Actions.

## Использование

  * Нажмите кнопку [Fork], чтобы создать новый проект.
  * [Исходный код LEDE](https://github.com/coolsnowwolf/lede), пользовательский скрипт `diy-part2.sh`, конфигурационный файл `LEDE.config`.
  * [Исходный код dailook](https://github.com/dailook/immortalwrt-mt798x), пользовательский скрипт `diy-part3.sh`, конфигурационный файл `dailook-hanwckf.config`. Этот исходный код адаптирован для хард-мода с 512 МБ флеш-памяти. Если вам нужно скомпилировать ROM на 512 МБ, необходимо добавить следующее содержимое в файл `dailook-hanwckf.config`:

<!-- end list -->

```bash
CONFIG_TARGET_DEVICE_mediatek_mt7986_DEVICE_netcore_n60pro-512rom=y
CONFIG_TARGET_DEVICE_PACKAGES_mediatek_mt7986_DEVICE_netcore_n60pro-512rom=""
```

  * [Исходный код Immortalwrt](https://github.com/immortalwrt/immortalwrt), пользовательский скрипт `diy-part4.sh`, конфигурационный файл `immortalwrt.config`.
  * [Исходный код 237](https://github.com/padavanonly/immortalwrt-mt798x-24.10), для ядра 6.6 используется пользовательский скрипт `diy-part5-6.6.sh` и конфигурационный файл `padavanonly-immortalwrt-mt798x-6.6.config`, для версии с ядром 5.4 используется скрипт `diy-part5-2410.sh` и конфиг `padavanonly-immortalwrt-mt798x-2410.config`.
  * `diy-part1.sh` — это общий скрипт, в который добавлен исходный код ADGuardHome. Во все конфигурационные файлы по умолчанию интегрированы только плагины для запланированной перезагрузки, терминал `ttyd`, multicast-прокси `omcproxy`, multicast-преобразователь `msd_lite` и интерфейс LuCI для ADGuardHome. Если вам нужны другие настройки, пожалуйста, отредактируйте соответствующие скрипты и конфигурационные файлы самостоятельно.
  * Для нормальной работы ADGuardHome необходимо вручную скачать [базовый файл для Linux\_arm64](https://github.com/AdguardTeam/AdGuardHome/releases/) в интерфейсе LuCI, либо скачать его на ПК, распаковать, загрузить файл `AdGuardHome` в директорию `/usr/bin/AdGuardHome/` и установить права доступа `0755`.
  * На странице Actions запустите нужный файл компиляции прошивки из исходников, нажмите кнопку **Run workflow** справа, чтобы начать сборку. Если всё пройдет нормально, примерно через 1-2 часа вы увидите результаты компиляции. После завершения сборки скачайте соответствующую прошивку.

## Советы

  * Создание файла `.config` и сборка прошивки OpenWrt может занять много времени. Поэтому, прежде чем создавать репозиторий для сборки собственной прошивки, вы можете проверить, не собрал ли уже кто-то другой то, что вам нужно, просто [выполнив поиск `Actions-Openwrt` на GitHub](https://www.google.com/search?q=%5Bhttps://github.com/search%3Fq%3DActions-openwrt%5D\(https://github.com/search%3Fq%3DActions-openwrt\)).
  * Добавьте метаинформацию о вашей собранной прошивке (например, архитектуру и установленные пакеты) в описание вашего репозитория, это сэкономит время другим людям.

## Благодарности

  * [Microsoft Azure](https://azure.microsoft.com)
  * [GitHub Actions](https://github.com/features/actions)
  * [OpenWrt](https://github.com/openwrt/openwrt)
  * [coolsnowwolf/lede](https://github.com/coolsnowwolf/lede)
  * [Mikubill/transfer](https://github.com/Mikubill/transfer)
  * [softprops/action-gh-release](https://github.com/softprops/action-gh-release)
  * [Mattraks/delete-workflow-runs](https://github.com/Mattraks/delete-workflow-runs)
  * [dev-drprasad/delete-older-releases](https://github.com/dev-drprasad/delete-older-releases)
  * [peter-evans/repository-dispatch](https://github.com/peter-evans/repository-dispatch)

## Лицензия

[MIT](https://github.com/P3TERX/Actions-OpenWrt/blob/main/LICENSE) © [**P3TERX**](https://p3terx.com)
