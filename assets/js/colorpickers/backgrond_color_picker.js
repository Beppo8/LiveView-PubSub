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

            container.style["background"] = color
        })
    }
}

export default BackgroundColorPicker