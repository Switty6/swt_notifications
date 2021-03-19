# swt_notifications


Notification system using quasar and material design icons, made by Switty. 

![Screenshots are here](https://imgur.com/mNUe3h1.jpg) 

![Screenshot3](https://imgur.com/P0YEP0D.png)

![Screenshot 2](https://imgur.com/VzCCmD5.png) 



## Installation
Drag and drop the `swt_notifications` file into the resources folder.

To edit the file you have to:

>npm install

*Compiles and hot-reloads for development*

>npm run serve

*Compiles and minifies for production*

>npm run build

*Lints and fixes files*



## Documentation
Events are triggered client sided.

`caption` = string, represents the caption/small title under message

`message` = string, message you want to show up

`position` = string, can take the following values: `top` `top-left` `top-right` `center` `left` `right` `bottom` `bottom-left` `bottom-right`

`color` = string, list of colors found -> [here](https://quasar.dev/style/color-palette)

`textColor` = string | represents the color of the text, list of colors found -> [here](https://quasar.dev/style/color-palette)

`timeout` = int, 1000 represents 1 second

`progress` = true/false, specify if it shows the time remaining bar

`icon` = string, list of icons found -> [here](https://materialdesignicons.com/)

**Default**

```lua
TriggerEvent("swt_notifications:default",message,position,color,textColor,timeout,progress)
```
**With Caption**

```lua
TriggerEvent("swt_notifications:caption",caption,message,position,timeout,color,textColor,progress)
```
**Infomative notification**
```lua
TriggerEvent("swt_notifications:Info",caption,message,position,timeout,progress)
```

**Success**

```lua
TriggerEvent("swt_notifications:Success",caption,message,position,timeout,progress)
```

**Warning**
```lua
TriggerEvent("swt_notifications:Warning",caption,message,position,timeout,progress)
```
**Negative**
```lua
TriggerEvent("swt_notifications:Negative",caption,message,position,timeout,progress)
```

**With Icon**
```lua
TriggerEvent("swt_notifications:Icon",message,position,timeout,color,textColor,progress,icon)
```

**With Icon and Caption**
```lua
TriggerEvent("swt_notifications:captionIcon",caption,message,position,timeout,color,textColor,progress,icon)
```

### Example to use

```lua
TriggerEvent("swt_notifications:Icon","Hey, this is an example","top","blue-10","white",2500,true,"mdi-earth")
```

# Credits
Big thanks to Big D  [Shinigami](https://github.com/ioShinigami) 

## Contributing
Pull requests are welcome. 

## License
[MIT](https://choosealicense.com/licenses/mit/)
