RegisterNetEvent("swt_notifications:default")
AddEventHandler("swt_notifications:default", function(message,position,color,textColor,timeout,progress)
    SendNUIMessage({
        response = "show_default_notification",
        data = {
            message = message,
            position = position,
            color = color,
            textColor = textColor,
            timeout = timeout,
            progress = progress,
        }
    })
end)

RegisterNetEvent("swt_notifications:caption")
AddEventHandler("swt_notifications:caption", function(caption,message,position,timeout,color,textColor,progress)
    SendNUIMessage({
        response = "show_caption_notification",
        data = {
            caption = caption,
            message = message,
            position = position,
            color = color,
            textColor = textColor,
            timeout = timeout,
            progress = progress,
        }
    })
end)

RegisterNetEvent("swt_notifications:Warning")
AddEventHandler("swt_notifications:Warning", function(caption,message,position,timeout,progress)
    SendNUIMessage({
        response = "show_warning",
        data = {
            caption = caption,
            message = message,
            position = position,
            timeout = timeout,
            progress = progress,
        }
    })
end)

RegisterNetEvent("swt_notifications:Success")
AddEventHandler("swt_notifications:Success", function(caption,message,position,timeout,progress)
    SendNUIMessage({
        response = "show_success",
        data = {
        caption = caption,
        message = message,
        position = position,
        timeout = timeout,
        progress = progress,
    }
    })
end)

RegisterNetEvent("swt_notifications:Info")
AddEventHandler("swt_notifications:Info", function(caption,message,position,timeout,progress)
    print(caption)
    SendNUIMessage({
        response = "show_info",
        data = {
            caption = caption,
            message = message,
            position = position,
            timeout = timeout,
            progress = progress,
        }
    })
end)

RegisterNetEvent("swt_notifications:Negative")
AddEventHandler("swt_notifications:Negative", function(caption,message,position,timeout,progress)
    SendNUIMessage({
        response = "show_negative",
        data = {
            caption = caption,
            message = message,
            position = position,
            timeout = timeout,
            progress = progress,
        }
    })
end)

RegisterNetEvent("swt_notifications:captionIcon")
AddEventHandler("swt_notifications:captionIcon", function(caption,message,position,timeout,color,textColor,progress,icon)
    SendNUIMessage({
        response = "show_icon_caption_notification",
        data = {
            caption=caption,
            message = message,
            position = position,
            color = color,
            textColor = textColor,
            timeout = timeout,
            progress = progress,
            icon = icon
        }
    })
end)

RegisterNetEvent("swt_notifications:Icon")
AddEventHandler("swt_notifications:Icon", function(message,position,timeout,color,textColor,progress,icon)
    SendNUIMessage({
        response = "show_icon_icon_notification",
        data = {
            message = message,
            position = position,
            color = color,
            textColor = textColor,
            timeout = timeout,
            progress = progress,
            icon = icon
        }
    })
end)

