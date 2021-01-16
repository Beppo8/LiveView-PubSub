import Pickr from '@simonwep/pickr'

export var colorpickers = {

    pageBackground: function() {
        return this.getPicker(".page-background-color-picker")
    },

    getPicker: function(el) {
        let pickr = Pickr.create({
          el: el,
          theme: 'nano',
          useAsButton: true,
          swatches: [
            '#FFD950',
            '#ed8936',
            '#4299e1'
          ],
          defaultRepresentation: 'HEX',
          components: {
            preview: true,
            hue: true,
            interaction: {
              input: true
            }
          }
      })
    
      return pickr
      }

}

export default colorpickers