# Universal installer for package managers

## Usage
Example to install package "ruvents/yii" via php packet manager composer
```bash
require php ruvents/yii
```
Example to install package "react-native-android-version" via yarn
```bash
require js react-native-android-version
```
## Configuration
Config file is config.cfg which have ini notation.
Ini section is language. 
Params: 
* manager - packet manager to execute. Can be relative/full path or bin name if it in PATH variable
* command - packet manager command
* arguments - additional arguments to pass

Example to add composer remove command:
```ini
[phprm]
manager=composer
command=remove
```
Usage:
```bash
require phprm ruvents/yii
```

## FAQ
* Why ada? Just for fun &copy;
