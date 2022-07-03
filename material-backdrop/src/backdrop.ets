import router from '@system.router'
import { BackPage } from 'pages/backPage'
import { FrontPage } from 'pages/frontPage'
import { BackdropModel } from './backdropModel'

export enum BackDropState {
  Off,
  On
}
//export enum BackdropModel{
//  Type1,
//  Type2
//}
@Component
export struct Backdrop {
  @State frontHeight: string = ""
  @State flag: boolean = false
  @State private obj: BackdropModel = undefined
  private buttonText: string = "Reveal back"

  build() {
    Stack() {
      Column() {
        BackPage({
          obj: this.obj
        })
      }.width('100%').height('100%')

      Flex({ alignItems: ItemAlign.Baseline }) {
        FrontPage({
          flag: this.flag,
          obj: this.obj
        })
      }
      .width('100%')
      .height(this.frontHeight)
      .position(this.obj.getPosition())
    }
  }
}

export { BackdropModel } from './backdropModel'