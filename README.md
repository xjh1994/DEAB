# DEB
DevelopmentEnvironmentBuild

开发环境自动搭建

> 人生苦短，不要把时间浪费在搭环境上！

## Android

### AndroidStudio

#### Usage:

```
git clone https://github.com/xjh1994/DEAB.git

cd DEAB

sudo chmod +x ./android.sh

./android.sh

// 等待控制台下载文件

// 依次安装JDK、JRE、AndroidStudio、Genymotion

// 解压sdk.zip、gradle.zip

// 打开AndroidStudio，配置SDK路径和Gradle路径

// Done!
```

### CommandLine

#### Usage：
[sdkmanager](https://developer.android.google.cn/studio/command-line/sdkmanager.html)

You can use the sdkmanager to perform the following tasks.

##### List installed and available packages
`sdkmanager --list [options]`

##### Install packages
`sdkmanager packages [options]`

The packages argument is an SDK-style path as shown with the --list command, wrapped in quotes (for example, "**build-tools;25.0.2**" or "**platforms;android-25**"). You can pass multiple package paths, separated with a space, but they must each be wrapped in their own set of quotes.

For example, to get **adb** and **fastboot**, install the latest platform tools:

`sdkmanager "platforms;android-25"`

Alternatively, you can pass a text file that specifies all packages:

`sdkmanager --package_file=package_file [options]`

The **package_file** argument is the location of a text file in which each line is an SDK-style path of a package to install (without quotes).

To uninstall, simply add the **--uninstall** flag:

```
sdkmanager --uninstall packages [options]
sdkmanager --uninstall --package_file=package_file [options]
```

##### Update all installed packages
`sdkmanager --update [options]`

##### Options

The following table lists the available options for the above commands.

![Options](images/Options.jpeg)