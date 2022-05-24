@Entry
@Component
@Preview
struct Filter{
  @State price:number=1500;
  scroller:Scroller=new Scroller();
  categories:SelectOption[]=[{value:"Select"},{value:"Sneakers"},{value:"Boots"},{value:"Sandals"},{value:"Slippers"}];
  brands:SelectOption[]=[{value:"Select"},{value:"Adidas"},{value:"Nike"},{value:"Puma"},{value:"Reebok"}];
  build(){
    Column(){
      Flex({ justifyContent: FlexAlign.SpaceBetween }) {
        Image($r("app.media.back")).height(40).width(40)
        Text("Filter").fontSize(24).fontWeight(FontWeight.Bold).padding({top:7.5}).fontFamily('calibri')
        Image($r("app.media.menu")).height(40).width(40)
      }.height(80)

      Text('Gender').fontSize(22).fontWeight(FontWeight.Bold).width('90%').fontFamily('calibri').padding({bottom: 10})
      Row({space: 10}) {
        Button('Male', { type: ButtonType.Normal }).borderRadius(10).backgroundColor(0x317aff).width(90)
        Button('Female', { type: ButtonType.Normal }).borderRadius(10).backgroundColor($r("app.color.bg2")).width(90).fontColor(0x000000)
        Button('Both', { type: ButtonType.Normal }).borderRadius(10).backgroundColor($r("app.color.bg2")).width(90).fontColor(0x000000)
      }.padding({bottom:20})

      Text('Category').fontSize(22).fontWeight(FontWeight.Bold).width('90%').fontFamily('calibri').padding({bottom: 10})
      Select(this.categories).width(300).height(50).backgroundColor($r("app.color.bg1")).borderRadius(20).selected(0)
      Text('Brand').fontSize(22).fontWeight(FontWeight.Bold).width('90%').fontFamily('calibri').padding({top:20,bottom: 10})
      Select(this.brands).width(300).height(50).backgroundColor($r("app.color.bg1")).borderRadius(20).selected(0)
      Text('Price').fontSize(22).fontWeight(FontWeight.Bold).width('90%').fontFamily('calibri').padding({top:20,bottom: 10})
      Text("Rs " + this.price.toString()).fontSize(18).fontWeight(FontWeight.Bold)

      Slider({value: this.price,min: 0,max: 10000,step: 100,style: SliderStyle.InSet})
          .blockColor(Color.Blue)
          .trackColor(Color.Gray)
          .selectedColor(Color.Blue)
          .showSteps(true).showTips(true)
          .onChange((value: number) => {
            this.price = value
          })

      Text('Size').fontSize(22).width('90%').padding({bottom: 15}).fontFamily('calibri').fontWeight(FontWeight.Bold).padding({top:20,bottom:10})
      Scroll(this.scroller) {
        Row({space: 10}) {
          Button('7 inches', { type: ButtonType.Normal }).borderRadius(10).backgroundColor(0x317aff).width(100)
          Button('8 inches', { type: ButtonType.Normal }).borderRadius(10).backgroundColor($r("app.color.bg2")).width(100).fontColor(0x000000)
          Button('9 inches', { type: ButtonType.Normal }).borderRadius(10).backgroundColor($r("app.color.bg2")).width(100).fontColor(0x000000)
          Button('10 inches', { type: ButtonType.Normal }).borderRadius(10).backgroundColor($r("app.color.bg2")).width(100).fontColor(0x000000)
        }
      }
      .scrollable(ScrollDirection.Horizontal)
      .scrollBar(BarState.On)
      .margin({bottom: 5});

      Row({space: 20}){
        Button('Clear all', { type: ButtonType.Normal }).borderRadius(15).backgroundColor($r("app.color.bg1")).width(150).fontColor(0x000000).height(55)
        Button('Add', { type: ButtonType.Normal }).borderRadius(15).backgroundColor(0x317aff).width(150).height(55)
      }.padding({top: 40})
    }.padding(20)


  }
}