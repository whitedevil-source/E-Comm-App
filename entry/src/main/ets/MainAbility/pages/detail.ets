@Entry
@Component
@Preview
struct Detail{
  scroller:Scroller = new Scroller();
  @State value:number=1;
  rating:number=4.5;
  build(){
    Column() {
      Flex({ justifyContent: FlexAlign.SpaceBetween }) {
        Image($r("app.media.back")).height(40).width(40)
        Text("Details").fontSize(24).fontWeight(FontWeight.Bold).padding({top:7.5}).fontFamily('calibri')
        Image($r("app.media.menu")).height(40).width(40)
      }.height(80)

      Stack({alignContent: Alignment.BottomEnd}) {
        Image($r("app.media.sh5")).width(320).height(200).borderRadius(15)
        Column() {
          Rating({ rating: this.rating }).stars(5).width(80).height(16)
          Text('250 Reviews').padding({ bottom: 5 }).fontSize(12)
        }.backgroundColor("#A850A6F1").borderRadius(10).padding(10)
      }.padding({bottom: 10})

      Text("Running Unisex Shoes").fontSize(24).width('90%').fontWeight(FontWeight.Bold).padding({bottom: 10}).fontFamily('calibri')
      Text('₹ 1499').fontSize(16).width('80%').padding({bottom: 10})

      Column(){
        Text('~ Durable rubber outsole').fontSize(16).opacity(0.6).width('100%')
        Text('~ Closure: Lace-Up').fontSize(16).opacity(0.6).width('100%')
        Text('~ Shoe Width: Medium').fontSize(16).opacity(0.6).width('100%')
        Text('Read more...').fontSize(16).opacity(0.6).width('100%').textAlign(TextAlign.End)

      }.backgroundColor($r("app.color.bg1")).borderRadius(10).width('100%').padding(10)

      Flex({justifyContent: FlexAlign.SpaceBetween, alignItems: ItemAlign.Center}) {
        Text('Color').fontSize(20).fontFamily('calibri').fontWeight(FontWeight.Bold)
        Column() {
          Radio({group: "Color", value: "red"}).backgroundColor("#E6FF0000").borderRadius(50).width(10).height(10)
        }
        Column() {
          Radio({group: "Color", value: "orange"}).backgroundColor("#E6FFA200").borderRadius(50).width(10).height(10)
        }
        Column() {
          Radio({group: "Color", value: "blue"}).backgroundColor("#E600C4FF").borderRadius(50).width(10).height(10)
        }
        Counter() {
          Text(this.value.toString()).fontSize(14).fontWeight(FontWeight.Bold)
        }.onInc(() => this.value++)
        .onDec(() => {
          if (this.value != 0) {
            this.value--
          }
        })

      }.padding({top: 30, bottom: 30, left: 10, right: 10})
      Text('Available Sizes').fontSize(20).width('95%').padding({bottom: 15}).fontFamily('calibri').fontWeight(FontWeight.Bold)

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

      Row(){
        Image($r("app.media.wish")).width(100).height(40).objectFit(ImageFit.ScaleDown).padding({right:30})
        Flex({alignItems: ItemAlign.Center}){
          Text('Add to Cart').fontColor($r("app.color.bg1")).fontSize(20).padding({left: 20, right : 20})
          Image($r("app.media.cart")).width(30).height(30)
        }.backgroundColor(0x317aff).height(60).borderRadius(15).width(200)
      }.padding({top:25})
    }.padding(20)
  }
}