import { BackdropModel } from '@ohos/material-backdrop/src/backdropModel'

@Component
export struct BackPage {
  @State private obj: BackdropModel = undefined
  private buttonText: string = "Reveal back"
  private frontHeight: string = ""
  private flag: boolean = true

  build() {
    Column() {
      Row() {
        Flex({ alignContent: FlexAlign.SpaceBetween }) {
          Button(this.buttonText)
            .type(ButtonType.Normal)
            .backgroundColor(Color.White)
            .fontColor("#6200EE")
            .borderRadius('10vp')
            .margin({ right: '10vp' })
            .onClick(() => {

              if (this.flag == false) {
                this.buttonText = "Reveal back"
                this.obj.setPosition({ x: 0, y: 30 })
                console.log("Reveal back")
              }
              else {
                this.buttonText = "Conceal back"
                this.obj.setPosition({ x: 0, y: 360 })
                console.log("Conceal back")
              }
              this.flag = !this.flag
            })

          Text('BackLayer').fontColor(Color.White).fontSize(30).textAlign(TextAlign.Center)
        }.padding('10vp')
      }
    }
    .width('100%')
    .height('100%')
    .backgroundColor("#6200EE")
  }
}