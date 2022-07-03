
export class BackdropModel {
  private position : Position = {x:0,y:0}
//  constructor(){
////    this.position = value
//  }
  setPosition(value : Position){
    this.position = value
//    return this
  }
  getPosition() : Position{
    return this.position
  }
}