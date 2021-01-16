import { colorpickers } from "../colorpickers"

const BackgroundColorPicker = {

    mounted() {
        this.initColorPicker()
    },

    initColorPicker() {
        let pageBackgroundPicker = colorpickers.pageBackground()

        pageBackgroundPicker.on("change", (newColor, instance) => {
            let color = newColor.toHEXA().toString()
            let container = document.getElementsByClassName("container")[0]

            this.pushEvent("background_color", {color: color})
        })
    }
}

export default BackgroundColorPicker