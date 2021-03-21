# swt_notifications


Notification system using quasar and material design icons, made by Switty. 

![Screenshots are here](https://imgur.com/mNUe3h1.jpg) 

## Installation
Drag and drop the `swt_notifications` file into the resources folder.
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
TriggerEvent("swt_notifications:default",message,position,color,textColor,timeout,progress)

--or

exports['swt_notifications']:Default(message,position,color,textColor,timeout,progress)
```
**With Caption**
--
```lua
TriggerEvent("swt_notifications:caption",caption,message,position,timeout,color,textColor,progress)

--or

exports['swt_notifications']:Caption(caption,message,position,timeout,color,textColor,progress)
```

**Infomative notification** 
--
![Info](https://i.imgur.com/VFAiZY8.png)
```lua
TriggerEvent("swt_notifications:Info",caption,message,position,timeout,progress)

--or

exports['swt_notifications']:Info(caption,message,position,timeout,progress)
```

**Success**
--
![Sucess](https://i.imgur.com/dfvJccv.png)
```lua
TriggerEvent("swt_notifications:Success",caption,message,position,timeout,progress)

--or

exports['swt_notifications']:Success(caption,message,position,timeout,progress)
```

**Warning**
--
![Warning](https://i.imgur.com/Q2ZzuUq.png)
```lua
TriggerEvent("swt_notifications:Warning",caption,message,position,timeout,progress)

--or

exports['swt_notifications']:Warning(caption,message,position,timeout,progress)
```
**Negative**
--
![Negative](https://i.imgur.com/2pHVjRw.png)
```lua
TriggerEvent("swt_notifications:Negative",caption,message,position,timeout,progress)

--or

exports['swt_notifications']:Negative(caption,message,position,timeout,progress)
```

**With Icon**
--
![Icon](https://i.imgur.com/tAWGykT.png)
```lua
TriggerEvent("swt_notifications:Icon",message,position,timeout,color,textColor,progress,icon)

--or

exports['swt_notifications']:Icon(message,position,timeout,color,textColor,progress,icon)
```

**With Icon and Caption**
--
![CaptionIcon](https://i.imgur.com/1M3Y41V.png)
```lua
TriggerEvent("swt_notifications:captionIcon",caption,message,position,timeout,color,textColor,progress,icon)

--or

exports['swt_notifications']:CaptionIcon(caption,message,position,timeout,color,textColor,progress,icon)
```
___
### Example to use

```lua
TriggerEvent("swt_notifications:Icon","Hey, this is an example","top",2500,"blue-10","white",true,"mdi-earth")

--or

exports['swt_notifications']:Icon("Hey, this is an example","top",2500,"blue-10","white",true,"mdi-earth")
```
___
## Credits
Big thanks to Big D  [Shinigami](https://github.com/ioShinigami) 

## Contributing
Pull requests are welcome. 

## License
[MIT](https://choosealicense.com/licenses/mit/)

## My tebex 
https://switty.tebex.io/category/1779708
