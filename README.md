# swt_notifications

FiveM notification system using [Quasar](https://quasar.dev/) framework and [Material Design Icons](https://materialdesignicons.com/).

![Screenshots are here](https://imgur.com/mNUe3h1.jpg) 

## Installation

- Download the last [release](https://github.com/Switty6/swt_notifications/releases/tag/1.0.0)
- Unzip the folder
- Drag and drop the `swt_notifications` into your resources folder
- Don´t forget to add `ensure swt_notifications` in your `server.cfg`

___
## Edit
To edit the file you have to:

>npm install

*Compiles and hot-reloads for development*

>npm run serve

*Compiles and minifies for production*

>npm run build

*Lints and fixes files*
___
## Documentation
**caption** = string, represents the caption/small title under message

**message** = string, message you want to show up

**position** = string, can take the following values: `top` `top-left` `top-right` `center` `left` `right` `bottom` `bottom-left` `bottom-right`

**color** = string, list of colors found -> [here](https://quasar.dev/style/color-palette)

**textColor** = string | represents the color of the text, list of colors found -> [here](https://quasar.dev/style/color-palette)

**timeout** = int, 1000 represents 1 second

**progress** = true/false, specify if it shows the time remaining bar

**icon** = string, list of icons found -> [here](https://materialdesignicons.com/)
___
**Default**
--

```lua
--Client
TriggerEvent("swt_notifications:default",message,position,color,textColor,timeout,progress)
--or
exports['swt_notifications']:Default(message,position,color,textColor,timeout,progress)

--Server
TriggerClientEvent("swt_notifications:default",source,message,position,color,textColor,timeout,progress)
```
**With Caption**
--
```lua
--Client
TriggerEvent("swt_notifications:caption",caption,message,position,timeout,color,textColor,progress)
--or
exports['swt_notifications']:Caption(caption,message,position,timeout,color,textColor,progress)

--Server
TriggerClientEvent("swt_notifications:caption",source,caption,message,position,timeout,color,textColor,progress)
```

**Infomative notification** 
--
![Info](https://i.imgur.com/VFAiZY8.png)
```lua
--Client
TriggerEvent("swt_notifications:Info",caption,message,position,timeout,progress)
--or
exports['swt_notifications']:Info(caption,message,position,timeout,progress)

--Server
TriggerClientEvent("swt_notifications:Info",source,caption,message,position,timeout,progress)
```

**Success**
--
![Sucess](https://i.imgur.com/dfvJccv.png)
```lua
--Client
TriggerEvent("swt_notifications:Success",caption,message,position,timeout,progress)
--or
exports['swt_notifications']:Success(caption,message,position,timeout,progress)

--Server
TriggerClientEvent("swt_notifications:Success",source,caption,message,position,timeout,progress)
```

**Warning**
--
![Warning](https://i.imgur.com/Q2ZzuUq.png)
```lua
--Client
TriggerEvent("swt_notifications:Warning",caption,message,position,timeout,progress)
--or
exports['swt_notifications']:Warning(caption,message,position,timeout,progress)

--Server
TriggerClientEvent("swt_notifications:Warning",source,caption,message,position,timeout,progress)
```
**Negative**
--
![Negative](https://i.imgur.com/2pHVjRw.png)
```lua
--Client
TriggerEvent("swt_notifications:Negative",caption,message,position,timeout,progress)
--or
exports['swt_notifications']:Negative(caption,message,position,timeout,progress)

--Server
TriggerClientEvent("swt_notifications:Negative",caption,message,position,timeout,progress)
```

**With Icon**
--
![Icon](https://i.imgur.com/tAWGykT.png)
```lua
--Client
TriggerEvent("swt_notifications:Icon",message,position,timeout,color,textColor,progress,icon)
--or
exports['swt_notifications']:Icon(message,position,timeout,color,textColor,progress,icon)

--Server
TriggerClientEvent("swt_notifications:Icon",source,message,position,timeout,color,textColor,progress,icon)
```

**With Icon and Caption**
--
![CaptionIcon](https://i.imgur.com/1M3Y41V.png)
```lua
--Client
TriggerEvent("swt_notifications:captionIcon",caption,message,position,timeout,color,textColor,progress,icon)
--or
exports['swt_notifications']:CaptionIcon(caption,message,position,timeout,color,textColor,progress,icon)

--Server
TriggerClientEvent("swt_notifications:captionIcon",caption,message,position,timeout,color,textColor,progress,icon)
```
___
### Example to use

```lua
TriggerEvent("swt_notifications:Icon","Hey, this is an example","top",2500,"blue-10","white",true,"mdi-earth")
--or
exports['swt_notifications']:Icon("Hey, this is an example","top",2500,"blue-10","white",true,"mdi-earth")
--Server
TriggerClientEvent("swt_notifications:Icon",source,"Hey, this is an example","top",2500,"blue-10","white",true,"mdi-earth")
```
___
## Credits
Big thanks to Big D  [Shinigami](https://github.com/ioShinigami) 

Thanks [Hugo](https://github.com/HugoDs21) for updated docs and exports!

## Contributing
Pull requests are welcome. 

## License
[MIT](https://choosealicense.com/licenses/mit/)

## My tebex 
https://switty.tebex.io/category/1779708
