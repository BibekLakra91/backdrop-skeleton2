import { Backdrop,BackdropModel }  from '@ohos/material-backdrop'

@Entry
@Component
struct Index {
  private backdrop1: BackdropModel = new BackdropModel()
  aboutToAppear(){
    this.backdrop1.setPosition({x:0,y:30})
  }
  build() {
    Column() {
      Backdrop({
        frontHeight: '100%',
        obj : this.backdrop1
      })
    }
  }
}
