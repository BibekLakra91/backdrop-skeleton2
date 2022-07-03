import { BackdropModel } from '@ohos/material-backdrop'

@Component
export struct FrontPage {
  //  @State private frontHeight: string = "80%"
  @State private obj: BackdropModel = undefined
  scroller: Scroller = new Scroller()
  private flag: boolean = false

  build() {
    Flex({ direction: FlexDirection.Column, alignContent: FlexAlign.End }) {
      Text('SubHeader')
        .width('100%')
        .height('5%')
        .fontSize(30)
      Row() {
        Divider()
          .color("#D0D0D0")
          .strokeWidth('1vp')
          .lineCap(LineCapStyle.Round)
      }.height('1%')

      Scroll(this.scroller) {
        Column() {
          Text('Component1')
            .width('100%')
            .height('20%')
            .fontSize(30)
            .textAlign(TextAlign.Center)
            .backgroundColor('#D0D0D0')
          Text('Component2')
            .width('100%')
            .height('20%')
            .fontSize(30)
            .textAlign(TextAlign.Center)
            .backgroundColor('#D0D0D0')
          Text('Component3')
            .width('100%')
            .height('20%')
            .fontSize(30)
            .textAlign(TextAlign.Center)
            .backgroundColor('#D0D0D0')
          Text('Component4')
            .width('100%')
            .height('20%')
            .fontSize(30)
            .textAlign(TextAlign.Center)
            .backgroundColor('#D0D0D0')
          Text('Component5')
            .width('100%')
            .height('20%')
            .fontSize(30)
            .textAlign(TextAlign.Center)
            .backgroundColor('#D0D0D0')
          Text('Component6')
            .width('100%')
            .height('20%')
            .fontSize(30)
            .textAlign(TextAlign.Center)
            .backgroundColor('#D0D0D0')
        }.width('100%').height('100%')
      }.scrollable(ScrollDirection.Vertical).scrollBar(BarState.On)
    }
    .width('100%')
    .border({ width: '2vp' })
    .padding('5vp')
    .height('100%')
    .backgroundColor(Color.White)
    .position(this.obj.getPosition())
  }
}