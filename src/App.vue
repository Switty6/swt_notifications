<template>
  <div class="q-pa-md">
  </div>
</template>
<script>
  export default {
      mounted() {
        window.addEventListener(
          'message',
          event => {
           const item = event.data 
            switch (item.response) {
              case 'show_default_notification':
                this.triggerMessage(item.data);
                break;
              case 'show_caption_notification':
                this.triggerCustomMessage(item.data);
                break;
              case 'show_success':
                this.triggerSuccessMessage(item.data);
                break;
              case 'show_warning':
                this.triggerWarningMessage(item.data);
                break;
              case 'show_negative':
                this.triggerNegativeMessage(item.data);
                break;
              case 'show_info':
                this.triggerInfoMessage(item.data);
                break;
              case 'show_icon_caption_notification':
                this.triggerIconTitleMessage(item.data);
                break;
              case 'show_icon_icon_notification':
                this.triggerIconMessage(item.data);
                break;
            }
          })
      },
      methods: {
      triggerMessage(data) {
        this.$q.notify({
          position: data.position,
          message: data.message,
          color: data.color,
          textColor: data.textColor,
          timeout: data.timeout,
          progress: data.progress
        })
      },
      triggerCustomMessage(data) {
        this.$q.notify({
          caption: data.caption,
          message: data.message,
          position: data.position,
          timeout: data.timeout,
          progress: data.progress,
          textColor: data.textColor,
          color: data.color
        })
      },
      triggerIconTitleMessage(data) {
        this.$q.notify({
          caption: data.caption,
          message: data.message,
          position: data.position,
          timeout: data.timeout,
          progress: data.progress,
          color: data.color,
          textColor: data.textColor,
          icon: data.icon
          
        })
      },
      triggerIconMessage(data) {
        this.$q.notify({
          message: data.message,
          position: data.position,
          timeout: data.timeout,
          progress: data.progress,
          color: data.color,
          textColor: data.textColor,
          icon: data.icon
        })
      },
      triggerSuccessMessage(data) {
        this.$q.notify({
          caption: data.caption,
          message: data.message,
          type: "positive",
          position: data.position,
          timeout: data.timeout,
          progress: data.progress,
          textColor: 'white',
          icon: 'mdi-check-circle'
        })
      },
      triggerNegativeMessage(data) {
        this.$q.notify({
          caption: data.caption,
          message: data.message,
          type: "negative",
          position: data.position,
          timeout: data.timeout,
          progress: data.progress,
          textColor: 'white',
          icon: 'mdi-alert'
        })
      },
      triggerInfoMessage(data) {
        this.$q.notify({
          caption: data.caption,
          message: data.message,
          type: "info",
          position: data.position,
          timeout: data.timeout,
          progress: data.progress,
          textColor: 'white',
          icon: 'mdi-information-outline'
        })
      },
      triggerWarningMessage(data) {
        this.$q.notify({
          caption: data.caption,
          message: data.message,
          type: "warning",
          position: data.position,
          timeout: data.timeout,
          progress: data.progress,
          textColor: 'white',
          icon: 'mdi-alert-box'
        })
      },
    }
  }
</script>